; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_setup_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_setup_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tpm_private = type { %struct.tpm_chip*, i32 }
%struct.tpm_chip = type { i32 }

@tpm_vtpm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tpm_private*)* @setup_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_chip(%struct.device* %0, %struct.tpm_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tpm_private*, align 8
  %6 = alloca %struct.tpm_chip*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tpm_private* %1, %struct.tpm_private** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.tpm_chip* @tpmm_chip_alloc(%struct.device* %7, i32* @tpm_vtpm)
  store %struct.tpm_chip* %8, %struct.tpm_chip** %6, align 8
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %10 = call i64 @IS_ERR(%struct.tpm_chip* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.tpm_chip* %13)
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %17 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %16, i32 0, i32 1
  %18 = call i32 @init_waitqueue_head(i32* %17)
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %20 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %21 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %20, i32 0, i32 0
  store %struct.tpm_chip* %19, %struct.tpm_chip** %21, align 8
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %23 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %22, i32 0, i32 0
  %24 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %25 = call i32 @dev_set_drvdata(i32* %23, %struct.tpm_private* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %15, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.tpm_chip* @tpmm_chip_alloc(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tpm_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.tpm_chip*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.tpm_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
