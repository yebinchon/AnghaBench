; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq.c_s3c_cpufreq_getcur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq.c_s3c_cpufreq_getcur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_cpufreq_config = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@clk_fclk = common dso_local global i32 0, align 4
@clk_hclk = common dso_local global i32 0, align 4
@clk_pclk = common dso_local global i32 0, align 4
@clk_arm = common dso_local global i32 0, align 4
@S3C2410_MPLLCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_cpufreq_config*)* @s3c_cpufreq_getcur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_cpufreq_getcur(%struct.s3c_cpufreq_config* %0) #0 {
  %2 = alloca %struct.s3c_cpufreq_config*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.s3c_cpufreq_config* %0, %struct.s3c_cpufreq_config** %2, align 8
  %7 = load i32, i32* @clk_fclk, align 4
  %8 = call i64 @clk_get_rate(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %10 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %8, i64* %11, align 8
  %12 = load i32, i32* @clk_hclk, align 4
  %13 = call i64 @clk_get_rate(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %15 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i64 %13, i64* %16, align 8
  %17 = load i32, i32* @clk_pclk, align 4
  %18 = call i64 @clk_get_rate(i32 %17)
  store i64 %18, i64* %4, align 8
  %19 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %20 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i64 %18, i64* %21, align 8
  %22 = load i32, i32* @clk_arm, align 4
  %23 = call i64 @clk_get_rate(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %25 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  store i64 %23, i64* %26, align 8
  %27 = load i32, i32* @S3C2410_MPLLCON, align 4
  %28 = call i32 @__raw_readl(i32 %27)
  %29 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %30 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %34 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %37 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = udiv i64 %39, 10
  %41 = udiv i64 1000000000, %40
  %42 = trunc i64 %41 to i32
  %43 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %44 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 8
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = udiv i64 %46, %47
  %49 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %50 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = udiv i64 %52, %53
  %55 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %2, align 8
  %56 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
