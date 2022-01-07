; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_optee-rng.c_optee_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_optee-rng.c_optee_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.tee_client_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tee_ioctl_open_session_arg = type { i64, i32, i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@optee_ctx_match = common dso_local global i32 0, align 4
@pvt_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TEE_IOCTL_UUID_LEN = common dso_local global i32 0, align 4
@TEE_IOCTL_LOGIN_PUBLIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"tee_client_open_session failed, err: %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"hwrng registration failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @optee_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optee_rng_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tee_client_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tee_ioctl_open_session_arg, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.tee_client_device* @to_tee_client_device(%struct.device* %8)
  store %struct.tee_client_device* %9, %struct.tee_client_device** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = call i32 @memset(%struct.tee_ioctl_open_session_arg* %7, i32 0, i32 32)
  %13 = load i32, i32* @optee_ctx_match, align 4
  %14 = call i32 @tee_client_open_context(i32* null, i32 %13, i32* null, i32* null)
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pvt_data, i32 0, i32 0), align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pvt_data, i32 0, i32 0), align 8
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %7, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tee_client_device*, %struct.tee_client_device** %4, align 8
  %25 = getelementptr inbounds %struct.tee_client_device, %struct.tee_client_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TEE_IOCTL_UUID_LEN, align 4
  %30 = call i32 @memcpy(i32 %23, i32 %28, i32 %29)
  %31 = load i32, i32* @TEE_IOCTL_LOGIN_PUBLIC, align 4
  %32 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %7, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %7, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pvt_data, i32 0, i32 0), align 8
  %35 = call i32 @tee_client_open_session(i32 %34, %struct.tee_ioctl_open_session_arg* %7, i32* null)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %21
  %39 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38, %21
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %7, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %72

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pvt_data, i32 0, i32 1), align 4
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = call i32 @get_optee_rng_info(%struct.device* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %68

58:                                               ; preds = %50
  %59 = call i32 @hwrng_register(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pvt_data, i32 0, i32 3))
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %68

66:                                               ; preds = %58
  %67 = load %struct.device*, %struct.device** %3, align 8
  store %struct.device* %67, %struct.device** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pvt_data, i32 0, i32 2), align 8
  store i32 0, i32* %2, align 4
  br label %76

68:                                               ; preds = %62, %57
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pvt_data, i32 0, i32 0), align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pvt_data, i32 0, i32 1), align 4
  %71 = call i32 @tee_client_close_session(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %42
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pvt_data, i32 0, i32 0), align 8
  %74 = call i32 @tee_client_close_context(i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %66, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.tee_client_device* @to_tee_client_device(%struct.device*) #1

declare dso_local i32 @memset(%struct.tee_ioctl_open_session_arg*, i32, i32) #1

declare dso_local i32 @tee_client_open_context(i32*, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @tee_client_open_session(i32, %struct.tee_ioctl_open_session_arg*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @get_optee_rng_info(%struct.device*) #1

declare dso_local i32 @hwrng_register(i32*) #1

declare dso_local i32 @tee_client_close_session(i32, i32) #1

declare dso_local i32 @tee_client_close_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
