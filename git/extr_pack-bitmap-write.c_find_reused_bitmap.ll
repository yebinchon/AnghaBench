; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_find_reused_bitmap.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_find_reused_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ewah_bitmap = type { i32 }
%struct.object_id = type { i32 }

@writer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ewah_bitmap* (%struct.object_id*)* @find_reused_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ewah_bitmap* @find_reused_bitmap(%struct.object_id* %0) #0 {
  %2 = alloca %struct.ewah_bitmap*, align 8
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i64, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @writer, i32 0, i32 0), align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.ewah_bitmap* null, %struct.ewah_bitmap** %2, align 8
  br label %23

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @writer, i32 0, i32 0), align 4
  %10 = load %struct.object_id*, %struct.object_id** %3, align 8
  %11 = getelementptr inbounds %struct.object_id, %struct.object_id* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @kh_get_oid_map(i32 %9, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @writer, i32 0, i32 0), align 4
  %16 = call i64 @kh_end(i32 %15)
  %17 = icmp sge i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store %struct.ewah_bitmap* null, %struct.ewah_bitmap** %2, align 8
  br label %23

19:                                               ; preds = %8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @writer, i32 0, i32 0), align 4
  %21 = load i64, i64* %4, align 8
  %22 = call %struct.ewah_bitmap* @kh_value(i32 %20, i64 %21)
  store %struct.ewah_bitmap* %22, %struct.ewah_bitmap** %2, align 8
  br label %23

23:                                               ; preds = %19, %18, %7
  %24 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %2, align 8
  ret %struct.ewah_bitmap* %24
}

declare dso_local i64 @kh_get_oid_map(i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local %struct.ewah_bitmap* @kh_value(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
