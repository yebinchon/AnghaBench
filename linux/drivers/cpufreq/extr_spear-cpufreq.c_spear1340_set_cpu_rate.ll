; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_spear-cpufreq.c_spear1340_set_cpu_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_spear-cpufreq.c_spear1340_set_cpu_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.clk = type { i32 }

@spear_cpufreq = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to get cpu's parent (sys) clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set sys clk rate to %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to set sys clk parent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @spear1340_set_cpu_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear1340_set_cpu_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spear_cpufreq, i32 0, i32 0), align 4
  %9 = call %struct.clk* @clk_get_parent(i32 %8)
  store %struct.clk* %9, %struct.clk** %6, align 8
  %10 = load %struct.clk*, %struct.clk** %6, align 8
  %11 = call i64 @IS_ERR(%struct.clk* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.clk*, %struct.clk** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.clk* %15)
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @clk_set_rate(%struct.clk* %18, i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.clk*, %struct.clk** %6, align 8
  %29 = load %struct.clk*, %struct.clk** %4, align 8
  %30 = call i32 @clk_set_parent(%struct.clk* %28, %struct.clk* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33, %23, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i64) #1

declare dso_local i32 @clk_set_parent(%struct.clk*, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
