; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_kirkwood-cpufreq.c_kirkwood_cpufreq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_kirkwood-cpufreq.c_kirkwood_cpufreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.cpufreq_policy = type { i32 }

@kirkwood_freq_table = common dso_local global %struct.TYPE_4__* null, align 8
@priv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@CPU_SW_INT_BLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @kirkwood_cpufreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_cpufreq_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kirkwood_freq_table, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = call i32 (...) @local_irq_disable()
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 0), align 4
  %15 = call i64 @readl_relaxed(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* @CPU_SW_INT_BLK, align 8
  %17 = load i64, i64* %6, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 0), align 4
  %21 = call i32 @writel_relaxed(i64 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %31 [
    i32 129, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 2), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 3), align 4
  %26 = call i32 @clk_set_parent(i32 %24, i32 %25)
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 2), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 1), align 4
  %30 = call i32 @clk_set_parent(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %2, %27, %23
  %32 = call i32 (...) @cpu_do_idle()
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 0), align 4
  %34 = call i64 @readl_relaxed(i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* @CPU_SW_INT_BLK, align 8
  %36 = xor i64 %35, -1
  %37 = load i64, i64* %6, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 0), align 4
  %41 = call i32 @writel_relaxed(i64 %39, i32 %40)
  %42 = call i32 (...) @local_irq_enable()
  ret i32 0
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @cpu_do_idle(...) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
