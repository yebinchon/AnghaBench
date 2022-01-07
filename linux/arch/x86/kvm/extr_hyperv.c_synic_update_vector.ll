; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_update_vector.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_update_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_synic = type { i32, i32 }

@HV_SYNIC_FIRST_VALID_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu_hv_synic*, i32)* @synic_update_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synic_update_vector(%struct.kvm_vcpu_hv_synic* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu_hv_synic*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu_hv_synic* %0, %struct.kvm_vcpu_hv_synic** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @HV_SYNIC_FIRST_VALID_VECTOR, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %43

9:                                                ; preds = %2
  %10 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @synic_has_vector_connected(%struct.kvm_vcpu_hv_synic* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__set_bit(i32 %15, i32 %18)
  br label %26

20:                                               ; preds = %9
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__clear_bit(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @synic_has_vector_auto_eoi(%struct.kvm_vcpu_hv_synic* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__set_bit(i32 %32, i32 %35)
  br label %43

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %3, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__clear_bit(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %8, %37, %31
  ret void
}

declare dso_local i64 @synic_has_vector_connected(%struct.kvm_vcpu_hv_synic*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i64 @synic_has_vector_auto_eoi(%struct.kvm_vcpu_hv_synic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
