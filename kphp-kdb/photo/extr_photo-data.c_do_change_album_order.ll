; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_change_album_order.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_change_album_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_change_album_order = type { i32, i32, i32 }

@LEV_PHOTO_CHANGE_ALBUM_ORDER = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@change_album_order = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_change_album_order(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lev_photo_change_album_order*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %4
  store i32 0, i32* %5, align 4
  br label %42

19:                                               ; preds = %14
  store i32 12, i32* %10, align 4
  %20 = load i64, i64* @LEV_PHOTO_CHANGE_ALBUM_ORDER, align 8
  %21 = load i32, i32* @mode, align 4
  %22 = shl i32 %21, 16
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.lev_photo_change_album_order* @alloc_log_event(i64 %27, i32 %28, i32 %29)
  store %struct.lev_photo_change_album_order* %30, %struct.lev_photo_change_album_order** %11, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.lev_photo_change_album_order*, %struct.lev_photo_change_album_order** %11, align 8
  %33 = getelementptr inbounds %struct.lev_photo_change_album_order, %struct.lev_photo_change_album_order* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.lev_photo_change_album_order*, %struct.lev_photo_change_album_order** %11, align 8
  %36 = getelementptr inbounds %struct.lev_photo_change_album_order, %struct.lev_photo_change_album_order* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.lev_photo_change_album_order*, %struct.lev_photo_change_album_order** %11, align 8
  %39 = getelementptr inbounds %struct.lev_photo_change_album_order, %struct.lev_photo_change_album_order* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @change_album_order, align 4
  %41 = call i32 @MY_LOG_EVENT_HANDLER(i32 %40, i32 1)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %19, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.lev_photo_change_album_order* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @MY_LOG_EVENT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
