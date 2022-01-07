; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_island_delta_cmp.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_island_delta_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.island_bitmap = type { i32 }

@island_marks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @island_delta_cmp(%struct.object_id* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.island_bitmap*, align 8
  %9 = alloca %struct.island_bitmap*, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store %struct.island_bitmap* null, %struct.island_bitmap** %8, align 8
  store %struct.island_bitmap* null, %struct.island_bitmap** %9, align 8
  %10 = load i32, i32* @island_marks, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

13:                                               ; preds = %2
  %14 = load i32, i32* @island_marks, align 4
  %15 = load %struct.object_id*, %struct.object_id** %4, align 8
  %16 = getelementptr inbounds %struct.object_id, %struct.object_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @kh_get_oid_map(i32 %14, i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @island_marks, align 4
  %21 = call i64 @kh_end(i32 %20)
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* @island_marks, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.island_bitmap* @kh_value(i32 %24, i64 %25)
  store %struct.island_bitmap* %26, %struct.island_bitmap** %8, align 8
  br label %27

27:                                               ; preds = %23, %13
  %28 = load i32, i32* @island_marks, align 4
  %29 = load %struct.object_id*, %struct.object_id** %5, align 8
  %30 = getelementptr inbounds %struct.object_id, %struct.object_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @kh_get_oid_map(i32 %28, i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* @island_marks, align 4
  %35 = call i64 @kh_end(i32 %34)
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32, i32* @island_marks, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call %struct.island_bitmap* @kh_value(i32 %38, i64 %39)
  store %struct.island_bitmap* %40, %struct.island_bitmap** %9, align 8
  br label %41

41:                                               ; preds = %37, %27
  %42 = load %struct.island_bitmap*, %struct.island_bitmap** %8, align 8
  %43 = icmp ne %struct.island_bitmap* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.island_bitmap*, %struct.island_bitmap** %9, align 8
  %46 = icmp ne %struct.island_bitmap* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.island_bitmap*, %struct.island_bitmap** %8, align 8
  %49 = load %struct.island_bitmap*, %struct.island_bitmap** %9, align 8
  %50 = call i32 @island_bitmap_is_subset(%struct.island_bitmap* %48, %struct.island_bitmap* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %44
  store i32 -1, i32* %3, align 4
  br label %68

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %41
  %55 = load %struct.island_bitmap*, %struct.island_bitmap** %9, align 8
  %56 = icmp ne %struct.island_bitmap* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.island_bitmap*, %struct.island_bitmap** %8, align 8
  %59 = icmp ne %struct.island_bitmap* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.island_bitmap*, %struct.island_bitmap** %9, align 8
  %62 = load %struct.island_bitmap*, %struct.island_bitmap** %8, align 8
  %63 = call i32 @island_bitmap_is_subset(%struct.island_bitmap* %61, %struct.island_bitmap* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60, %57
  store i32 1, i32* %3, align 4
  br label %68

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %54
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %65, %52, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @kh_get_oid_map(i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local %struct.island_bitmap* @kh_value(i32, i64) #1

declare dso_local i32 @island_bitmap_is_subset(%struct.island_bitmap*, %struct.island_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
