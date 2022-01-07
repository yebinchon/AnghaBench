; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_get_xcrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_get_xcrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_xcrs = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@X86_FEATURE_XSAVE = common dso_local global i32 0, align 4
@XCR_XFEATURE_ENABLED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_xcrs*)* @kvm_vcpu_ioctl_x86_get_xcrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_vcpu_ioctl_x86_get_xcrs(%struct.kvm_vcpu* %0, %struct.kvm_xcrs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_xcrs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_xcrs* %1, %struct.kvm_xcrs** %4, align 8
  %5 = load i32, i32* @X86_FEATURE_XSAVE, align 4
  %6 = call i32 @boot_cpu_has(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.kvm_xcrs*, %struct.kvm_xcrs** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_xcrs, %struct.kvm_xcrs* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  br label %31

11:                                               ; preds = %2
  %12 = load %struct.kvm_xcrs*, %struct.kvm_xcrs** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_xcrs, %struct.kvm_xcrs* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.kvm_xcrs*, %struct.kvm_xcrs** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_xcrs, %struct.kvm_xcrs* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @XCR_XFEATURE_ENABLED_MASK, align 4
  %17 = load %struct.kvm_xcrs*, %struct.kvm_xcrs** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_xcrs, %struct.kvm_xcrs* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %16, i32* %21, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.kvm_xcrs*, %struct.kvm_xcrs** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_xcrs, %struct.kvm_xcrs* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  br label %31

31:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @boot_cpu_has(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
