; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_do_firmware_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_do_firmware_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_sysfs = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kobj_uevent_env = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"FIRMWARE=%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"TIMEOUT=%i\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ASYNC=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_sysfs*, %struct.kobj_uevent_env*)* @do_firmware_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_firmware_uevent(%struct.fw_sysfs* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_sysfs*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  store %struct.fw_sysfs* %0, %struct.fw_sysfs** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %6 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %7 = load %struct.fw_sysfs*, %struct.fw_sysfs** %4, align 8
  %8 = getelementptr inbounds %struct.fw_sysfs, %struct.fw_sysfs* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %19 = call i32 (...) @__firmware_loading_timeout()
  %20 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %17
  %26 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %27 = load %struct.fw_sysfs*, %struct.fw_sysfs** %4, align 8
  %28 = getelementptr inbounds %struct.fw_sysfs, %struct.fw_sysfs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %32, %22, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32) #1

declare dso_local i32 @__firmware_loading_timeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
