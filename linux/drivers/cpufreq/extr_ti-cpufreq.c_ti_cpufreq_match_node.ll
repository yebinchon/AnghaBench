; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ti-cpufreq.c_ti_cpufreq_match_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ti-cpufreq.c_ti_cpufreq_match_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device_id = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ti_cpufreq_of_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.of_device_id* ()* @ti_cpufreq_match_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.of_device_id* @ti_cpufreq_match_node() #0 {
  %1 = alloca %struct.device_node*, align 8
  %2 = alloca %struct.of_device_id*, align 8
  %3 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %3, %struct.device_node** %1, align 8
  %4 = load i32, i32* @ti_cpufreq_of_match, align 4
  %5 = load %struct.device_node*, %struct.device_node** %1, align 8
  %6 = call %struct.of_device_id* @of_match_node(i32 %4, %struct.device_node* %5)
  store %struct.of_device_id* %6, %struct.of_device_id** %2, align 8
  %7 = load %struct.device_node*, %struct.device_node** %1, align 8
  %8 = call i32 @of_node_put(%struct.device_node* %7)
  %9 = load %struct.of_device_id*, %struct.of_device_id** %2, align 8
  ret %struct.of_device_id* %9
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
