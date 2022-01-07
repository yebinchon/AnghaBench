; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_chip_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_chip_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_chip_start(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %5 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %6 = call i32 @tpm_clk_enable(%struct.tpm_chip* %5)
  %7 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %8 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %13 = call i32 @tpm_request_locality(%struct.tpm_chip* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %18 = call i32 @tpm_clk_disable(%struct.tpm_chip* %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %33

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %23 = call i32 @tpm_cmd_ready(%struct.tpm_chip* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %28 = call i32 @tpm_relinquish_locality(%struct.tpm_chip* %27)
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %30 = call i32 @tpm_clk_disable(%struct.tpm_chip* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %26, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @tpm_clk_enable(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_request_locality(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_clk_disable(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_cmd_ready(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_relinquish_locality(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
