; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_unseal_trusted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_unseal_trusted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.trusted_key_payload = type { i32 }
%struct.trusted_key_options = type { i32 }

@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_unseal_trusted(%struct.tpm_chip* %0, %struct.trusted_key_payload* %1, %struct.trusted_key_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca %struct.trusted_key_payload*, align 8
  %7 = alloca %struct.trusted_key_options*, align 8
  %8 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store %struct.trusted_key_payload* %1, %struct.trusted_key_payload** %6, align 8
  store %struct.trusted_key_options* %2, %struct.trusted_key_options** %7, align 8
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %10 = call %struct.tpm_chip* @tpm_find_get_ops(%struct.tpm_chip* %9)
  store %struct.tpm_chip* %10, %struct.tpm_chip** %5, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %12 = icmp ne %struct.tpm_chip* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %15 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %31

23:                                               ; preds = %13
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %25 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %26 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %27 = call i32 @tpm2_unseal_trusted(%struct.tpm_chip* %24, %struct.trusted_key_payload* %25, %struct.trusted_key_options* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %29 = call i32 @tpm_put_ops(%struct.tpm_chip* %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.tpm_chip* @tpm_find_get_ops(%struct.tpm_chip*) #1

declare dso_local i32 @tpm2_unseal_trusted(%struct.tpm_chip*, %struct.trusted_key_payload*, %struct.trusted_key_options*) #1

declare dso_local i32 @tpm_put_ops(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
