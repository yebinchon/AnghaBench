; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_add_to_include_set.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_add_to_include_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i32 }
%struct.include_data = type { i64, i64 }
%struct.object_id = type { i32 }
%struct.stored_bitmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap_index*, %struct.include_data*, %struct.object_id*, i32)* @add_to_include_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_include_set(%struct.bitmap_index* %0, %struct.include_data* %1, %struct.object_id* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_index*, align 8
  %7 = alloca %struct.include_data*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.stored_bitmap*, align 8
  store %struct.bitmap_index* %0, %struct.bitmap_index** %6, align 8
  store %struct.include_data* %1, %struct.include_data** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.include_data*, %struct.include_data** %7, align 8
  %13 = getelementptr inbounds %struct.include_data, %struct.include_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.include_data*, %struct.include_data** %7, align 8
  %18 = getelementptr inbounds %struct.include_data, %struct.include_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @bitmap_get(i64 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %64

24:                                               ; preds = %16, %4
  %25 = load %struct.include_data*, %struct.include_data** %7, align 8
  %26 = getelementptr inbounds %struct.include_data, %struct.include_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @bitmap_get(i64 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %64

32:                                               ; preds = %24
  %33 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %34 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.object_id*, %struct.object_id** %8, align 8
  %37 = getelementptr inbounds %struct.object_id, %struct.object_id* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @kh_get_oid_map(i32 %35, i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %42 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @kh_end(i32 %43)
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %32
  %47 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %48 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %10, align 8
  %51 = call %struct.stored_bitmap* @kh_value(i32 %49, i64 %50)
  store %struct.stored_bitmap* %51, %struct.stored_bitmap** %11, align 8
  %52 = load %struct.include_data*, %struct.include_data** %7, align 8
  %53 = getelementptr inbounds %struct.include_data, %struct.include_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.stored_bitmap*, %struct.stored_bitmap** %11, align 8
  %56 = call i32 @lookup_stored_bitmap(%struct.stored_bitmap* %55)
  %57 = call i32 @bitmap_or_ewah(i64 %54, i32 %56)
  store i32 0, i32* %5, align 4
  br label %64

58:                                               ; preds = %32
  %59 = load %struct.include_data*, %struct.include_data** %7, align 8
  %60 = getelementptr inbounds %struct.include_data, %struct.include_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @bitmap_set(i64 %61, i32 %62)
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %46, %31, %23
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @bitmap_get(i64, i32) #1

declare dso_local i64 @kh_get_oid_map(i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local %struct.stored_bitmap* @kh_value(i32, i64) #1

declare dso_local i32 @bitmap_or_ewah(i64, i32) #1

declare dso_local i32 @lookup_stored_bitmap(%struct.stored_bitmap*) #1

declare dso_local i32 @bitmap_set(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
