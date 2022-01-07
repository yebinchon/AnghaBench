; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal.c_opal_configure_cores.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal.c_opal_configure_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@OPAL_REINIT_CPUS_HILE_LE = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@OPAL_REINIT_CPUS_MMU_HASH = common dso_local global i32 0, align 4
@OPAL_REINIT_CPUS_MMU_RADIX = common dso_local global i32 0, align 4
@cur_cpu_spec = common dso_local global %struct.TYPE_2__* null, align 8
@OPAL_REINIT_CPUS_HILE_BE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opal_configure_cores() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @OPAL_REINIT_CPUS_HILE_LE, align 4
  %3 = load i32, i32* %1, align 4
  %4 = or i32 %3, %2
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %6 = call i64 @early_cpu_has_feature(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %0
  %9 = load i32, i32* @OPAL_REINIT_CPUS_MMU_HASH, align 4
  %10 = load i32, i32* %1, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = call i64 (...) @early_radix_enabled()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i32, i32* @OPAL_REINIT_CPUS_MMU_RADIX, align 4
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %14, %8
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @opal_reinit_cpus(i32 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (...)*, i32 (...)** %23, align 8
  %25 = icmp ne i32 (...)* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = call i32 (...) %29()
  br label %31

31:                                               ; preds = %26, %19
  ret void
}

declare dso_local i64 @early_cpu_has_feature(i32) #1

declare dso_local i64 @early_radix_enabled(...) #1

declare dso_local i32 @opal_reinit_cpus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
