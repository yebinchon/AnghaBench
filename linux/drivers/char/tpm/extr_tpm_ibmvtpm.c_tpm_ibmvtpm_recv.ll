; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_tpm_ibmvtpm_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_tpm_ibmvtpm_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.ibmvtpm_dev = type { i64, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"ibmvtpm device is not ready\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Invalid size in recv: count=%zd, crq_size=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_ibmvtpm_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_ibmvtpm_recv(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ibmvtpm_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 0
  %13 = call %struct.ibmvtpm_dev* @dev_get_drvdata(i32* %12)
  store %struct.ibmvtpm_dev* %13, %struct.ibmvtpm_dev** %8, align 8
  %14 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %15 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %20 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %79

23:                                               ; preds = %3
  %24 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %25 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %28 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @wait_event_interruptible(i32 %26, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32, i32* @EINTR, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %79

39:                                               ; preds = %23
  %40 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %41 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %48 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %79

55:                                               ; preds = %39
  %56 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %57 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %56, i32 0, i32 1
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %62 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @memcpy(i8* %60, i8* %64, i64 %65)
  %67 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %68 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @memset(i64 %69, i32 0, i64 %70)
  %72 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %73 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %8, align 8
  %75 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load i64, i64* %9, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %55, %46, %36, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.ibmvtpm_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
