; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_treap.c_trp_init_mem.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_treap.c_trp_init_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, %struct.TYPE_3__* }

@free_nodes_cnt = common dso_local global i64 0, align 8
@trp_memory = common dso_local global i32 0, align 4
@free_nodes = common dso_local global %struct.TYPE_3__* null, align 8
@allocated_nodes_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trp_init_mem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @free_nodes_cnt, align 8
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i64 (...) @dl_get_memory_used()
  %13 = load i32, i32* @trp_memory, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @trp_memory, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call %struct.TYPE_3__* @dl_malloc(i32 %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** @free_nodes, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @free_nodes, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i64 (...) @dl_get_memory_used()
  %27 = load i32, i32* @trp_memory, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* @trp_memory, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @allocated_nodes_cnt, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* @allocated_nodes_cnt, align 4
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @free_nodes_cnt, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* @free_nodes_cnt, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %59, %1
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %2, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @free_nodes, align 8
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @free_nodes, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @free_nodes, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @free_nodes, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @free_nodes, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %74, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local %struct.TYPE_3__* @dl_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
