; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_change_photo_location_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_change_photo_location_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_add_photo_location = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"change_photo_location_server failed\0A\00", align 1
@LEV_PHOTO_CHANGE_PHOTO_LOCATION_SERVER = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@change_photo_location_server = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_change_photo_location_server(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lev_photo_add_photo_location*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19, %16, %5
  %26 = call i32 @dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %54

27:                                               ; preds = %22
  store i32 4, i32* %12, align 4
  %28 = load i64, i64* @LEV_PHOTO_CHANGE_PHOTO_LOCATION_SERVER, align 8
  %29 = load i32, i32* @mode, align 4
  %30 = shl i32 %29, 16
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.lev_photo_add_photo_location* @alloc_log_event(i64 %39, i32 %40, i32 %41)
  store %struct.lev_photo_add_photo_location* %42, %struct.lev_photo_add_photo_location** %13, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.lev_photo_add_photo_location*, %struct.lev_photo_add_photo_location** %13, align 8
  %45 = getelementptr inbounds %struct.lev_photo_add_photo_location, %struct.lev_photo_add_photo_location* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.lev_photo_add_photo_location*, %struct.lev_photo_add_photo_location** %13, align 8
  %48 = getelementptr inbounds %struct.lev_photo_add_photo_location, %struct.lev_photo_add_photo_location* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.lev_photo_add_photo_location*, %struct.lev_photo_add_photo_location** %13, align 8
  %51 = getelementptr inbounds %struct.lev_photo_add_photo_location, %struct.lev_photo_add_photo_location* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @change_photo_location_server, align 4
  %53 = call i32 @MY_LOG_EVENT_HANDLER(i32 %52, i32 1)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %27, %25
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local %struct.lev_photo_add_photo_location* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @MY_LOG_EVENT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
