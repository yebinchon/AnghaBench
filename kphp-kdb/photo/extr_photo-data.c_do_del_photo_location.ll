; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_del_photo_location.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_del_photo_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_del_photo_location = type { i32, i32 }

@LEV_PHOTO_DEL_PHOTO_LOCATION = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@del_photo_location = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_del_photo_location(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lev_photo_del_photo_location*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %37

16:                                               ; preds = %12
  store i32 8, i32* %8, align 4
  %17 = load i64, i64* @LEV_PHOTO_DEL_PHOTO_LOCATION, align 8
  %18 = load i32, i32* @mode, align 4
  %19 = shl i32 %18, 16
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 10
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.lev_photo_del_photo_location* @alloc_log_event(i64 %25, i32 %26, i32 %27)
  store %struct.lev_photo_del_photo_location* %28, %struct.lev_photo_del_photo_location** %9, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.lev_photo_del_photo_location*, %struct.lev_photo_del_photo_location** %9, align 8
  %31 = getelementptr inbounds %struct.lev_photo_del_photo_location, %struct.lev_photo_del_photo_location* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.lev_photo_del_photo_location*, %struct.lev_photo_del_photo_location** %9, align 8
  %34 = getelementptr inbounds %struct.lev_photo_del_photo_location, %struct.lev_photo_del_photo_location* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @del_photo_location, align 4
  %36 = call i32 @MY_LOG_EVENT_HANDLER(i32 %35, i32 1)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %16, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.lev_photo_del_photo_location* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @MY_LOG_EVENT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
