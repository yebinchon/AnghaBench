; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_get_assist_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_get_assist_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hv_vp_assist_page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_hv_get_assist_page(%struct.kvm_vcpu* %0, %struct.hv_vp_assist_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.hv_vp_assist_page*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.hv_vp_assist_page* %1, %struct.hv_vp_assist_page** %5, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %7 = call i32 @kvm_hv_assist_page_enabled(%struct.kvm_vcpu* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

10:                                               ; preds = %2
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.hv_vp_assist_page*, %struct.hv_vp_assist_page** %5, align 8
  %19 = call i32 @kvm_read_guest_cached(i32 %13, i32* %17, %struct.hv_vp_assist_page* %18, i32 4)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %10, %9
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @kvm_hv_assist_page_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_guest_cached(i32, i32*, %struct.hv_vp_assist_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
