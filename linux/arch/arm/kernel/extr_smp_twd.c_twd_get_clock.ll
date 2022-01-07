; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp_twd.c_twd_get_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp_twd.c_twd_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@twd_clk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"smp_twd\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"smp_twd: clock not found %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"smp_twd: clock failed to prepare+enable: %d\0A\00", align 1
@twd_timer_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @twd_get_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twd_get_clock(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %4 = load %struct.device_node*, %struct.device_node** %2, align 8
  %5 = icmp ne %struct.device_node* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.device_node*, %struct.device_node** %2, align 8
  %8 = call i32 @of_clk_get(%struct.device_node* %7, i32 0)
  store i32 %8, i32* @twd_clk, align 4
  br label %11

9:                                                ; preds = %1
  %10 = call i32 @clk_get_sys(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %10, i32* @twd_clk, align 4
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i32, i32* @twd_clk, align 4
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @twd_clk, align 4
  %17 = call i64 @PTR_ERR(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %33

20:                                               ; preds = %11
  %21 = load i32, i32* @twd_clk, align 4
  %22 = call i32 @clk_prepare_enable(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @twd_clk, align 4
  %29 = call i32 @clk_put(i32 %28)
  br label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @twd_clk, align 4
  %32 = call i32 @clk_get_rate(i32 %31)
  store i32 %32, i32* @twd_timer_rate, align 4
  br label %33

33:                                               ; preds = %30, %25, %15
  ret void
}

declare dso_local i32 @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i32 @clk_get_sys(i8*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
