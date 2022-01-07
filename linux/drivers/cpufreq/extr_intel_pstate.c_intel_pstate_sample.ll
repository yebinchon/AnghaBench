; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@MSR_IA32_APERF = common dso_local global i32 0, align 4
@MSR_IA32_MPERF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpudata*, i64)* @intel_pstate_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pstate_sample(%struct.cpudata* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpudata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.cpudata* %0, %struct.cpudata** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i32, i32* @MSR_IA32_APERF, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @rdmsrl(i32 %12, i64 %13)
  %15 = load i32, i32* @MSR_IA32_MPERF, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @rdmsrl(i32 %15, i64 %16)
  %18 = call i64 (...) @rdtsc()
  store i64 %18, i64* %9, align 8
  %19 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %20 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %26 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %2
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  store i32 0, i32* %3, align 4
  br label %99

33:                                               ; preds = %24
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  %36 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %37 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %41 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %44 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %48 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %52 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %56 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  %58 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %59 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %62 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, %60
  store i64 %65, i64* %63, align 8
  %66 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %67 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %70 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, %68
  store i64 %73, i64* %71, align 8
  %74 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %75 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %78 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %80, %76
  store i64 %81, i64* %79, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %84 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %87 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %90 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %92 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %33
  %96 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %97 = call i32 @intel_pstate_calc_avg_perf(%struct.cpudata* %96)
  store i32 1, i32* %3, align 4
  br label %99

98:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %95, %30
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i64 @rdtsc(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @intel_pstate_calc_avg_perf(%struct.cpudata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
