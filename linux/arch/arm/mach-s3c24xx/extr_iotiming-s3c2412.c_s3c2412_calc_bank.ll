; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_iotiming-s3c2412.c_s3c2412_calc_bank.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_iotiming-s3c2412.c_s3c2412_calc_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_cpufreq_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.s3c2412_iobank_timing = type { i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c_cpufreq_config*, %struct.s3c2412_iobank_timing*)* @s3c2412_calc_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2412_calc_bank(%struct.s3c_cpufreq_config* %0, %struct.s3c2412_iobank_timing* %1) #0 {
  %3 = alloca %struct.s3c_cpufreq_config*, align 8
  %4 = alloca %struct.s3c2412_iobank_timing*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s3c_cpufreq_config* %0, %struct.s3c_cpufreq_config** %3, align 8
  store %struct.s3c2412_iobank_timing* %1, %struct.s3c2412_iobank_timing** %4, align 8
  %7 = load %struct.s3c_cpufreq_config*, %struct.s3c_cpufreq_config** %3, align 8
  %8 = getelementptr inbounds %struct.s3c_cpufreq_config, %struct.s3c_cpufreq_config* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %12 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @calc_timing(i32 %13, i32 %14, i32* %6)
  %16 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %17 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %16, i32 0, i32 11
  store i8* %15, i8** %17, align 8
  %18 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %19 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @calc_timing(i32 %20, i32 %21, i32* %6)
  %23 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %24 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %23, i32 0, i32 9
  store i8* %22, i8** %24, align 8
  %25 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %26 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @calc_timing(i32 %27, i32 %28, i32* %6)
  %30 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %31 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  %32 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %33 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @calc_timing(i32 %34, i32 %35, i32* %6)
  %37 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %38 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %40 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @calc_timing(i32 %41, i32 %42, i32* %6)
  %44 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %45 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %47 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i8* @calc_timing(i32 %48, i32 %49, i32* %6)
  %51 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %4, align 8
  %52 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i8* @calc_timing(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
