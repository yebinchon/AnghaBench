; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_trace_imc_prepare_sample.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_trace_imc_prepare_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_imc_data = type { i32, i32, i32 }
%struct.perf_sample_data = type { i32, i32 }
%struct.perf_event_header = type { i32, i64, i32 }
%struct.perf_event = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IMC_TRACE_RECORD_TB1_MASK = common dso_local global i32 0, align 4
@PERF_RECORD_SAMPLE = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_KERNEL = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_imc_data*, %struct.perf_sample_data*, i32*, %struct.perf_event_header*, %struct.perf_event*)* @trace_imc_prepare_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_imc_prepare_sample(%struct.trace_imc_data* %0, %struct.perf_sample_data* %1, i32* %2, %struct.perf_event_header* %3, %struct.perf_event* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_imc_data*, align 8
  %8 = alloca %struct.perf_sample_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.perf_event_header*, align 8
  %11 = alloca %struct.perf_event*, align 8
  store %struct.trace_imc_data* %0, %struct.trace_imc_data** %7, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.perf_event_header* %3, %struct.perf_event_header** %10, align 8
  store %struct.perf_event* %4, %struct.perf_event** %11, align 8
  %12 = load %struct.trace_imc_data*, %struct.trace_imc_data** %7, align 8
  %13 = getelementptr inbounds %struct.trace_imc_data, %struct.trace_imc_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @READ_ONCE(i32 %14)
  %16 = call i32 @be64_to_cpu(i32 %15)
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.trace_imc_data*, %struct.trace_imc_data** %7, align 8
  %22 = getelementptr inbounds %struct.trace_imc_data, %struct.trace_imc_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @READ_ONCE(i32 %23)
  %25 = call i32 @be64_to_cpu(i32 %24)
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  br label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %94

30:                                               ; preds = %20
  %31 = load %struct.trace_imc_data*, %struct.trace_imc_data** %7, align 8
  %32 = getelementptr inbounds %struct.trace_imc_data, %struct.trace_imc_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @READ_ONCE(i32 %33)
  %35 = call i32 @be64_to_cpu(i32 %34)
  %36 = load i32, i32* @IMC_TRACE_RECORD_TB1_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.trace_imc_data*, %struct.trace_imc_data** %7, align 8
  %39 = getelementptr inbounds %struct.trace_imc_data, %struct.trace_imc_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @READ_ONCE(i32 %40)
  %42 = call i32 @be64_to_cpu(i32 %41)
  %43 = icmp ne i32 %37, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %94

47:                                               ; preds = %30
  %48 = load %struct.trace_imc_data*, %struct.trace_imc_data** %7, align 8
  %49 = getelementptr inbounds %struct.trace_imc_data, %struct.trace_imc_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @READ_ONCE(i32 %50)
  %52 = call i32 @be64_to_cpu(i32 %51)
  %53 = load %struct.perf_sample_data*, %struct.perf_sample_data** %8, align 8
  %54 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.perf_event*, %struct.perf_event** %11, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.perf_sample_data*, %struct.perf_sample_data** %8, align 8
  %60 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @PERF_RECORD_SAMPLE, align 4
  %62 = load %struct.perf_event_header*, %struct.perf_event_header** %10, align 8
  %63 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.perf_event*, %struct.perf_event** %11, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 24, %66
  %68 = load %struct.perf_event_header*, %struct.perf_event_header** %10, align 8
  %69 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.perf_event_header*, %struct.perf_event_header** %10, align 8
  %71 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.perf_sample_data*, %struct.perf_sample_data** %8, align 8
  %73 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @is_kernel_addr(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %47
  %78 = load i32, i32* @PERF_RECORD_MISC_KERNEL, align 4
  %79 = load %struct.perf_event_header*, %struct.perf_event_header** %10, align 8
  %80 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %89

83:                                               ; preds = %47
  %84 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  %85 = load %struct.perf_event_header*, %struct.perf_event_header** %10, align 8
  %86 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.perf_event_header*, %struct.perf_event_header** %10, align 8
  %91 = load %struct.perf_sample_data*, %struct.perf_sample_data** %8, align 8
  %92 = load %struct.perf_event*, %struct.perf_event** %11, align 8
  %93 = call i32 @perf_event_header__init_id(%struct.perf_event_header* %90, %struct.perf_sample_data* %91, %struct.perf_event* %92)
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %89, %44, %27
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @is_kernel_addr(i32) #1

declare dso_local i32 @perf_event_header__init_id(%struct.perf_event_header*, %struct.perf_sample_data*, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
