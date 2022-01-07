; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.mce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MSR_IA32_MCG_CAP = common dso_local global i32 0, align 4
@X86_FEATURE_INTEL_PPIN = common dso_local global i32 0, align 4
@MSR_PPIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mce_setup(%struct.mce* %0) #0 {
  %2 = alloca %struct.mce*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  store %struct.mce* %0, %struct.mce** %2, align 8
  %5 = load %struct.mce*, %struct.mce** %2, align 8
  %6 = call i32 @memset(%struct.mce* %5, i32 0, i32 40)
  %7 = call i32 (...) @smp_processor_id()
  %8 = load %struct.mce*, %struct.mce** %2, align 8
  %9 = getelementptr inbounds %struct.mce, %struct.mce* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.mce*, %struct.mce** %2, align 8
  %11 = getelementptr inbounds %struct.mce, %struct.mce* %10, i32 0, i32 9
  store i32 %7, i32* %11, align 4
  %12 = call i32 (...) @__ktime_get_real_seconds()
  %13 = load %struct.mce*, %struct.mce** %2, align 8
  %14 = getelementptr inbounds %struct.mce, %struct.mce* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1), align 4
  %16 = load %struct.mce*, %struct.mce** %2, align 8
  %17 = getelementptr inbounds %struct.mce, %struct.mce* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = call i32 @cpuid_eax(i32 1)
  %19 = load %struct.mce*, %struct.mce** %2, align 8
  %20 = getelementptr inbounds %struct.mce, %struct.mce* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mce*, %struct.mce** %2, align 8
  %22 = getelementptr inbounds %struct.mce, %struct.mce* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @cpu_data(i32 %23)
  %25 = bitcast %struct.TYPE_3__* %3 to i64*
  store i64 %24, i64* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mce*, %struct.mce** %2, align 8
  %29 = getelementptr inbounds %struct.mce, %struct.mce* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mce*, %struct.mce** %2, align 8
  %31 = getelementptr inbounds %struct.mce, %struct.mce* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @cpu_data(i32 %32)
  %34 = bitcast %struct.TYPE_3__* %4 to i64*
  store i64 %33, i64* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mce*, %struct.mce** %2, align 8
  %38 = getelementptr inbounds %struct.mce, %struct.mce* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @MSR_IA32_MCG_CAP, align 4
  %40 = load %struct.mce*, %struct.mce** %2, align 8
  %41 = getelementptr inbounds %struct.mce, %struct.mce* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rdmsrl(i32 %39, i32 %42)
  %44 = load i32, i32* @X86_FEATURE_INTEL_PPIN, align 4
  %45 = call i64 @this_cpu_has(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %1
  %48 = load i32, i32* @MSR_PPIN, align 4
  %49 = load %struct.mce*, %struct.mce** %2, align 8
  %50 = getelementptr inbounds %struct.mce, %struct.mce* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rdmsrl(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %1
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %55 = load %struct.mce*, %struct.mce** %2, align 8
  %56 = getelementptr inbounds %struct.mce, %struct.mce* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local i32 @memset(%struct.mce*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @__ktime_get_real_seconds(...) #1

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i64 @cpu_data(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i64 @this_cpu_has(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
