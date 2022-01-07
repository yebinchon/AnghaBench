; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_topology.c_show_shared_cpu_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_topology.c_show_shared_cpu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_info = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_info*, i8*)* @show_shared_cpu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_shared_cpu_map(%struct.cache_info* %0, i8* %1) #0 {
  %3 = alloca %struct.cache_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_info* %0, %struct.cache_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.cache_info*, %struct.cache_info** %3, align 8
  %7 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %6, i32 0, i32 0
  %8 = load i32, i32* @cpu_online_mask, align 4
  %9 = call i32 @cpumask_and(i32* %5, i32* %7, i32 %8)
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call i32 @cpumask_pr_args(i32* %5)
  %13 = call i32 @scnprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  ret i32 %13
}

declare dso_local i32 @cpumask_and(i32*, i32*, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @cpumask_pr_args(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
