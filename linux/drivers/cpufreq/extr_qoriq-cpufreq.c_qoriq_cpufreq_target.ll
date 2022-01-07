; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qoriq-cpufreq.c_qoriq_cpufreq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qoriq-cpufreq.c_qoriq_cpufreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, %struct.cpu_data* }
%struct.cpu_data = type { %struct.TYPE_2__*, %struct.clk** }
%struct.TYPE_2__ = type { i64 }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @qoriq_cpufreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qoriq_cpufreq_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.cpu_data*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 1
  %9 = load %struct.cpu_data*, %struct.cpu_data** %8, align 8
  store %struct.cpu_data* %9, %struct.cpu_data** %6, align 8
  %10 = load %struct.cpu_data*, %struct.cpu_data** %6, align 8
  %11 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %10, i32 0, i32 1
  %12 = load %struct.clk**, %struct.clk*** %11, align 8
  %13 = load %struct.cpu_data*, %struct.cpu_data** %6, align 8
  %14 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.clk*, %struct.clk** %12, i64 %20
  %22 = load %struct.clk*, %struct.clk** %21, align 8
  store %struct.clk* %22, %struct.clk** %5, align 8
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %24 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.clk*, %struct.clk** %5, align 8
  %27 = call i32 @clk_set_parent(i32 %25, %struct.clk* %26)
  ret i32 %27
}

declare dso_local i32 @clk_set_parent(i32, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
