; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_nsc.c_tpm_nsc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_nsc.c_tpm_nsc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tpm_chip = type { %struct.device }
%struct.tpm_nsc_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @tpm_nsc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpm_nsc_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.tpm_nsc_priv*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call i8* @dev_get_drvdata(%struct.device* %5)
  %7 = bitcast i8* %6 to %struct.tpm_chip*
  store %struct.tpm_chip* %7, %struct.tpm_chip** %3, align 8
  %8 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %9 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %8, i32 0, i32 0
  %10 = call i8* @dev_get_drvdata(%struct.device* %9)
  %11 = bitcast i8* %10 to %struct.tpm_nsc_priv*
  store %struct.tpm_nsc_priv* %11, %struct.tpm_nsc_priv** %4, align 8
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %13 = call i32 @tpm_chip_unregister(%struct.tpm_chip* %12)
  %14 = load %struct.tpm_nsc_priv*, %struct.tpm_nsc_priv** %4, align 8
  %15 = getelementptr inbounds %struct.tpm_nsc_priv, %struct.tpm_nsc_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @release_region(i32 %16, i32 2)
  ret void
}

declare dso_local i8* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tpm_chip_unregister(%struct.tpm_chip*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
