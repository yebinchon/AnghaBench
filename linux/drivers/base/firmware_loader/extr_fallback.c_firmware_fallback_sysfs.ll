; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_firmware_fallback_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_firmware_fallback_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.device = type { i32 }

@FW_OPT_NO_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Falling back to sysfs fallback for: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @firmware_fallback_sysfs(%struct.firmware* %0, i8* %1, %struct.device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.device* %2, %struct.device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = call i32 @fw_run_sysfs_fallback(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %11, align 4
  store i32 %16, i32* %6, align 4
  br label %36

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @FW_OPT_NO_WARN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.device*, %struct.device** %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @dev_warn(%struct.device* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.firmware*, %struct.firmware** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @fw_load_from_user_helper(%struct.firmware* %31, i8* %32, %struct.device* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %30, %15
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @fw_run_sysfs_fallback(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @fw_load_from_user_helper(%struct.firmware*, i8*, %struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
