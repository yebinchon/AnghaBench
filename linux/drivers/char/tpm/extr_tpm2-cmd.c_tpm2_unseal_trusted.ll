; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_unseal_trusted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_unseal_trusted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.trusted_key_payload = type { i32 }
%struct.trusted_key_options = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm2_unseal_trusted(%struct.tpm_chip* %0, %struct.trusted_key_payload* %1, %struct.trusted_key_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca %struct.trusted_key_payload*, align 8
  %7 = alloca %struct.trusted_key_options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store %struct.trusted_key_payload* %1, %struct.trusted_key_payload** %6, align 8
  store %struct.trusted_key_options* %2, %struct.trusted_key_options** %7, align 8
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %11 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %12 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %13 = call i32 @tpm2_load_cmd(%struct.tpm_chip* %10, %struct.trusted_key_payload* %11, %struct.trusted_key_options* %12, i32* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %28

18:                                               ; preds = %3
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %20 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %6, align 8
  %21 = load %struct.trusted_key_options*, %struct.trusted_key_options** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @tpm2_unseal_cmd(%struct.tpm_chip* %19, %struct.trusted_key_payload* %20, %struct.trusted_key_options* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @tpm2_flush_context(%struct.tpm_chip* %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @tpm2_load_cmd(%struct.tpm_chip*, %struct.trusted_key_payload*, %struct.trusted_key_options*, i32*) #1

declare dso_local i32 @tpm2_unseal_cmd(%struct.tpm_chip*, %struct.trusted_key_payload*, %struct.trusted_key_options*, i32) #1

declare dso_local i32 @tpm2_flush_context(%struct.tpm_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
