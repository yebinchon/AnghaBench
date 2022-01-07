; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_davinci-cpufreq.c_davinci_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_davinci-cpufreq.c_davinci_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.clk*, %struct.clk*, %struct.TYPE_5__* }
%struct.clk = type { i32 }
%struct.TYPE_5__ = type { %struct.davinci_cpufreq_config* }
%struct.davinci_cpufreq_config = type { i32 (i32)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cpufreq_policy = type { i32 }

@cpufreq = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @davinci_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.davinci_cpufreq_config*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpufreq, i32 0, i32 3), align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.davinci_cpufreq_config*, %struct.davinci_cpufreq_config** %12, align 8
  store %struct.davinci_cpufreq_config* %13, %struct.davinci_cpufreq_config** %6, align 8
  %14 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpufreq, i32 0, i32 2), align 8
  store %struct.clk* %14, %struct.clk** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %16 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.davinci_cpufreq_config*, %struct.davinci_cpufreq_config** %6, align 8
  %19 = getelementptr inbounds %struct.davinci_cpufreq_config, %struct.davinci_cpufreq_config* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.davinci_cpufreq_config*, %struct.davinci_cpufreq_config** %6, align 8
  %27 = getelementptr inbounds %struct.davinci_cpufreq_config, %struct.davinci_cpufreq_config* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = icmp ne i32 (i32)* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.davinci_cpufreq_config*, %struct.davinci_cpufreq_config** %6, align 8
  %36 = getelementptr inbounds %struct.davinci_cpufreq_config, %struct.davinci_cpufreq_config* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 %37(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %82

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %30, %2
  %46 = load %struct.clk*, %struct.clk** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = mul i32 %47, 1000
  %49 = call i32 @clk_set_rate(%struct.clk* %46, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %82

54:                                               ; preds = %45
  %55 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpufreq, i32 0, i32 1), align 8
  %56 = icmp ne %struct.clk* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpufreq, i32 0, i32 1), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpufreq, i32 0, i32 0), align 8
  %60 = call i32 @clk_set_rate(%struct.clk* %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %82

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %54
  %67 = load %struct.davinci_cpufreq_config*, %struct.davinci_cpufreq_config** %6, align 8
  %68 = getelementptr inbounds %struct.davinci_cpufreq_config, %struct.davinci_cpufreq_config* %67, i32 0, i32 0
  %69 = load i32 (i32)*, i32 (i32)** %68, align 8
  %70 = icmp ne i32 (i32)* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.davinci_cpufreq_config*, %struct.davinci_cpufreq_config** %6, align 8
  %77 = getelementptr inbounds %struct.davinci_cpufreq_config, %struct.davinci_cpufreq_config* %76, i32 0, i32 0
  %78 = load i32 (i32)*, i32 (i32)** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 %78(i32 %79)
  br label %81

81:                                               ; preds = %75, %71, %66
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %63, %52, %42
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
