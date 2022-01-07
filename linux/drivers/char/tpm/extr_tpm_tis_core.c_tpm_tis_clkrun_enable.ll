; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_clkrun_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_clkrun_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_tis_data = type { i32, i64 }

@CONFIG_X86 = common dso_local global i32 0, align 4
@LPC_CNTRL_OFFSET = common dso_local global i64 0, align 8
@LPC_CLKRUN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpm_chip*, i32)* @tpm_tis_clkrun_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpm_tis_clkrun_enable(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_tis_data*, align 8
  %6 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %8 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %7, i32 0, i32 0
  %9 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %8)
  store %struct.tpm_tis_data* %9, %struct.tpm_tis_data** %5, align 8
  %10 = load i32, i32* @CONFIG_X86, align 4
  %11 = call i32 @IS_ENABLED(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = call i32 (...) @is_bsw()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %5, align 8
  %18 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %13, %2
  br label %82

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %22
  %26 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %5, align 8
  %27 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %5, align 8
  %31 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %82

35:                                               ; preds = %25
  %36 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %5, align 8
  %37 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LPC_CNTRL_OFFSET, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @ioread32(i64 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @LPC_CLKRUN_EN, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %5, align 8
  %48 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LPC_CNTRL_OFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @iowrite32(i32 %46, i64 %51)
  %53 = call i32 @outb(i32 204, i32 128)
  br label %82

54:                                               ; preds = %22
  %55 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %5, align 8
  %56 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %5, align 8
  %60 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %82

64:                                               ; preds = %54
  %65 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %5, align 8
  %66 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LPC_CNTRL_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @ioread32(i64 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @LPC_CLKRUN_EN, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %5, align 8
  %76 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @LPC_CNTRL_OFFSET, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @iowrite32(i32 %74, i64 %79)
  %81 = call i32 @outb(i32 204, i32 128)
  br label %82

82:                                               ; preds = %21, %34, %63, %64, %35
  ret void
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @is_bsw(...) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
