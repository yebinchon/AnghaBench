; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_jornada720_ssp.c_jornada_ssp_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_jornada720_ssp.c_jornada_ssp_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_GPIO25 = common dso_local global i32 0, align 4
@GPSR = common dso_local global i32 0, align 4
@jornada_ssp_lock = common dso_local global i32 0, align 4
@jornada_ssp_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jornada_ssp_end() #0 {
  %1 = load i32, i32* @GPIO_GPIO25, align 4
  store i32 %1, i32* @GPSR, align 4
  %2 = load i32, i32* @jornada_ssp_flags, align 4
  %3 = call i32 @spin_unlock_irqrestore(i32* @jornada_ssp_lock, i32 %2)
  ret void
}

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
