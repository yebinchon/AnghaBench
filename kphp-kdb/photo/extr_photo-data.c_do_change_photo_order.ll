; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_change_photo_order.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_change_photo_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_change_photo_order = type { i32, i32, i32 }

@LEV_PHOTO_CHANGE_PHOTO_ORDER = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@change_photo_order = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_change_photo_order(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lev_photo_change_photo_order*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @check_photo_id(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %15, %4
  store i32 0, i32* %5, align 4
  br label %46

23:                                               ; preds = %18
  store i32 12, i32* %10, align 4
  %24 = load i64, i64* @LEV_PHOTO_CHANGE_PHOTO_ORDER, align 8
  %25 = load i32, i32* @mode, align 4
  %26 = shl i32 %25, 16
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.lev_photo_change_photo_order* @alloc_log_event(i64 %31, i32 %32, i32 %33)
  store %struct.lev_photo_change_photo_order* %34, %struct.lev_photo_change_photo_order** %11, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.lev_photo_change_photo_order*, %struct.lev_photo_change_photo_order** %11, align 8
  %37 = getelementptr inbounds %struct.lev_photo_change_photo_order, %struct.lev_photo_change_photo_order* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.lev_photo_change_photo_order*, %struct.lev_photo_change_photo_order** %11, align 8
  %40 = getelementptr inbounds %struct.lev_photo_change_photo_order, %struct.lev_photo_change_photo_order* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.lev_photo_change_photo_order*, %struct.lev_photo_change_photo_order** %11, align 8
  %43 = getelementptr inbounds %struct.lev_photo_change_photo_order, %struct.lev_photo_change_photo_order* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @change_photo_order, align 4
  %45 = call i32 @MY_LOG_EVENT_HANDLER(i32 %44, i32 1)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %23, %22
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @check_photo_id(i32) #1

declare dso_local %struct.lev_photo_change_photo_order* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @MY_LOG_EVENT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
