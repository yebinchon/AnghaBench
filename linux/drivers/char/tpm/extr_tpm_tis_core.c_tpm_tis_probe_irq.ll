; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_probe_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_probe_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_tis_data = type { i32 }

@CONFIG_X86 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpm_chip*, i32)* @tpm_tis_probe_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpm_tis_probe_irq(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_tis_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %10 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %9, i32 0, i32 0
  %11 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %10)
  store %struct.tpm_tis_data* %11, %struct.tpm_tis_data** %5, align 8
  %12 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %5, align 8
  %13 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %5, align 8
  %14 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @TPM_INT_VECTOR(i32 %15)
  %17 = call i32 @tpm_tis_read8(%struct.tpm_tis_data* %12, i32 %16, i32* %6)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %53

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @CONFIG_X86, align 4
  %26 = call i64 @IS_ENABLED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  store i32 3, i32* %7, align 4
  br label %29

29:                                               ; preds = %40, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 15
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @tpm_tis_probe_irq_single(%struct.tpm_chip* %33, i32 %34, i32 0, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %53

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %29

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %24
  br label %53

45:                                               ; preds = %21
  %46 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @tpm_tis_probe_irq_single(%struct.tpm_chip* %46, i32 %47, i32 0, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %20, %38, %51, %52, %44
  ret void
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_tis_read8(%struct.tpm_tis_data*, i32, i32*) #1

declare dso_local i32 @TPM_INT_VECTOR(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @tpm_tis_probe_irq_single(%struct.tpm_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
