; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_setup.c_c_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_setup.c_c_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Processor\09: UniCore-II rev %d (%s)\0A\00", align 1
@uc32_cpuid = common dso_local global i32 0, align 4
@elf_platform = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"BogoMIPS\09: %lu.%02lu\0A\00", align 1
@loops_per_jiffy = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Features\09: CMOV UC-F64\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\0ACPU implementer\09: 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CPU architecture: 2\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"CPU revision\09: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"Cache type\09: write-back\0ACache clean\09: cp0 c5 ops\0ACache lockdown\09: not support\0ACache format\09: Harvard\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Hardware\09: PKUnity v3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @c_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load i32, i32* @uc32_cpuid, align 4
  %7 = ashr i32 %6, 16
  %8 = and i32 %7, 15
  %9 = load i32, i32* @elf_platform, align 4
  %10 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load i32, i32* @loops_per_jiffy, align 4
  %13 = load i32, i32* @HZ, align 4
  %14 = sdiv i32 500000, %13
  %15 = sdiv i32 %12, %14
  %16 = load i32, i32* @loops_per_jiffy, align 4
  %17 = load i32, i32* @HZ, align 4
  %18 = sdiv i32 5000, %17
  %19 = sdiv i32 %16, %18
  %20 = srem i32 %19, 100
  %21 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load i32, i32* @uc32_cpuid, align 4
  %26 = ashr i32 %25, 24
  %27 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load i32, i32* @uc32_cpuid, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 15
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0))
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = call i32 @seq_puts(%struct.seq_file* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
