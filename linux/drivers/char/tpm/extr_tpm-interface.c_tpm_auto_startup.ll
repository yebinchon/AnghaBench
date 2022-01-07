; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_auto_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_auto_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TPM_OPS_AUTO_STARTUP = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_auto_startup(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %5 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %6 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TPM_OPS_AUTO_STARTUP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %16 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %23 = call i32 @tpm2_auto_startup(%struct.tpm_chip* %22)
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %14
  %25 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %26 = call i32 @tpm1_auto_startup(%struct.tpm_chip* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @tpm2_auto_startup(%struct.tpm_chip*) #1

declare dso_local i32 @tpm1_auto_startup(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
