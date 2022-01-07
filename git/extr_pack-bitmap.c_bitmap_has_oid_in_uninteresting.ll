; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_bitmap_has_oid_in_uninteresting.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_bitmap_has_oid_in_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i32 }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_has_oid_in_uninteresting(%struct.bitmap_index* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_index*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  store %struct.bitmap_index* %0, %struct.bitmap_index** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %7 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %8 = icmp ne %struct.bitmap_index* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

10:                                               ; preds = %2
  %11 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %12 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %29

16:                                               ; preds = %10
  %17 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %18 = load %struct.object_id*, %struct.object_id** %5, align 8
  %19 = call i32 @bitmap_position_packfile(%struct.bitmap_index* %17, %struct.object_id* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %29

23:                                               ; preds = %16
  %24 = load %struct.bitmap_index*, %struct.bitmap_index** %4, align 8
  %25 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @bitmap_get(i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %22, %15, %9
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @bitmap_position_packfile(%struct.bitmap_index*, %struct.object_id*) #1

declare dso_local i32 @bitmap_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
