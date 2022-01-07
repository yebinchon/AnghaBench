; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_deliver_nested_posted_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_deliver_nested_posted_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @vmx_deliver_nested_posted_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_deliver_nested_posted_interrupt(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %7)
  store %struct.vcpu_vmx* %8, %struct.vcpu_vmx** %6, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = call i64 @is_guest_mode(%struct.kvm_vcpu* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %15 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %21 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @KVM_REQ_EVENT, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %25 = call i32 @kvm_make_request(i32 %23, %struct.kvm_vcpu* %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = call i32 @kvm_vcpu_trigger_posted_interrupt(%struct.kvm_vcpu* %26, i32 1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = call i32 @kvm_vcpu_kick(%struct.kvm_vcpu* %30)
  br label %32

32:                                               ; preds = %29, %19
  store i32 0, i32* %3, align 4
  br label %34

33:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_trigger_posted_interrupt(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_kick(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
