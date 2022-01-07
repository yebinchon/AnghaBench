; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_rdt_get_mon_l3_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_rdt_get_mon_l3_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rdt_resource = type { i32, i32, i32, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@resctrl_cqm_threshold = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdt_get_mon_l3_config(%struct.rdt_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdt_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rdt_resource* %0, %struct.rdt_resource** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %8 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %9 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 4
  %11 = add i32 %10, 1
  %12 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %13 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = mul i32 %14, 1024
  %16 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %17 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = udiv i32 %15, %18
  store i32 %19, i32* @resctrl_cqm_threshold, align 4
  %20 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %21 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @resctrl_cqm_threshold, align 4
  %24 = udiv i32 %23, %22
  store i32 %24, i32* @resctrl_cqm_threshold, align 4
  %25 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %26 = call i32 @dom_data_init(%struct.rdt_resource* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %1
  %32 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %33 = call i32 @l3_mon_evt_init(%struct.rdt_resource* %32)
  %34 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %35 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %34, i32 0, i32 2
  store i32 1, i32* %35, align 4
  %36 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %37 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %29
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @dom_data_init(%struct.rdt_resource*) #1

declare dso_local i32 @l3_mon_evt_init(%struct.rdt_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
