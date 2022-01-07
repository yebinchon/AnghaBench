; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_64.c_map_prom_timers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_64.c_map_prom_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun5_timer = type { i32 }
%struct.device_node = type { %struct.device_node*, %struct.device_node* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"counter-timer\00", align 1
@prom_timers = common dso_local global %struct.sun5_timer* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"PROM does not have timer mapped, trying to continue.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @map_prom_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_prom_timers() #0 {
  %1 = alloca %struct.device_node*, align 8
  %2 = alloca i32*, align 8
  %3 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %3, %struct.device_node** %1, align 8
  %4 = load %struct.device_node*, %struct.device_node** %1, align 8
  %5 = getelementptr inbounds %struct.device_node, %struct.device_node* %4, i32 0, i32 1
  %6 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %6, %struct.device_node** %1, align 8
  br label %7

7:                                                ; preds = %15, %0
  %8 = load %struct.device_node*, %struct.device_node** %1, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load %struct.device_node*, %struct.device_node** %1, align 8
  %12 = call i64 @of_node_name_eq(%struct.device_node* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %19

15:                                               ; preds = %10
  %16 = load %struct.device_node*, %struct.device_node** %1, align 8
  %17 = getelementptr inbounds %struct.device_node, %struct.device_node* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %1, align 8
  br label %7

19:                                               ; preds = %14, %7
  %20 = load %struct.device_node*, %struct.device_node** %1, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store %struct.sun5_timer* null, %struct.sun5_timer** @prom_timers, align 8
  br label %36

23:                                               ; preds = %19
  %24 = load %struct.device_node*, %struct.device_node** %1, align 8
  %25 = call i32* @of_get_property(%struct.device_node* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %25, i32** %2, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call i32 @prom_printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sun5_timer* null, %struct.sun5_timer** @prom_timers, align 8
  br label %36

30:                                               ; preds = %23
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.sun5_timer*
  store %struct.sun5_timer* %35, %struct.sun5_timer** @prom_timers, align 8
  br label %36

36:                                               ; preds = %30, %28, %22
  ret void
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @prom_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
