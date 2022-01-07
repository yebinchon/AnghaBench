; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_tsc_khz_changed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_tsc_khz_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_freqs = type { i64 }

@X86_FEATURE_CONSTANT_TSC = common dso_local global i32 0, align 4
@tsc_khz = common dso_local global i64 0, align 8
@cpu_tsc_khz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tsc_khz_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsc_khz_changed(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cpufreq_freqs*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.cpufreq_freqs*
  store %struct.cpufreq_freqs* %6, %struct.cpufreq_freqs** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %3, align 8
  %11 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @X86_FEATURE_CONSTANT_TSC, align 4
  %15 = call i32 @boot_cpu_has(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = call i32 (...) @raw_smp_processor_id()
  %19 = call i64 @cpufreq_quick_get(i32 %18)
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %17, %13
  br label %21

21:                                               ; preds = %20, %9
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @tsc_khz, align 8
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* @cpu_tsc_khz, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @__this_cpu_write(i32 %27, i64 %28)
  ret void
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i64 @cpufreq_quick_get(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @__this_cpu_write(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
