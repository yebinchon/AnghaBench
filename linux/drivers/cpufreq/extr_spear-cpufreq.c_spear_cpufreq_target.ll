; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_spear-cpufreq.c_spear_cpufreq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_spear-cpufreq.c_spear_cpufreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.clk*, %struct.TYPE_3__* }
%struct.clk = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cpufreq_policy = type { i32 }

@spear_cpufreq = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"st,spear1340\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to get src clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"clk_round_rate failed for cpu src clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"CPU Freq: cpu clk_set_rate failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @spear_cpufreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_cpufreq_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %9, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear_cpufreq, i32 0, i32 1), align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 1000
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  %18 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.clk* @spear1340_cpu_get_possible_parent(i64 %21)
  store %struct.clk* %22, %struct.clk** %7, align 8
  %23 = load %struct.clk*, %struct.clk** %7, align 8
  %24 = call i64 @IS_ERR(%struct.clk* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.clk*, %struct.clk** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.clk* %28)
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %20
  store i32 2, i32* %9, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear_cpufreq, i32 0, i32 0), align 8
  store %struct.clk* %32, %struct.clk** %7, align 8
  br label %33

33:                                               ; preds = %31, %30
  %34 = load %struct.clk*, %struct.clk** %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %35, %37
  %39 = call i64 @clk_round_rate(%struct.clk* %34, i64 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %65

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.clk*, %struct.clk** %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spear1340_set_cpu_rate(%struct.clk* %50, i64 %51)
  store i32 %52, i32* %8, align 4
  br label %57

53:                                               ; preds = %46
  %54 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear_cpufreq, i32 0, i32 0), align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @clk_set_rate(%struct.clk* %54, i64 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %42, %26
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local %struct.clk* @spear1340_cpu_get_possible_parent(i64) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i64 @clk_round_rate(%struct.clk*, i64) #1

declare dso_local i32 @spear1340_set_cpu_rate(%struct.clk*, i64) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
