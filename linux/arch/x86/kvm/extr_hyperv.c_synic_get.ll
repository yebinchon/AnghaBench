; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_synic = type { i64 }
%struct.kvm = type { i32 }
%struct.kvm_vcpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_vcpu_hv_synic* (%struct.kvm*, i32)* @synic_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_vcpu_hv_synic* @synic_get(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu_hv_synic*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_vcpu_hv_synic*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kvm*, %struct.kvm** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.kvm_vcpu* @get_vcpu_by_vpidx(%struct.kvm* %8, i32 %9)
  store %struct.kvm_vcpu* %10, %struct.kvm_vcpu** %6, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %12 = icmp ne %struct.kvm_vcpu* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.kvm_vcpu_hv_synic* null, %struct.kvm_vcpu_hv_synic** %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %16 = call %struct.kvm_vcpu_hv_synic* @vcpu_to_synic(%struct.kvm_vcpu* %15)
  store %struct.kvm_vcpu_hv_synic* %16, %struct.kvm_vcpu_hv_synic** %7, align 8
  %17 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %7, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %7, align 8
  br label %24

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi %struct.kvm_vcpu_hv_synic* [ %22, %21 ], [ null, %23 ]
  store %struct.kvm_vcpu_hv_synic* %25, %struct.kvm_vcpu_hv_synic** %3, align 8
  br label %26

26:                                               ; preds = %24, %13
  %27 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %3, align 8
  ret %struct.kvm_vcpu_hv_synic* %27
}

declare dso_local %struct.kvm_vcpu* @get_vcpu_by_vpidx(%struct.kvm*, i32) #1

declare dso_local %struct.kvm_vcpu_hv_synic* @vcpu_to_synic(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
