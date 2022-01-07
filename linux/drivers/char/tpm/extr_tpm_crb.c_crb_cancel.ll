; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c_crb_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c_crb_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.crb_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CRB_CANCEL_INVOKE = common dso_local global i32 0, align 4
@ACPI_TPM2_START_METHOD = common dso_local global i64 0, align 8
@ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"ACPI Start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpm_chip*)* @crb_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crb_cancel(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca %struct.crb_priv*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %4 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %5 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %4, i32 0, i32 0
  %6 = call %struct.crb_priv* @dev_get_drvdata(i32* %5)
  store %struct.crb_priv* %6, %struct.crb_priv** %3, align 8
  %7 = load i32, i32* @CRB_CANCEL_INVOKE, align 4
  %8 = load %struct.crb_priv*, %struct.crb_priv** %3, align 8
  %9 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @iowrite32(i32 %7, i32* %11)
  %13 = load %struct.crb_priv*, %struct.crb_priv** %3, align 8
  %14 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ACPI_TPM2_START_METHOD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.crb_priv*, %struct.crb_priv** %3, align 8
  %20 = getelementptr inbounds %struct.crb_priv, %struct.crb_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ACPI_TPM2_COMMAND_BUFFER_WITH_START_METHOD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18, %1
  %25 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %26 = call i64 @crb_do_acpi_start(%struct.tpm_chip* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %30 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %24, %18
  ret void
}

declare dso_local %struct.crb_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i64 @crb_do_acpi_start(%struct.tpm_chip*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
