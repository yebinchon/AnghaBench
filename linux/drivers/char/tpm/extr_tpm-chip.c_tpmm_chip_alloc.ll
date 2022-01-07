; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpmm_chip_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpmm_chip_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.device = type { i32 }
%struct.tpm_class_ops = type { i32 }

@put_device = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tpm_chip* @tpmm_chip_alloc(%struct.device* %0, %struct.tpm_class_ops* %1) #0 {
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tpm_class_ops*, align 8
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tpm_class_ops* %1, %struct.tpm_class_ops** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load %struct.tpm_class_ops*, %struct.tpm_class_ops** %5, align 8
  %10 = call %struct.tpm_chip* @tpm_chip_alloc(%struct.device* %8, %struct.tpm_class_ops* %9)
  store %struct.tpm_chip* %10, %struct.tpm_chip** %6, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %12 = call i64 @IS_ERR(%struct.tpm_chip* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  store %struct.tpm_chip* %15, %struct.tpm_chip** %3, align 8
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i64, i64* @put_device, align 8
  %19 = inttoptr i64 %18 to void (i8*)*
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %21 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %20, i32 0, i32 0
  %22 = call i32 @devm_add_action_or_reset(%struct.device* %17, void (i8*)* %19, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.tpm_chip* @ERR_PTR(i32 %26)
  store %struct.tpm_chip* %27, %struct.tpm_chip** %3, align 8
  br label %33

28:                                               ; preds = %16
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %31 = call i32 @dev_set_drvdata(%struct.device* %29, %struct.tpm_chip* %30)
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  store %struct.tpm_chip* %32, %struct.tpm_chip** %3, align 8
  br label %33

33:                                               ; preds = %28, %25, %14
  %34 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  ret %struct.tpm_chip* %34
}

declare dso_local %struct.tpm_chip* @tpm_chip_alloc(%struct.device*, %struct.tpm_class_ops*) #1

declare dso_local i64 @IS_ERR(%struct.tpm_chip*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, void (i8*)*, i32*) #1

declare dso_local %struct.tpm_chip* @ERR_PTR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
