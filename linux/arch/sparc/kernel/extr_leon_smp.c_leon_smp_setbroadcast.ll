; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_smp.c_leon_smp_setbroadcast.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_smp.c_leon_smp_setbroadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@leon3_irqctrl_regs = common dso_local global %struct.TYPE_2__* null, align 8
@LEON3_IRQMPSTATUS_BROADCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"######## !!!! The irqmp-ctrl must have broadcast enabled, smp wont work !!!!! ####### nr cpus: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"continue anyway\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @leon_smp_setbroadcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leon_smp_setbroadcast(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @leon3_irqctrl_regs, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = call i32 @LEON3_BYPASS_LOAD_PA(i32* %5)
  %7 = load i32, i32* @LEON3_IRQMPSTATUS_BROADCAST, align 4
  %8 = ashr i32 %6, %7
  %9 = and i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = call i32 (...) @leon_smp_nrcpus()
  %14 = call i32 (i8*, ...) @prom_printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 (...) @leon_smp_nrcpus()
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (...) @BUG()
  br label %21

19:                                               ; preds = %12
  %20 = call i32 (i8*, ...) @prom_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %27

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @leon3_irqctrl_regs, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @LEON_BYPASS_STORE_PA(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @LEON3_BYPASS_LOAD_PA(i32*) #1

declare dso_local i32 @prom_printf(i8*, ...) #1

declare dso_local i32 @leon_smp_nrcpus(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @LEON_BYPASS_STORE_PA(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
