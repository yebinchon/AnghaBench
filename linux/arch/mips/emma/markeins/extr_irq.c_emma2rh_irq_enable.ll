; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/emma/markeins/extr_irq.c_emma2rh_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/emma/markeins/extr_irq.c_emma2rh_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@EMMA2RH_IRQ_BASE = common dso_local global i32 0, align 4
@EMMA2RH_BHIF_INT_EN_0 = common dso_local global i32 0, align 4
@EMMA2RH_BHIF_INT_EN_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @emma2rh_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emma2rh_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EMMA2RH_IRQ_BASE, align 4
  %11 = sub i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @EMMA2RH_BHIF_INT_EN_0, align 4
  %13 = load i32, i32* @EMMA2RH_BHIF_INT_EN_1, align 4
  %14 = load i32, i32* @EMMA2RH_BHIF_INT_EN_0, align 4
  %15 = sub i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = udiv i32 %16, 32
  %18 = mul i32 %15, %17
  %19 = add i32 %12, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @emma2rh_in32(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = urem i32 %22, 32
  %24 = shl i32 1, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @emma2rh_out32(i32 %25, i32 %28)
  ret void
}

declare dso_local i32 @emma2rh_in32(i32) #1

declare dso_local i32 @emma2rh_out32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
