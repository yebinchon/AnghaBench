; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_in_same_island.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_in_same_island.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@island_marks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_same_island(%struct.object_id* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %8 = load i32, i32* @island_marks, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %41

11:                                               ; preds = %2
  %12 = load i32, i32* @island_marks, align 4
  %13 = load %struct.object_id*, %struct.object_id** %4, align 8
  %14 = getelementptr inbounds %struct.object_id, %struct.object_id* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @kh_get_oid_map(i32 %12, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @island_marks, align 4
  %19 = call i64 @kh_end(i32 %18)
  %20 = icmp sge i64 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %41

22:                                               ; preds = %11
  %23 = load i32, i32* @island_marks, align 4
  %24 = load %struct.object_id*, %struct.object_id** %5, align 8
  %25 = getelementptr inbounds %struct.object_id, %struct.object_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @kh_get_oid_map(i32 %23, i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @island_marks, align 4
  %30 = call i64 @kh_end(i32 %29)
  %31 = icmp sge i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %41

33:                                               ; preds = %22
  %34 = load i32, i32* @island_marks, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @kh_value(i32 %34, i64 %35)
  %37 = load i32, i32* @island_marks, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @kh_value(i32 %37, i64 %38)
  %40 = call i32 @island_bitmap_is_subset(i32 %36, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %32, %21, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @kh_get_oid_map(i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local i32 @island_bitmap_is_subset(i32, i32) #1

declare dso_local i32 @kh_value(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
