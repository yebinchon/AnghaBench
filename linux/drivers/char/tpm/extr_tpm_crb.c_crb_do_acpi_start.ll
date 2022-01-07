; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c_crb_do_acpi_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c_crb_do_acpi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@crb_acpi_start_guid = common dso_local global i32 0, align 4
@CRB_ACPI_START_REVISION_ID = common dso_local global i32 0, align 4
@CRB_ACPI_START_INDEX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @crb_do_acpi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crb_do_acpi_start(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %6 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %7 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CRB_ACPI_START_REVISION_ID, align 4
  %10 = load i32, i32* @CRB_ACPI_START_INDEX, align 4
  %11 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %8, i32* @crb_acpi_start_guid, i32 %9, i32 %10, i32* null)
  store %union.acpi_object* %11, %union.acpi_object** %4, align 8
  %12 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %13 = icmp ne %union.acpi_object* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %19 = bitcast %union.acpi_object* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ 0, %23 ], [ %26, %24 ]
  store i32 %28, i32* %5, align 4
  %29 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %30 = call i32 @ACPI_FREE(%union.acpi_object* %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %14
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
