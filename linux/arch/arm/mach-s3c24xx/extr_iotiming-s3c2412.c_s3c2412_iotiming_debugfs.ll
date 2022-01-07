; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_iotiming-s3c2412.c_s3c2412_iotiming_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_iotiming-s3c2412.c_s3c2412_iotiming_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.s3c_cpufreq_config = type { i32 }
%union.s3c_iobank = type { %struct.s3c2412_iobank_timing* }
%struct.s3c2412_iobank_timing = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [81 x i8] c"\09Read: idcy=%d.%d wstrd=%d.%d wstwr=%d,%dwstoen=%d.%d wstwen=%d.%d wstbrd=%d.%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c2412_iotiming_debugfs(%struct.seq_file* %0, %struct.s3c_cpufreq_config* %1, %union.s3c_iobank* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.s3c_cpufreq_config*, align 8
  %6 = alloca %union.s3c_iobank*, align 8
  %7 = alloca %struct.s3c2412_iobank_timing*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.s3c_cpufreq_config* %1, %struct.s3c_cpufreq_config** %5, align 8
  store %union.s3c_iobank* %2, %union.s3c_iobank** %6, align 8
  %8 = load %union.s3c_iobank*, %union.s3c_iobank** %6, align 8
  %9 = bitcast %union.s3c_iobank* %8 to %struct.s3c2412_iobank_timing**
  %10 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %9, align 8
  store %struct.s3c2412_iobank_timing* %10, %struct.s3c2412_iobank_timing** %7, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %7, align 8
  %13 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @print_ns(i32 %14)
  %16 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %7, align 8
  %17 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @print_ns(i32 %18)
  %20 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %7, align 8
  %21 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @print_ns(i32 %22)
  %24 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %7, align 8
  %25 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @print_ns(i32 %26)
  %28 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %7, align 8
  %29 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @print_ns(i32 %30)
  %32 = load %struct.s3c2412_iobank_timing*, %struct.s3c2412_iobank_timing** %7, align 8
  %33 = getelementptr inbounds %struct.s3c2412_iobank_timing, %struct.s3c2412_iobank_timing* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @print_ns(i32 %34)
  %36 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23, i32 %27, i32 %31, i32 %35)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @print_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
