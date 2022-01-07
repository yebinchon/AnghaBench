; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_merge.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i64, %struct.item*, %struct.item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.item* (%struct.item*, %struct.item*)* @tree_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.item* @tree_merge(%struct.item* %0, %struct.item* %1) #0 {
  %3 = alloca %struct.item*, align 8
  %4 = alloca %struct.item*, align 8
  %5 = alloca %struct.item*, align 8
  store %struct.item* %0, %struct.item** %4, align 8
  store %struct.item* %1, %struct.item** %5, align 8
  %6 = load %struct.item*, %struct.item** %4, align 8
  %7 = icmp ne %struct.item* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct.item*, %struct.item** %5, align 8
  store %struct.item* %9, %struct.item** %3, align 8
  br label %45

10:                                               ; preds = %2
  %11 = load %struct.item*, %struct.item** %5, align 8
  %12 = icmp ne %struct.item* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load %struct.item*, %struct.item** %4, align 8
  store %struct.item* %14, %struct.item** %3, align 8
  br label %45

15:                                               ; preds = %10
  %16 = load %struct.item*, %struct.item** %4, align 8
  %17 = getelementptr inbounds %struct.item, %struct.item* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.item*, %struct.item** %5, align 8
  %20 = getelementptr inbounds %struct.item, %struct.item* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load %struct.item*, %struct.item** %4, align 8
  %25 = getelementptr inbounds %struct.item, %struct.item* %24, i32 0, i32 2
  %26 = load %struct.item*, %struct.item** %25, align 8
  %27 = load %struct.item*, %struct.item** %5, align 8
  %28 = call %struct.item* @tree_merge(%struct.item* %26, %struct.item* %27)
  %29 = load %struct.item*, %struct.item** %4, align 8
  %30 = getelementptr inbounds %struct.item, %struct.item* %29, i32 0, i32 2
  store %struct.item* %28, %struct.item** %30, align 8
  %31 = load %struct.item*, %struct.item** %4, align 8
  %32 = call i32 @update_counters(%struct.item* %31)
  %33 = load %struct.item*, %struct.item** %4, align 8
  store %struct.item* %33, %struct.item** %3, align 8
  br label %45

34:                                               ; preds = %15
  %35 = load %struct.item*, %struct.item** %4, align 8
  %36 = load %struct.item*, %struct.item** %5, align 8
  %37 = getelementptr inbounds %struct.item, %struct.item* %36, i32 0, i32 1
  %38 = load %struct.item*, %struct.item** %37, align 8
  %39 = call %struct.item* @tree_merge(%struct.item* %35, %struct.item* %38)
  %40 = load %struct.item*, %struct.item** %5, align 8
  %41 = getelementptr inbounds %struct.item, %struct.item* %40, i32 0, i32 1
  store %struct.item* %39, %struct.item** %41, align 8
  %42 = load %struct.item*, %struct.item** %5, align 8
  %43 = call i32 @update_counters(%struct.item* %42)
  %44 = load %struct.item*, %struct.item** %5, align 8
  store %struct.item* %44, %struct.item** %3, align 8
  br label %45

45:                                               ; preds = %34, %23, %13, %8
  %46 = load %struct.item*, %struct.item** %3, align 8
  ret %struct.item* %46
}

declare dso_local i32 @update_counters(%struct.item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
