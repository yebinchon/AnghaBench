; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_show_dock_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_dock.c_show_dock_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.dock_station* }
%struct.dock_station = type { i32 }
%struct.device_attribute = type { i32 }

@DOCK_IS_DOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"dock_station\00", align 1
@DOCK_IS_ATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ata_bay\00", align 1
@DOCK_IS_BAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"battery_bay\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_dock_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_dock_type(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dock_station*, align 8
  %8 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.dock_station*, %struct.dock_station** %10, align 8
  store %struct.dock_station* %11, %struct.dock_station** %7, align 8
  %12 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %13 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DOCK_IS_DOCK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %21 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DOCK_IS_ATA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %37

27:                                               ; preds = %19
  %28 = load %struct.dock_station*, %struct.dock_station** %7, align 8
  %29 = getelementptr inbounds %struct.dock_station, %struct.dock_station* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DOCK_IS_BAT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %36

35:                                               ; preds = %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %37, %18
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  ret i32 %42
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
