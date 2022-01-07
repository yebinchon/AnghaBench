; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_async_page_not_present.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_async_page_not_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_async_pf = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.x86_exception = type { i32, i32, i32, i32, i64, i32 }

@KVM_PV_REASON_PAGE_NOT_PRESENT = common dso_local global i32 0, align 4
@PF_VECTOR = common dso_local global i32 0, align 4
@KVM_REQ_APF_HALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_async_page_not_present(%struct.kvm_vcpu* %0, %struct.kvm_async_pf* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_async_pf*, align 8
  %5 = alloca %struct.x86_exception, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_async_pf* %1, %struct.kvm_async_pf** %4, align 8
  %6 = load %struct.kvm_async_pf*, %struct.kvm_async_pf** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_async_pf, %struct.kvm_async_pf* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.kvm_async_pf*, %struct.kvm_async_pf** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_async_pf, %struct.kvm_async_pf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @trace_kvm_async_pf_not_present(i32 %9, i32 %12)
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = load %struct.kvm_async_pf*, %struct.kvm_async_pf** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_async_pf, %struct.kvm_async_pf* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kvm_add_async_pf_gfn(%struct.kvm_vcpu* %14, i32 %18)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = call i64 @kvm_can_deliver_async_pf(%struct.kvm_vcpu* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = load i32, i32* @KVM_PV_REASON_PAGE_NOT_PRESENT, align 4
  %26 = call i32 @apf_put_user(%struct.kvm_vcpu* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @PF_VECTOR, align 4
  %30 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.kvm_async_pf*, %struct.kvm_async_pf** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_async_pf, %struct.kvm_async_pf* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.x86_exception, %struct.x86_exception* %5, i32 0, i32 2
  store i32 1, i32* %39, align 8
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = call i32 @kvm_inject_page_fault(%struct.kvm_vcpu* %40, %struct.x86_exception* %5)
  br label %46

42:                                               ; preds = %23, %2
  %43 = load i32, i32* @KVM_REQ_APF_HALT, align 4
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = call i32 @kvm_make_request(i32 %43, %struct.kvm_vcpu* %44)
  br label %46

46:                                               ; preds = %42, %28
  ret void
}

declare dso_local i32 @trace_kvm_async_pf_not_present(i32, i32) #1

declare dso_local i32 @kvm_add_async_pf_gfn(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_can_deliver_async_pf(%struct.kvm_vcpu*) #1

declare dso_local i32 @apf_put_user(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_inject_page_fault(%struct.kvm_vcpu*, %struct.x86_exception*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
