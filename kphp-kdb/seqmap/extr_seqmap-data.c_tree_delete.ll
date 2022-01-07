; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { %struct.item*, %struct.item*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.item* (%struct.item*, i32, i32*)* @tree_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.item* @tree_delete(%struct.item* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.item*, align 8
  %5 = alloca %struct.item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.item*, align 8
  store %struct.item* %0, %struct.item** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.item*, %struct.item** %5, align 8
  %11 = call i32 @assert(%struct.item* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.item*, %struct.item** %5, align 8
  %15 = getelementptr inbounds %struct.item, %struct.item* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.item*, %struct.item** %5, align 8
  %18 = getelementptr inbounds %struct.item, %struct.item* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @key_cmp(i32 %12, i32* %13, i32 %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %3
  %23 = load %struct.item*, %struct.item** %5, align 8
  %24 = getelementptr inbounds %struct.item, %struct.item* %23, i32 0, i32 1
  %25 = load %struct.item*, %struct.item** %24, align 8
  %26 = load %struct.item*, %struct.item** %5, align 8
  %27 = getelementptr inbounds %struct.item, %struct.item* %26, i32 0, i32 0
  %28 = load %struct.item*, %struct.item** %27, align 8
  %29 = call %struct.item* @tree_merge(%struct.item* %25, %struct.item* %28)
  store %struct.item* %29, %struct.item** %9, align 8
  %30 = load %struct.item*, %struct.item** %9, align 8
  %31 = call i32 @update_counters(%struct.item* %30)
  %32 = load %struct.item*, %struct.item** %9, align 8
  store %struct.item* %32, %struct.item** %4, align 8
  br label %58

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.item*, %struct.item** %5, align 8
  %38 = getelementptr inbounds %struct.item, %struct.item* %37, i32 0, i32 1
  %39 = load %struct.item*, %struct.item** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call %struct.item* @tree_delete(%struct.item* %39, i32 %40, i32* %41)
  %43 = load %struct.item*, %struct.item** %5, align 8
  %44 = getelementptr inbounds %struct.item, %struct.item* %43, i32 0, i32 1
  store %struct.item* %42, %struct.item** %44, align 8
  br label %54

45:                                               ; preds = %33
  %46 = load %struct.item*, %struct.item** %5, align 8
  %47 = getelementptr inbounds %struct.item, %struct.item* %46, i32 0, i32 0
  %48 = load %struct.item*, %struct.item** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call %struct.item* @tree_delete(%struct.item* %48, i32 %49, i32* %50)
  %52 = load %struct.item*, %struct.item** %5, align 8
  %53 = getelementptr inbounds %struct.item, %struct.item* %52, i32 0, i32 0
  store %struct.item* %51, %struct.item** %53, align 8
  br label %54

54:                                               ; preds = %45, %36
  %55 = load %struct.item*, %struct.item** %5, align 8
  %56 = call i32 @update_counters(%struct.item* %55)
  %57 = load %struct.item*, %struct.item** %5, align 8
  store %struct.item* %57, %struct.item** %4, align 8
  br label %58

58:                                               ; preds = %54, %22
  %59 = load %struct.item*, %struct.item** %4, align 8
  ret %struct.item* %59
}

declare dso_local i32 @assert(%struct.item*) #1

declare dso_local i32 @key_cmp(i32, i32*, i32, i32) #1

declare dso_local %struct.item* @tree_merge(%struct.item*, %struct.item*) #1

declare dso_local i32 @update_counters(%struct.item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
