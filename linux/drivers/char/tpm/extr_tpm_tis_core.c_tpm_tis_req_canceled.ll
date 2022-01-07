; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_req_canceled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_req_canceled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_tis_data = type { i32 }

@TPM_STS_VALID = common dso_local global i32 0, align 4
@TPM_STS_COMMAND_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32)* @tpm_tis_req_canceled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_req_canceled(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_tis_data*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %8 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %7, i32 0, i32 0
  %9 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %8)
  store %struct.tpm_tis_data* %9, %struct.tpm_tis_data** %6, align 8
  %10 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %6, align 8
  %11 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %33 [
    i32 128, label %13
    i32 129, label %26
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TPM_STS_VALID, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TPM_STS_VALID, align 4
  %20 = load i32, i32* @TPM_STS_COMMAND_READY, align 4
  %21 = or i32 %19, %20
  %22 = icmp eq i32 %18, %21
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i1 [ true, %13 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @TPM_STS_VALID, align 4
  %29 = load i32, i32* @TPM_STS_COMMAND_READY, align 4
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %27, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @TPM_STS_COMMAND_READY, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %26, %23
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
