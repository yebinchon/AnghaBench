; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_tpm_ibmvtpm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ibmvtpm.c_tpm_ibmvtpm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tpm_chip = type { %struct.device }
%struct.ibmvtpm_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@H_ENABLE_CRQ = common dso_local global i32 0, align 4
@H_IN_PROGRESS = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error enabling ibmvtpm rc=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error vio_enable_interrupts rc=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Error send_init rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tpm_ibmvtpm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_ibmvtpm_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca %struct.ibmvtpm_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i8* @dev_get_drvdata(%struct.device* %7)
  %9 = bitcast i8* %8 to %struct.tpm_chip*
  store %struct.tpm_chip* %9, %struct.tpm_chip** %4, align 8
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %11 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %10, i32 0, i32 0
  %12 = call i8* @dev_get_drvdata(%struct.device* %11)
  %13 = bitcast i8* %12 to %struct.ibmvtpm_dev*
  store %struct.ibmvtpm_dev* %13, %struct.ibmvtpm_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %39, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @msleep(i32 100)
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* @H_ENABLE_CRQ, align 4
  %21 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %5, align 8
  %22 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @plpar_hcall_norets(i32 %20, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @H_IN_PROGRESS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @H_BUSY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @H_IS_LONG_BUSY(i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %35, %31, %27
  %40 = phi i1 [ true, %31 ], [ true, %27 ], [ %38, %35 ]
  br i1 %40, label %14, label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %72

49:                                               ; preds = %41
  %50 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %5, align 8
  %51 = getelementptr inbounds %struct.ibmvtpm_dev, %struct.ibmvtpm_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @vio_enable_interrupts(%struct.TYPE_2__* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %72

61:                                               ; preds = %49
  %62 = load %struct.ibmvtpm_dev*, %struct.ibmvtpm_dev** %5, align 8
  %63 = call i32 @ibmvtpm_crq_send_init(%struct.ibmvtpm_dev* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %56, %44
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i8* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @plpar_hcall_norets(i32, i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @vio_enable_interrupts(%struct.TYPE_2__*) #1

declare dso_local i32 @ibmvtpm_crq_send_init(%struct.ibmvtpm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
