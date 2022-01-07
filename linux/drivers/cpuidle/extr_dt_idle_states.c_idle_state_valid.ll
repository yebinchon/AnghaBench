; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_dt_idle_states.c_idle_state_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_dt_idle_states.c_idle_state_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cpu-idle-states\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32, i32*)* @idle_state_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idle_state_valid(%struct.device_node* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @cpumask_first(i32* %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @cpumask_next(i32 %12, i32* %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %38, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @nr_cpu_ids, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.device_node* @of_cpu_device_node_get(i32 %20)
  store %struct.device_node* %21, %struct.device_node** %8, align 8
  %22 = load %struct.device_node*, %struct.device_node** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23)
  store %struct.device_node* %24, %struct.device_node** %9, align 8
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = load %struct.device_node*, %struct.device_node** %9, align 8
  %27 = icmp ne %struct.device_node* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %19
  %30 = load %struct.device_node*, %struct.device_node** %9, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  %32 = load %struct.device_node*, %struct.device_node** %8, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %42

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @cpumask_next(i32 %39, i32* %40)
  store i32 %41, i32* %7, align 4
  br label %15

42:                                               ; preds = %36, %15
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local i32 @cpumask_next(i32, i32*) #1

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local %struct.device_node* @of_cpu_device_node_get(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
