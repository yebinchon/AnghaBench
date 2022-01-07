; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_smp.c_stop_this_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_smp.c_stop_this_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPR_UPR = common dso_local global i32 0, align 4
@SPR_UPR_PMP = common dso_local global i32 0, align 4
@SPR_PMR = common dso_local global i32 0, align 4
@SPR_PMR_DME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @stop_this_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_this_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @smp_processor_id()
  %4 = call i32 @set_cpu_online(i32 %3, i32 0)
  %5 = call i32 (...) @local_irq_disable()
  %6 = load i32, i32* @SPR_UPR, align 4
  %7 = call i32 @mfspr(i32 %6)
  %8 = load i32, i32* @SPR_UPR_PMP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @SPR_PMR, align 4
  %13 = load i32, i32* @SPR_PMR, align 4
  %14 = call i32 @mfspr(i32 %13)
  %15 = load i32, i32* @SPR_PMR_DME, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @mtspr(i32 %12, i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  br label %19

19:                                               ; preds = %18, %19
  br label %19
}

declare dso_local i32 @set_cpu_online(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
