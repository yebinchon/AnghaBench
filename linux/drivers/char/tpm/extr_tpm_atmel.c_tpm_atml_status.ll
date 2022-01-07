; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_atmel.c_tpm_atml_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_atmel.c_tpm_atml_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_atmel_priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @tpm_atml_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_atml_status(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca %struct.tpm_atmel_priv*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %4 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %5 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %4, i32 0, i32 0
  %6 = call %struct.tpm_atmel_priv* @dev_get_drvdata(i32* %5)
  store %struct.tpm_atmel_priv* %6, %struct.tpm_atmel_priv** %3, align 8
  %7 = load %struct.tpm_atmel_priv*, %struct.tpm_atmel_priv** %3, align 8
  %8 = getelementptr inbounds %struct.tpm_atmel_priv, %struct.tpm_atmel_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i32 @ioread8(i64 %10)
  ret i32 %11
}

declare dso_local %struct.tpm_atmel_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ioread8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
