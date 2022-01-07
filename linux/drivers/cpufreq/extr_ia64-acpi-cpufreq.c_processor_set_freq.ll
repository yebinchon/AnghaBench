; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ia64-acpi-cpufreq.c_processor_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ia64-acpi-cpufreq.c_processor_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_acpi_io = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.cpufreq_acpi_req = type { i32, i32 }

@acpi_io_data = common dso_local global %struct.cpufreq_acpi_io** null, align 8
@.str = private unnamed_addr constant [20 x i8] c"processor_set_freq\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Called after resume, resetting to P%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Already at target state (P%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Transitioning from P%d to P%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Transitioning to state: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Transition failed with error %d\0A\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @processor_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @processor_set_freq(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cpufreq_acpi_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpufreq_acpi_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.cpufreq_acpi_req*
  store %struct.cpufreq_acpi_req* %11, %struct.cpufreq_acpi_req** %4, align 8
  %12 = load %struct.cpufreq_acpi_req*, %struct.cpufreq_acpi_req** %4, align 8
  %13 = getelementptr inbounds %struct.cpufreq_acpi_req, %struct.cpufreq_acpi_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.cpufreq_acpi_io**, %struct.cpufreq_acpi_io*** @acpi_io_data, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %15, i64 %17
  %19 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %18, align 8
  store %struct.cpufreq_acpi_io* %19, %struct.cpufreq_acpi_io** %6, align 8
  %20 = load %struct.cpufreq_acpi_req*, %struct.cpufreq_acpi_req** %4, align 8
  %21 = getelementptr inbounds %struct.cpufreq_acpi_req, %struct.cpufreq_acpi_req* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @smp_processor_id()
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i64, i64* @EAGAIN, align 8
  %29 = sub nsw i64 0, %28
  store i64 %29, i64* %2, align 8
  br label %85

30:                                               ; preds = %1
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %33 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %39 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @unlikely(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %47 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %51

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  store i64 0, i64* %2, align 8
  br label %85

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %54 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %60 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @processor_set_pstate(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %52
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load i64, i64* @ENODEV, align 8
  %79 = sub nsw i64 0, %78
  store i64 %79, i64* %2, align 8
  br label %85

80:                                               ; preds = %52
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %83 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  store i64 0, i64* %2, align 8
  br label %85

85:                                               ; preds = %80, %75, %48, %27
  %86 = load i64, i64* %2, align 8
  ret i64 %86
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @processor_set_pstate(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
