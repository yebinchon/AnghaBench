; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_idle.c_arch_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_idle.c_arch_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_cpu_idle() #0 {
  %1 = call i32 (...) @ppc64_runlatch_off()
  %2 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %3 = icmp ne i32 (...)* %2, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %6 = call i32 (...) %5()
  %7 = call i64 (...) @irqs_disabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call i32 (...) @local_irq_enable()
  br label %11

11:                                               ; preds = %9, %4
  br label %16

12:                                               ; preds = %0
  %13 = call i32 (...) @local_irq_enable()
  %14 = call i32 (...) @HMT_low()
  %15 = call i32 (...) @HMT_very_low()
  br label %16

16:                                               ; preds = %12, %11
  %17 = call i32 (...) @HMT_medium()
  %18 = call i32 (...) @ppc64_runlatch_on()
  ret void
}

declare dso_local i32 @ppc64_runlatch_off(...) #1

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @HMT_low(...) #1

declare dso_local i32 @HMT_very_low(...) #1

declare dso_local i32 @HMT_medium(...) #1

declare dso_local i32 @ppc64_runlatch_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
