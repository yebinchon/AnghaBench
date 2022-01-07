; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_get_time_ref_counter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_get_time_ref_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_hv }
%struct.kvm_hv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.kvm_vcpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm*)* @get_time_ref_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_time_ref_counter(%struct.kvm* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_hv*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %7 = load %struct.kvm*, %struct.kvm** %3, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.kvm_hv* %9, %struct.kvm_hv** %4, align 8
  %10 = load %struct.kvm_hv*, %struct.kvm_hv** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.kvm*, %struct.kvm** %3, align 8
  %17 = call i32 @get_kvmclock_ns(%struct.kvm* %16)
  %18 = call i64 @div_u64(i32 %17, i32 100)
  store i64 %18, i64* %2, align 8
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.kvm*, %struct.kvm** %3, align 8
  %21 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %20, i32 0)
  store %struct.kvm_vcpu* %21, %struct.kvm_vcpu** %5, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %23 = call i32 (...) @rdtsc()
  %24 = call i64 @kvm_read_l1_tsc(%struct.kvm_vcpu* %22, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.kvm_hv*, %struct.kvm_hv** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @mul_u64_u64_shr(i64 %25, i32 %29, i32 64)
  %31 = load %struct.kvm_hv*, %struct.kvm_hv** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %30, %34
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %19, %15
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i64 @div_u64(i32, i32) #1

declare dso_local i32 @get_kvmclock_ns(%struct.kvm*) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm*, i32) #1

declare dso_local i64 @kvm_read_l1_tsc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i64 @mul_u64_u64_shr(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
