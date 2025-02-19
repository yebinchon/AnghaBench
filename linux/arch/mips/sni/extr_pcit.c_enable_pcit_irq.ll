; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sni/extr_pcit.c_enable_pcit_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sni/extr_pcit.c_enable_pcit_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@SNI_PCIT_INT_START = common dso_local global i32 0, align 4
@SNI_PCIT_INT_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @enable_pcit_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_pcit_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SNI_PCIT_INT_START, align 4
  %8 = sub nsw i32 %6, %7
  %9 = add nsw i32 %8, 24
  %10 = shl i32 1, %9
  store volatile i32 %10, i32* %3, align 4
  %11 = load volatile i32, i32* %3, align 4
  %12 = load i64, i64* @SNI_PCIT_INT_REG, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load volatile i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store volatile i32 %15, i32* %13, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
