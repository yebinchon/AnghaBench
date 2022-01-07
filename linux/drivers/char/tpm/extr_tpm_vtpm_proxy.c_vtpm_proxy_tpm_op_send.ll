; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_tpm_op_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_tpm_op_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.proxy_dev = type { i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [50 x i8] c"Invalid size in send: count=%zd, buffer size=%zd\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STATE_DRIVER_COMMAND = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@STATE_OPENED_FLAG = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@STATE_WAIT_RESPONSE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @vtpm_proxy_tpm_op_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpm_proxy_tpm_op_send(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.proxy_dev*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %10 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %9, i32 0, i32 0
  %11 = call %struct.proxy_dev* @dev_get_drvdata(i32* %10)
  store %struct.proxy_dev* %11, %struct.proxy_dev** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ugt i64 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %16 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %17, i32 4)
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  %22 = load %struct.proxy_dev*, %struct.proxy_dev** %8, align 8
  %23 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @STATE_DRIVER_COMMAND, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %21
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @vtpm_proxy_is_driver_command(%struct.tpm_chip* %29, i32* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EFAULT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %77

37:                                               ; preds = %28, %21
  %38 = load %struct.proxy_dev*, %struct.proxy_dev** %8, align 8
  %39 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %38, i32 0, i32 3
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.proxy_dev*, %struct.proxy_dev** %8, align 8
  %42 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @STATE_OPENED_FLAG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = load %struct.proxy_dev*, %struct.proxy_dev** %8, align 8
  %49 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %48, i32 0, i32 3
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* @EPIPE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %77

53:                                               ; preds = %37
  %54 = load %struct.proxy_dev*, %struct.proxy_dev** %8, align 8
  %55 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.proxy_dev*, %struct.proxy_dev** %8, align 8
  %58 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.proxy_dev*, %struct.proxy_dev** %8, align 8
  %60 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @memcpy(i32 %61, i32* %62, i64 %63)
  %65 = load i32, i32* @STATE_WAIT_RESPONSE_FLAG, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.proxy_dev*, %struct.proxy_dev** %8, align 8
  %68 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.proxy_dev*, %struct.proxy_dev** %8, align 8
  %72 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %71, i32 0, i32 3
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.proxy_dev*, %struct.proxy_dev** %8, align 8
  %75 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %74, i32 0, i32 2
  %76 = call i32 @wake_up_interruptible(i32* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %53, %47, %34, %14
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.proxy_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

declare dso_local i64 @vtpm_proxy_is_driver_command(%struct.tpm_chip*, i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
