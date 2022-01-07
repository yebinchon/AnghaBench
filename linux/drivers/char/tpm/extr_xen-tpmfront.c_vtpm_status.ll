; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_vtpm_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_vtpm_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VTPM_STATUS_IDLE = common dso_local global i32 0, align 4
@VTPM_STATUS_CANCELED = common dso_local global i32 0, align 4
@VTPM_STATUS_RESULT = common dso_local global i32 0, align 4
@VTPM_STATUS_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @vtpm_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpm_status(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.tpm_private*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %5 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %6 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %5, i32 0, i32 0
  %7 = call %struct.tpm_private* @dev_get_drvdata(i32* %6)
  store %struct.tpm_private* %7, %struct.tpm_private** %4, align 8
  %8 = load %struct.tpm_private*, %struct.tpm_private** %4, align 8
  %9 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %23 [
    i32 129, label %13
    i32 130, label %17
    i32 128, label %21
    i32 131, label %21
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @VTPM_STATUS_IDLE, align 4
  %15 = load i32, i32* @VTPM_STATUS_CANCELED, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @VTPM_STATUS_IDLE, align 4
  %19 = load i32, i32* @VTPM_STATUS_RESULT, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %1, %1
  %22 = load i32, i32* @VTPM_STATUS_RUNNING, align 4
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %21, %17, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.tpm_private* @dev_get_drvdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
