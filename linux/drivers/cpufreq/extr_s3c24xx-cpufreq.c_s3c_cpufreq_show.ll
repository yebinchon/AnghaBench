; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq.c_s3c_cpufreq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq.c_s3c_cpufreq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_cpufreq_config = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"%s: Fvco=%u, F=%lu, A=%lu, H=%lu (%u), P=%lu (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.s3c_cpufreq_config*)* @s3c_cpufreq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_cpufreq_show(i8* %0, %struct.s3c_cpufreq_config* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.s3c_cpufreq_config*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.s3c_cpufreq_config* %1, %struct.s3c_cpufreq_config** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %4, align 8
  %7 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %4, align 8
  %11 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %4, align 8
  %15 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %4, align 8
  %19 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %4, align 8
  %23 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %4, align 8
  %27 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %4, align 8
  %31 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @s3c_freq_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %9, i32 %13, i32 %17, i32 %21, i32 %25, i32 %29, i32 %33)
  ret void
}

declare dso_local i32 @s3c_freq_dbg(i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
