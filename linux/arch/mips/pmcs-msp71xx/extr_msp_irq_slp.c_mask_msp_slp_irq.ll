; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pmcs-msp71xx/extr_msp_irq_slp.c_mask_msp_slp_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pmcs-msp71xx/extr_msp_irq_slp.c_mask_msp_slp_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@MSP_PER_INTBASE = common dso_local global i32 0, align 4
@MSP_SLP_INTBASE = common dso_local global i32 0, align 4
@SLP_INT_MSK_REG = common dso_local global i32* null, align 8
@PER_INT_MSK_REG = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @mask_msp_slp_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mask_msp_slp_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MSP_PER_INTBASE, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MSP_SLP_INTBASE, align 4
  %13 = sub i32 %11, %12
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = load i32*, i32** @SLP_INT_MSK_REG, align 8
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %15
  store i32 %18, i32* %16, align 4
  br label %28

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MSP_PER_INTBASE, align 4
  %22 = sub i32 %20, %21
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load i32*, i32** @PER_INT_MSK_REG, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %24
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %19, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
