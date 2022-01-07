; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_restore_photo_location.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_restore_photo_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_restore_photo_location = type { i32, i32 }

@LEV_PHOTO_RESTORE_PHOTO_LOCATION = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@restore_photo_location = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_restore_photo_location(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_photo_restore_photo_location*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @check_photo_id(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

12:                                               ; preds = %2
  store i32 8, i32* %6, align 4
  %13 = load i64, i64* @LEV_PHOTO_RESTORE_PHOTO_LOCATION, align 8
  %14 = load i32, i32* @mode, align 4
  %15 = shl i32 %14, 16
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.lev_photo_restore_photo_location* @alloc_log_event(i64 %17, i32 %18, i32 %19)
  store %struct.lev_photo_restore_photo_location* %20, %struct.lev_photo_restore_photo_location** %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.lev_photo_restore_photo_location*, %struct.lev_photo_restore_photo_location** %7, align 8
  %23 = getelementptr inbounds %struct.lev_photo_restore_photo_location, %struct.lev_photo_restore_photo_location* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.lev_photo_restore_photo_location*, %struct.lev_photo_restore_photo_location** %7, align 8
  %26 = getelementptr inbounds %struct.lev_photo_restore_photo_location, %struct.lev_photo_restore_photo_location* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @restore_photo_location, align 4
  %28 = call i32 @MY_LOG_EVENT_HANDLER(i32 %27, i32 1)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %12, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @check_photo_id(i32) #1

declare dso_local %struct.lev_photo_restore_photo_location* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @MY_LOG_EVENT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
