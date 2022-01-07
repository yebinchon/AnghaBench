; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-sysfs.c_durations_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-sysfs.c_durations_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tpm_chip = type { i64*, i64 }

@TPM_LONG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%d %d %d [%s]\0A\00", align 1
@TPM_SHORT = common dso_local global i64 0, align 8
@TPM_MEDIUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"adjusted\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"original\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @durations_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @durations_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tpm_chip*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.tpm_chip* @to_tpm_chip(%struct.device* %9)
  store %struct.tpm_chip* %10, %struct.tpm_chip** %8, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %8, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @TPM_LONG, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %8, align 8
  %22 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @TPM_SHORT, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @jiffies_to_usecs(i64 %26)
  %28 = load %struct.tpm_chip*, %struct.tpm_chip** %8, align 8
  %29 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @TPM_MEDIUM, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @jiffies_to_usecs(i64 %33)
  %35 = load %struct.tpm_chip*, %struct.tpm_chip** %8, align 8
  %36 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @TPM_LONG, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @jiffies_to_usecs(i64 %40)
  %42 = load %struct.tpm_chip*, %struct.tpm_chip** %8, align 8
  %43 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %34, i32 %41, i8* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %19, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.tpm_chip* @to_tpm_chip(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @jiffies_to_usecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
