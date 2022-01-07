; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_print_uuids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_print_uuids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@D_NEGOTIATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s %016llX:%016llX:%016llX:%016llX\0A\00", align 1
@UI_CURRENT = common dso_local global i64 0, align 8
@UI_BITMAP = common dso_local global i64 0, align 8
@UI_HISTORY_START = common dso_local global i64 0, align 8
@UI_HISTORY_END = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%s effective data uuid: %016llX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_print_uuids(%struct.drbd_device* %0, i8* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %7 = load i32, i32* @D_NEGOTIATING, align 4
  %8 = call i64 @get_ldev_if_state(%struct.drbd_device* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %12 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %5, align 8
  %17 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* @UI_CURRENT, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* @UI_BITMAP, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* @UI_HISTORY_START, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* @UI_HISTORY_END, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct.drbd_device*, i8*, i8*, i64, ...) @drbd_info(%struct.drbd_device* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %18, i64 %22, i64 %26, i64 %30, i64 %34)
  %36 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %37 = call i32 @put_ldev(%struct.drbd_device* %36)
  br label %45

38:                                               ; preds = %2
  %39 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %42 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (%struct.drbd_device*, i8*, i8*, i64, ...) @drbd_info(%struct.drbd_device* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %40, i64 %43)
  br label %45

45:                                               ; preds = %38, %10
  ret void
}

declare dso_local i64 @get_ldev_if_state(%struct.drbd_device*, i32) #1

declare dso_local i32 @drbd_info(%struct.drbd_device*, i8*, i8*, i64, ...) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
