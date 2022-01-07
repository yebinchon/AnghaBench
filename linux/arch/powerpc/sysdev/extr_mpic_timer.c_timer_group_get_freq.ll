; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_timer_group_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_timer_group_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.timer_group_priv = type { i32, i32 }

@FSL_GLOBAL_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fsl,mpic\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MPIC_TIMER_TCR_CLKDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.timer_group_priv*)* @timer_group_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_group_get_freq(%struct.device_node* %0, %struct.timer_group_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.timer_group_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.timer_group_priv* %1, %struct.timer_group_priv** %5, align 8
  %8 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %9 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FSL_GLOBAL_TIMER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %21 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %20, i32 0, i32 1
  %22 = call i32 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %21)
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = call i32 @of_node_put(%struct.device_node* %23)
  br label %25

25:                                               ; preds = %18, %14
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %28 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %52

34:                                               ; preds = %26
  %35 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %36 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FSL_GLOBAL_TIMER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i32, i32* @MPIC_TIMER_TCR_CLKDIV, align 4
  %43 = ashr i32 %42, 8
  %44 = shl i32 1, %43
  %45 = mul nsw i32 %44, 8
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %48 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %41, %34
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %31
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
