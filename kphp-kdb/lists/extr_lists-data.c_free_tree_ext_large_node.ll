; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_free_tree_ext_large_node.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_free_tree_ext_large_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_payload = type { i64 }

@TF_ZERO = common dso_local global i32 0, align 4
@TF_PLUS = common dso_local global i32 0, align 4
@empty_string = common dso_local global i64 0, align 8
@MDataEnd = common dso_local global i64 0, align 8
@alloc_large_nodes = common dso_local global i32 0, align 4
@tree_ext_large_node_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @free_tree_ext_large_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tree_ext_large_node(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_payload*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @NODE_TYPE(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.tree_payload* @PAYLOAD(i32* %7)
  store %struct.tree_payload* %8, %struct.tree_payload** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @TF_ZERO, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @TF_PLUS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %12, %1
  %17 = load %struct.tree_payload*, %struct.tree_payload** %4, align 8
  %18 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load %struct.tree_payload*, %struct.tree_payload** %4, align 8
  %23 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @empty_string, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.tree_payload*, %struct.tree_payload** %4, align 8
  %29 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MDataEnd, align 8
  %32 = icmp sge i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.tree_payload*, %struct.tree_payload** %4, align 8
  %36 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.tree_payload*, %struct.tree_payload** %4, align 8
  %40 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @get_text_data_len(i32* %42)
  %44 = call i32 @zfree(i32* %38, i32 %43)
  br label %45

45:                                               ; preds = %27, %21, %16
  %46 = load %struct.tree_payload*, %struct.tree_payload** %4, align 8
  %47 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %56

48:                                               ; preds = %12
  %49 = load %struct.tree_payload*, %struct.tree_payload** %4, align 8
  %50 = getelementptr inbounds %struct.tree_payload, %struct.tree_payload* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  br label %56

56:                                               ; preds = %48, %45
  %57 = load i32, i32* @alloc_large_nodes, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* @alloc_large_nodes, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @tree_ext_large_node_size, align 4
  %61 = call i32 @zfree(i32* %59, i32 %60)
  ret void
}

declare dso_local i32 @NODE_TYPE(i32*) #1

declare dso_local %struct.tree_payload* @PAYLOAD(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zfree(i32*, i32) #1

declare dso_local i32 @get_text_data_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
