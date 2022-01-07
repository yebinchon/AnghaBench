; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_tpm_ibmvtpm_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_tpm_ibmvtpm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.ibmvtpm_dev = type { i64, i32, i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"ibmvtpm device is not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid size in send: count=%zd, rtce_size=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Need to wait for TPM to finish\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@IBMVTPM_VALID_CMD = common dso_local global i32 0, align 4
@VTPM_TPM_COMMAND = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"tpm_ibmvtpm_send failed rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_ibmvtpm_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_ibmvtpm_send(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ibmvtpm_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 0
  %13 = call %struct.ibmvtpm_dev* @dev_get_drvdata(i32* %12)
  store %struct.ibmvtpm_dev* %13, %struct.ibmvtpm_dev** %8, align 8
  %14 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %15 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %20 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %109

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %26 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %31 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %35 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %109

40:                                               ; preds = %23
  %41 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %42 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %47 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_info(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %51 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %54 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @wait_event_interruptible(i32 %52, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = load i32, i32* @EINTR, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %109

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %68 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %67, i32 0, i32 2
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %71 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %73 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load i32*, i32** %6, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @memcpy(i8* %75, i8* %77, i64 %78)
  %80 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %81 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  %82 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %83 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IBMVTPM_VALID_CMD, align 4
  %86 = load i32, i32* @VTPM_TPM_COMMAND, align 4
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %89 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ibmvtpm_send_crq(i32 %84, i32 %85, i32 %86, i64 %87, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @H_SUCCESS, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %66
  %96 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %97 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i32, i8*, ...) @dev_err(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  store i32 0, i32* %9, align 4
  %101 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %102 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %101, i32 0, i32 1
  store i32 0, i32* %102, align 8
  br label %104

103:                                              ; preds = %66
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %103, %95
  %105 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %106 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %105, i32 0, i32 2
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %104, %62, %29, %18
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.ibmvtpm_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ibmvtpm_send_crq(i32, i32, i32, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
