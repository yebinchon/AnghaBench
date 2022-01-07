; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_restore_photo.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_restore_photo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_restore_photo = type { i32, i32 }

@LEV_PHOTO_RESTORE_PHOTO = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@restore_photo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_restore_photo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_photo_restore_photo*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 8, i32* %5, align 4
  %7 = load i64, i64* @LEV_PHOTO_RESTORE_PHOTO, align 8
  %8 = load i32, i32* @mode, align 4
  %9 = shl i32 %8, 16
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.lev_photo_restore_photo* @alloc_log_event(i64 %11, i32 %12, i32 %13)
  store %struct.lev_photo_restore_photo* %14, %struct.lev_photo_restore_photo** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.lev_photo_restore_photo*, %struct.lev_photo_restore_photo** %6, align 8
  %17 = getelementptr inbounds %struct.lev_photo_restore_photo, %struct.lev_photo_restore_photo* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.lev_photo_restore_photo*, %struct.lev_photo_restore_photo** %6, align 8
  %20 = getelementptr inbounds %struct.lev_photo_restore_photo, %struct.lev_photo_restore_photo* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @restore_photo, align 4
  %22 = call i32 @MY_LOG_EVENT_HANDLER(i32 %21, i32 1)
  ret i32 %22
}

declare dso_local %struct.lev_photo_restore_photo* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @MY_LOG_EVENT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
