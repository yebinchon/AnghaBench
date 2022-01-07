; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_aperfmperf.c_aperfmperf_snapshot_khz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_aperfmperf.c_aperfmperf_snapshot_khz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aperfmperf_sample = type { i64, i64, i32, i32 }

@samples = common dso_local global i32 0, align 4
@MSR_IA32_APERF = common dso_local global i32 0, align 4
@MSR_IA32_MPERF = common dso_local global i32 0, align 4
@cpu_khz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aperfmperf_snapshot_khz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aperfmperf_snapshot_khz(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.aperfmperf_sample*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = call %struct.aperfmperf_sample* @this_cpu_ptr(i32* @samples)
  store %struct.aperfmperf_sample* %9, %struct.aperfmperf_sample** %7, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i32, i32* @MSR_IA32_APERF, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @rdmsrl(i32 %12, i64 %13)
  %15 = load i32, i32* @MSR_IA32_MPERF, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @rdmsrl(i32 %15, i64 %16)
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @local_irq_restore(i64 %18)
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.aperfmperf_sample*, %struct.aperfmperf_sample** %7, align 8
  %22 = getelementptr inbounds %struct.aperfmperf_sample, %struct.aperfmperf_sample* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.aperfmperf_sample*, %struct.aperfmperf_sample** %7, align 8
  %27 = getelementptr inbounds %struct.aperfmperf_sample, %struct.aperfmperf_sample* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %50

33:                                               ; preds = %1
  %34 = call i32 (...) @ktime_get()
  %35 = load %struct.aperfmperf_sample*, %struct.aperfmperf_sample** %7, align 8
  %36 = getelementptr inbounds %struct.aperfmperf_sample, %struct.aperfmperf_sample* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.aperfmperf_sample*, %struct.aperfmperf_sample** %7, align 8
  %39 = getelementptr inbounds %struct.aperfmperf_sample, %struct.aperfmperf_sample* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.aperfmperf_sample*, %struct.aperfmperf_sample** %7, align 8
  %42 = getelementptr inbounds %struct.aperfmperf_sample, %struct.aperfmperf_sample* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* @cpu_khz, align 8
  %44 = load i64, i64* %4, align 8
  %45 = mul nsw i64 %43, %44
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @div64_u64(i64 %45, i64 %46)
  %48 = load %struct.aperfmperf_sample*, %struct.aperfmperf_sample** %7, align 8
  %49 = getelementptr inbounds %struct.aperfmperf_sample, %struct.aperfmperf_sample* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %33, %32
  ret void
}

declare dso_local %struct.aperfmperf_sample* @this_cpu_ptr(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @div64_u64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
