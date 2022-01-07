; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/txx9/rbtx4938/extr_irq.c_toshiba_rbtx4938_irq_ioc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/txx9/rbtx4938/extr_irq.c_toshiba_rbtx4938_irq_ioc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@rbtx4938_imask_addr = common dso_local global i32 0, align 4
@RBTX4938_IRQ_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @toshiba_rbtx4938_irq_ioc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshiba_rbtx4938_irq_ioc_disable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i8, align 1
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load i32, i32* @rbtx4938_imask_addr, align 4
  %5 = call zeroext i8 @readb(i32 %4)
  store i8 %5, i8* %3, align 1
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RBTX4938_IRQ_IOC, align 4
  %10 = sub nsw i32 %8, %9
  %11 = shl i32 1, %10
  %12 = xor i32 %11, -1
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, %12
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %3, align 1
  %17 = load i8, i8* %3, align 1
  %18 = load i32, i32* @rbtx4938_imask_addr, align 4
  %19 = call i32 @writeb(i8 zeroext %17, i32 %18)
  %20 = call i32 (...) @mmiowb()
  ret void
}

declare dso_local zeroext i8 @readb(i32) #1

declare dso_local i32 @writeb(i8 zeroext, i32) #1

declare dso_local i32 @mmiowb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
