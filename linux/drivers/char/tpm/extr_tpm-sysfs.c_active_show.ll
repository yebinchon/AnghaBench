; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-sysfs.c_active_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-sysfs.c_active_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tpm_chip = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TPM_CAP_FLAG_PERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"attempting to determine the permanent active state\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @active_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @active_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tpm_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.tpm_chip* @to_tpm_chip(%struct.device* %11)
  store %struct.tpm_chip* %12, %struct.tpm_chip** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %8, align 8
  %14 = call i64 @tpm_try_get_ops(%struct.tpm_chip* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %8, align 8
  %19 = load i32, i32* @TPM_CAP_FLAG_PERM, align 4
  %20 = call i64 @tpm1_getcap(%struct.tpm_chip* %18, i32 %19, %struct.TYPE_5__* %10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %32

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %23, %22
  %33 = load %struct.tpm_chip*, %struct.tpm_chip** %8, align 8
  %34 = call i32 @tpm_put_ops(%struct.tpm_chip* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.tpm_chip* @to_tpm_chip(%struct.device*) #1

declare dso_local i64 @tpm_try_get_ops(%struct.tpm_chip*) #1

declare dso_local i64 @tpm1_getcap(%struct.tpm_chip*, i32, %struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @tpm_put_ops(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
