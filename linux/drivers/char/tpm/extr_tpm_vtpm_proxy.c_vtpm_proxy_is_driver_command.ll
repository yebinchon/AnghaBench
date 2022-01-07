; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_is_driver_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_is_driver_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_header = type { i32 }

@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @vtpm_proxy_is_driver_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpm_proxy_is_driver_command(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tpm_header*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = bitcast i32* %9 to %struct.tpm_header*
  store %struct.tpm_header* %10, %struct.tpm_header** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %16 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.tpm_header*, %struct.tpm_header** %8, align 8
  %23 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  switch i32 %25, label %27 [
    i32 129, label %26
  ]

26:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %36

27:                                               ; preds = %21
  br label %35

28:                                               ; preds = %14
  %29 = load %struct.tpm_header*, %struct.tpm_header** %8, align 8
  %30 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  switch i32 %32, label %34 [
    i32 128, label %33
  ]

33:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %36

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %27
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %33, %26, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
