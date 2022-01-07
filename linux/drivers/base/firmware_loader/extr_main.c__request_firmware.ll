; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c__request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c__request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FW_OPT_NO_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Direct firmware load for %s failed with error %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@fw_decompress_xz = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firmware**, i8*, %struct.device*, i8*, i64, i32)* @_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_request_firmware(%struct.firmware** %0, i8* %1, %struct.device* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.firmware*, align 8
  %15 = alloca i32, align 4
  store %struct.firmware** %0, %struct.firmware*** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.device* %2, %struct.device** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.firmware* null, %struct.firmware** %14, align 8
  %16 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %17 = icmp ne %struct.firmware** %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %86

21:                                               ; preds = %6
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %15, align 4
  br label %74

33:                                               ; preds = %24
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.device*, %struct.device** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @_request_firmware_prepare(%struct.firmware** %14, i8* %34, %struct.device* %35, i8* %36, i64 %37, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %74

43:                                               ; preds = %33
  %44 = load %struct.device*, %struct.device** %10, align 8
  %45 = load %struct.firmware*, %struct.firmware** %14, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fw_get_filesystem_firmware(%struct.device* %44, i32 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @FW_OPT_NO_WARN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %10, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @dev_warn(%struct.device* %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.firmware*, %struct.firmware** %14, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.device*, %struct.device** %10, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @firmware_fallback_sysfs(%struct.firmware* %62, i8* %63, %struct.device* %64, i32 %65, i32 %66)
  store i32 %67, i32* %15, align 4
  br label %73

68:                                               ; preds = %43
  %69 = load %struct.firmware*, %struct.firmware** %14, align 8
  %70 = load %struct.device*, %struct.device** %10, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @assign_fw(%struct.firmware* %69, %struct.device* %70, i32 %71)
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %68, %61
  br label %74

74:                                               ; preds = %73, %42, %30
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.firmware*, %struct.firmware** %14, align 8
  %79 = call i32 @fw_abort_batch_reqs(%struct.firmware* %78)
  %80 = load %struct.firmware*, %struct.firmware** %14, align 8
  %81 = call i32 @release_firmware(%struct.firmware* %80)
  store %struct.firmware* null, %struct.firmware** %14, align 8
  br label %82

82:                                               ; preds = %77, %74
  %83 = load %struct.firmware*, %struct.firmware** %14, align 8
  %84 = load %struct.firmware**, %struct.firmware*** %8, align 8
  store %struct.firmware* %83, %struct.firmware** %84, align 8
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %18
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @_request_firmware_prepare(%struct.firmware**, i8*, %struct.device*, i8*, i64, i32) #1

declare dso_local i32 @fw_get_filesystem_firmware(%struct.device*, i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @firmware_fallback_sysfs(%struct.firmware*, i8*, %struct.device*, i32, i32) #1

declare dso_local i32 @assign_fw(%struct.firmware*, %struct.device*, i32) #1

declare dso_local i32 @fw_abort_batch_reqs(%struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
