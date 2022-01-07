; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_update_duty_cycle_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_update_duty_cycle_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, %struct.TYPE_2__*, %struct.clk_duty }
%struct.TYPE_2__ = type { i32 (i32, %struct.clk_duty*)* }
%struct.clk_duty = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_core*)* @clk_core_update_duty_cycle_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_core_update_duty_cycle_nolock(%struct.clk_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca %struct.clk_duty*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_core* %0, %struct.clk_core** %3, align 8
  %6 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %7 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %6, i32 0, i32 2
  store %struct.clk_duty* %7, %struct.clk_duty** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %9 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32, %struct.clk_duty*)*, i32 (i32, %struct.clk_duty*)** %11, align 8
  %13 = icmp ne i32 (i32, %struct.clk_duty*)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %16 = call i32 @clk_core_update_duty_cycle_parent_nolock(%struct.clk_core* %15)
  store i32 %16, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %19 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, %struct.clk_duty*)*, i32 (i32, %struct.clk_duty*)** %21, align 8
  %23 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %24 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.clk_duty*, %struct.clk_duty** %4, align 8
  %27 = call i32 %22(i32 %25, %struct.clk_duty* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %48

31:                                               ; preds = %17
  %32 = load %struct.clk_duty*, %struct.clk_duty** %4, align 8
  %33 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.clk_duty*, %struct.clk_duty** %4, align 8
  %38 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.clk_duty*, %struct.clk_duty** %4, align 8
  %41 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36, %31
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %48

47:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %52

48:                                               ; preds = %44, %30
  %49 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %50 = call i32 @clk_core_reset_duty_cycle_nolock(%struct.clk_core* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %47, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @clk_core_update_duty_cycle_parent_nolock(%struct.clk_core*) #1

declare dso_local i32 @clk_core_reset_duty_cycle_nolock(%struct.clk_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
