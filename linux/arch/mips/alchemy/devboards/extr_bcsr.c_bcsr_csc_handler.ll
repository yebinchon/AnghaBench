; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_bcsr.c_bcsr_csc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_bcsr.c_bcsr_csc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 }

@bcsr_virt = common dso_local global i64 0, align 8
@BCSR_REG_INTSTAT = common dso_local global i64 0, align 8
@bcsr_csc_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @bcsr_csc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcsr_csc_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct.irq_chip*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %5 = load i64, i64* @bcsr_virt, align 8
  %6 = load i64, i64* @BCSR_REG_INTSTAT, align 8
  %7 = add nsw i64 %5, %6
  %8 = call zeroext i16 @__raw_readw(i64 %7)
  store i16 %8, i16* %3, align 2
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %9)
  store %struct.irq_chip* %10, %struct.irq_chip** %4, align 8
  %11 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = call i32 @chained_irq_enter(%struct.irq_chip* %11, %struct.irq_desc* %12)
  %14 = load i64, i64* @bcsr_csc_base, align 8
  %15 = load i16, i16* %3, align 2
  %16 = call i64 @__ffs(i16 zeroext %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @generic_handle_irq(i64 %17)
  %19 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %20 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %21 = call i32 @chained_irq_exit(%struct.irq_chip* %19, %struct.irq_desc* %20)
  ret void
}

declare dso_local zeroext i16 @__raw_readw(i64) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @generic_handle_irq(i64) #1

declare dso_local i64 @__ffs(i16 zeroext) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
