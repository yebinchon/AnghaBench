; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i64, i32, i32, %struct.item*, %struct.item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.item* (%struct.item*, %struct.item*)* @tree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.item* @tree_insert(%struct.item* %0, %struct.item* %1) #0 {
  %3 = alloca %struct.item*, align 8
  %4 = alloca %struct.item*, align 8
  %5 = alloca %struct.item*, align 8
  %6 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %4, align 8
  store %struct.item* %1, %struct.item** %5, align 8
  %7 = load %struct.item*, %struct.item** %4, align 8
  %8 = icmp ne %struct.item* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.item*, %struct.item** %5, align 8
  %11 = call i32 @update_counters(%struct.item* %10)
  %12 = load %struct.item*, %struct.item** %5, align 8
  store %struct.item* %12, %struct.item** %3, align 8
  br label %74

13:                                               ; preds = %2
  %14 = load %struct.item*, %struct.item** %5, align 8
  %15 = getelementptr inbounds %struct.item, %struct.item* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.item*, %struct.item** %5, align 8
  %18 = getelementptr inbounds %struct.item, %struct.item* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.item*, %struct.item** %4, align 8
  %21 = getelementptr inbounds %struct.item, %struct.item* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.item*, %struct.item** %4, align 8
  %24 = getelementptr inbounds %struct.item, %struct.item* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @key_cmp(i32 %16, i32 %19, i32 %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.item*, %struct.item** %4, align 8
  %29 = getelementptr inbounds %struct.item, %struct.item* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.item*, %struct.item** %5, align 8
  %32 = getelementptr inbounds %struct.item, %struct.item* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %13
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.item*, %struct.item** %4, align 8
  %40 = getelementptr inbounds %struct.item, %struct.item* %39, i32 0, i32 4
  %41 = load %struct.item*, %struct.item** %40, align 8
  %42 = load %struct.item*, %struct.item** %5, align 8
  %43 = call %struct.item* @tree_insert(%struct.item* %41, %struct.item* %42)
  %44 = load %struct.item*, %struct.item** %4, align 8
  %45 = getelementptr inbounds %struct.item, %struct.item* %44, i32 0, i32 4
  store %struct.item* %43, %struct.item** %45, align 8
  br label %54

46:                                               ; preds = %35
  %47 = load %struct.item*, %struct.item** %4, align 8
  %48 = getelementptr inbounds %struct.item, %struct.item* %47, i32 0, i32 3
  %49 = load %struct.item*, %struct.item** %48, align 8
  %50 = load %struct.item*, %struct.item** %5, align 8
  %51 = call %struct.item* @tree_insert(%struct.item* %49, %struct.item* %50)
  %52 = load %struct.item*, %struct.item** %4, align 8
  %53 = getelementptr inbounds %struct.item, %struct.item* %52, i32 0, i32 3
  store %struct.item* %51, %struct.item** %53, align 8
  br label %54

54:                                               ; preds = %46, %38
  %55 = load %struct.item*, %struct.item** %4, align 8
  %56 = call i32 @update_counters(%struct.item* %55)
  %57 = load %struct.item*, %struct.item** %4, align 8
  store %struct.item* %57, %struct.item** %3, align 8
  br label %74

58:                                               ; preds = %13
  %59 = load %struct.item*, %struct.item** %5, align 8
  %60 = getelementptr inbounds %struct.item, %struct.item* %59, i32 0, i32 4
  %61 = load %struct.item*, %struct.item** %5, align 8
  %62 = getelementptr inbounds %struct.item, %struct.item* %61, i32 0, i32 3
  %63 = load %struct.item*, %struct.item** %4, align 8
  %64 = load %struct.item*, %struct.item** %5, align 8
  %65 = getelementptr inbounds %struct.item, %struct.item* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.item*, %struct.item** %5, align 8
  %68 = getelementptr inbounds %struct.item, %struct.item* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @tree_split(%struct.item** %60, %struct.item** %62, %struct.item* %63, i32 %66, i32 %69)
  %71 = load %struct.item*, %struct.item** %5, align 8
  %72 = call i32 @update_counters(%struct.item* %71)
  %73 = load %struct.item*, %struct.item** %5, align 8
  store %struct.item* %73, %struct.item** %3, align 8
  br label %74

74:                                               ; preds = %58, %54, %9
  %75 = load %struct.item*, %struct.item** %3, align 8
  ret %struct.item* %75
}

declare dso_local i32 @update_counters(%struct.item*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @key_cmp(i32, i32, i32, i32) #1

declare dso_local i32 @tree_split(%struct.item**, %struct.item**, %struct.item*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
