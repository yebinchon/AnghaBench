; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_rotate_photo.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_rotate_photo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_rotate_photo = type { i32, i32 }

@LEV_PHOTO_ROTATE_PHOTO = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@rotate_photo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rotate_photo(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lev_photo_rotate_photo*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @check_photo_id(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %16
  store i32 0, i32* %4, align 4
  br label %44

24:                                               ; preds = %19
  store i32 8, i32* %8, align 4
  %25 = load i64, i64* @LEV_PHOTO_ROTATE_PHOTO, align 8
  %26 = load i32, i32* @mode, align 4
  %27 = shl i32 %26, 16
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.lev_photo_rotate_photo* @alloc_log_event(i64 %32, i32 %33, i32 %34)
  store %struct.lev_photo_rotate_photo* %35, %struct.lev_photo_rotate_photo** %9, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.lev_photo_rotate_photo*, %struct.lev_photo_rotate_photo** %9, align 8
  %38 = getelementptr inbounds %struct.lev_photo_rotate_photo, %struct.lev_photo_rotate_photo* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.lev_photo_rotate_photo*, %struct.lev_photo_rotate_photo** %9, align 8
  %41 = getelementptr inbounds %struct.lev_photo_rotate_photo, %struct.lev_photo_rotate_photo* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @rotate_photo, align 4
  %43 = call i32 @MY_LOG_EVENT_HANDLER(i32 %42, i32 1)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %24, %23
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @check_photo_id(i32) #1

declare dso_local %struct.lev_photo_rotate_photo* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @MY_LOG_EVENT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
