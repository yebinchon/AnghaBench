; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_numa.c_cpu_node_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_numa.c_cpu_node_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@node_possible_map = common dso_local global i32 0, align 4
@node_online_map = common dso_local global i32 0, align 4
@loongson_sysconf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@N_POSSIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NUMA: Discovered %d cpus on %d nodes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpu_node_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_node_probe() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @node_possible_map, align 4
  %3 = call i32 @nodes_clear(i32 %2)
  %4 = load i32, i32* @node_online_map, align 4
  %5 = call i32 @nodes_clear(i32 %4)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %16, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @loongson_sysconf, i32 0, i32 0), align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = call i32 (...) @num_online_nodes()
  %12 = load i32, i32* @N_POSSIBLE, align 4
  %13 = call i32 @node_set_state(i32 %11, i32 %12)
  %14 = call i32 (...) @num_online_nodes()
  %15 = call i32 @node_set_online(i32 %14)
  br label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %6

19:                                               ; preds = %6
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @loongson_sysconf, i32 0, i32 1), align 4
  %21 = call i32 (...) @num_online_nodes()
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @nodes_clear(i32) #1

declare dso_local i32 @node_set_state(i32, i32) #1

declare dso_local i32 @num_online_nodes(...) #1

declare dso_local i32 @node_set_online(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
