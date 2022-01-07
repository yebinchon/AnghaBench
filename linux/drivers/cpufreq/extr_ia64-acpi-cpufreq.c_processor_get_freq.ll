; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ia64-acpi-cpufreq.c_processor_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ia64-acpi-cpufreq.c_processor_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_acpi_io = type { i32 }
%struct.cpufreq_acpi_req = type { i32 }

@acpi_io_data = common dso_local global %struct.cpufreq_acpi_io** null, align 8
@.str = private unnamed_addr constant [20 x i8] c"processor_get_freq\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"get performance failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @processor_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @processor_get_freq(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cpufreq_acpi_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpufreq_acpi_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.cpufreq_acpi_req*
  store %struct.cpufreq_acpi_req* %10, %struct.cpufreq_acpi_req** %4, align 8
  %11 = load %struct.cpufreq_acpi_req*, %struct.cpufreq_acpi_req** %4, align 8
  %12 = getelementptr inbounds %struct.cpufreq_acpi_req, %struct.cpufreq_acpi_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.cpufreq_acpi_io**, %struct.cpufreq_acpi_io*** @acpi_io_data, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %14, i64 %16
  %18 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %17, align 8
  store %struct.cpufreq_acpi_io* %18, %struct.cpufreq_acpi_io** %6, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (...) @smp_processor_id()
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i64, i64* @EAGAIN, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %2, align 8
  br label %41

26:                                               ; preds = %1
  %27 = call i32 @processor_get_pstate(i32* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %2, align 8
  br label %41

35:                                               ; preds = %26
  %36 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @extract_clock(%struct.cpufreq_acpi_io* %36, i32 %37)
  %39 = mul nsw i32 1000, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %35, %30, %23
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @processor_get_pstate(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @extract_clock(%struct.cpufreq_acpi_io*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
