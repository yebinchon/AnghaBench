; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_compute_pack_layers.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_compute_pack_layers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packing_data = type { i64, %struct.object_entry* }
%struct.object_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.island_bitmap = type { i32 }

@core_island_name = common dso_local global i32 0, align 4
@island_marks = common dso_local global i32 0, align 4
@island_counter_core = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_pack_layers(%struct.packing_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.packing_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.object_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.island_bitmap*, align 8
  store %struct.packing_data* %0, %struct.packing_data** %3, align 8
  %8 = load i32, i32* @core_island_name, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @island_marks, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %1
  store i32 1, i32* %2, align 4
  br label %58

14:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %54, %14
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.packing_data*, %struct.packing_data** %3, align 8
  %18 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %15
  %22 = load %struct.packing_data*, %struct.packing_data** %3, align 8
  %23 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %22, i32 0, i32 1
  %24 = load %struct.object_entry*, %struct.object_entry** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %24, i64 %25
  store %struct.object_entry* %26, %struct.object_entry** %5, align 8
  %27 = load i32, i32* @island_marks, align 4
  %28 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %29 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @kh_get_oid_map(i32 %27, i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.packing_data*, %struct.packing_data** %3, align 8
  %34 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %35 = call i32 @oe_set_layer(%struct.packing_data* %33, %struct.object_entry* %34, i32 1)
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @island_marks, align 4
  %38 = call i64 @kh_end(i32 %37)
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %21
  %41 = load i32, i32* @island_marks, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call %struct.island_bitmap* @kh_value(i32 %41, i64 %42)
  store %struct.island_bitmap* %43, %struct.island_bitmap** %7, align 8
  %44 = load %struct.island_bitmap*, %struct.island_bitmap** %7, align 8
  %45 = load i32, i32* @island_counter_core, align 4
  %46 = call i64 @island_bitmap_get(%struct.island_bitmap* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.packing_data*, %struct.packing_data** %3, align 8
  %50 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %51 = call i32 @oe_set_layer(%struct.packing_data* %49, %struct.object_entry* %50, i32 0)
  br label %52

52:                                               ; preds = %48, %40
  br label %53

53:                                               ; preds = %52, %21
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %4, align 8
  br label %15

57:                                               ; preds = %15
  store i32 2, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @kh_get_oid_map(i32, i32) #1

declare dso_local i32 @oe_set_layer(%struct.packing_data*, %struct.object_entry*, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local %struct.island_bitmap* @kh_value(i32, i64) #1

declare dso_local i64 @island_bitmap_get(%struct.island_bitmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
