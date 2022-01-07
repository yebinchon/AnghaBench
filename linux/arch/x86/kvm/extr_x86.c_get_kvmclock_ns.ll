; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_get_kvmclock_ns.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_get_kvmclock_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.kvm_arch }
%struct.kvm_arch = type { i64, i32, i64, i32, i32 }
%struct.pvclock_vcpu_time_info = type { i32, i32, i64, i32 }

@cpu_tsc_khz = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_kvmclock_ns(%struct.kvm* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_arch*, align 8
  %5 = alloca %struct.pvclock_vcpu_time_info, align 8
  %6 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %7 = load %struct.kvm*, %struct.kvm** %3, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  store %struct.kvm_arch* %8, %struct.kvm_arch** %4, align 8
  %9 = load %struct.kvm_arch*, %struct.kvm_arch** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.kvm_arch*, %struct.kvm_arch** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load %struct.kvm_arch*, %struct.kvm_arch** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %17, i32 0, i32 1
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = call i64 (...) @ktime_get_boottime_ns()
  %21 = load %struct.kvm_arch*, %struct.kvm_arch** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  store i64 %24, i64* %2, align 8
  br label %64

25:                                               ; preds = %1
  %26 = load %struct.kvm_arch*, %struct.kvm_arch** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %5, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load %struct.kvm_arch*, %struct.kvm_arch** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.kvm_arch*, %struct.kvm_arch** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %5, i32 0, i32 2
  store i64 %36, i64* %37, align 8
  %38 = load %struct.kvm_arch*, %struct.kvm_arch** %4, align 8
  %39 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = call i32 (...) @get_cpu()
  %42 = load i32, i32* @cpu_tsc_khz, align 4
  %43 = call i64 @__this_cpu_read(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %25
  %46 = load i32, i32* @NSEC_PER_SEC, align 4
  %47 = load i32, i32* @cpu_tsc_khz, align 4
  %48 = call i64 @__this_cpu_read(i32 %47)
  %49 = mul nsw i64 %48, 1000
  %50 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %5, i32 0, i32 1
  %51 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %5, i32 0, i32 0
  %52 = call i32 @kvm_get_time_scale(i32 %46, i64 %49, i32* %50, i32* %51)
  %53 = call i32 (...) @rdtsc()
  %54 = call i64 @__pvclock_read_cycles(%struct.pvclock_vcpu_time_info* %5, i32 %53)
  store i64 %54, i64* %6, align 8
  br label %61

55:                                               ; preds = %25
  %56 = call i64 (...) @ktime_get_boottime_ns()
  %57 = load %struct.kvm_arch*, %struct.kvm_arch** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_arch, %struct.kvm_arch* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %55, %45
  %62 = call i32 (...) @put_cpu()
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %61, %16
  %65 = load i64, i64* %2, align 8
  ret i64 %65
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @ktime_get_boottime_ns(...) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @__this_cpu_read(i32) #1

declare dso_local i32 @kvm_get_time_scale(i32, i64, i32*, i32*) #1

declare dso_local i64 @__pvclock_read_cycles(%struct.pvclock_vcpu_time_info*, i32) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
