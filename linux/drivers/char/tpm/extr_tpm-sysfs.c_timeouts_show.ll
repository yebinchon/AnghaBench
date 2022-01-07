; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-sysfs.c_timeouts_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-sysfs.c_timeouts_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tpm_chip = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"adjusted\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"original\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @timeouts_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timeouts_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tpm_chip*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.tpm_chip* @to_tpm_chip(%struct.device* %8)
  store %struct.tpm_chip* %9, %struct.tpm_chip** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @jiffies_to_usecs(i32 %13)
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %16 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @jiffies_to_usecs(i32 %17)
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %20 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @jiffies_to_usecs(i32 %21)
  %23 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %24 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @jiffies_to_usecs(i32 %25)
  %27 = load %struct.tpm_chip*, %struct.tpm_chip** %7, align 8
  %28 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %26, i8* %32)
  ret i32 %33
}

declare dso_local %struct.tpm_chip* @to_tpm_chip(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @jiffies_to_usecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
