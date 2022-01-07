; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_dy_apicv_has_pending_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_dy_apicv_has_pending_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.pi_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @vmx_dy_apicv_has_pending_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_dy_apicv_has_pending_interrupt(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.pi_desc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.pi_desc* @vcpu_to_pi_desc(%struct.kvm_vcpu* %4)
  store %struct.pi_desc* %5, %struct.pi_desc** %3, align 8
  %6 = load %struct.pi_desc*, %struct.pi_desc** %3, align 8
  %7 = call i64 @pi_test_on(%struct.pi_desc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = load %struct.pi_desc*, %struct.pi_desc** %3, align 8
  %11 = call i64 @pi_test_sn(%struct.pi_desc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load %struct.pi_desc*, %struct.pi_desc** %3, align 8
  %15 = call i32 @pi_is_pir_empty(%struct.pi_desc* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i1 [ false, %9 ], [ %17, %13 ]
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i1 [ true, %1 ], [ %19, %18 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local %struct.pi_desc* @vcpu_to_pi_desc(%struct.kvm_vcpu*) #1

declare dso_local i64 @pi_test_on(%struct.pi_desc*) #1

declare dso_local i64 @pi_test_sn(%struct.pi_desc*) #1

declare dso_local i32 @pi_is_pir_empty(%struct.pi_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
