; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_get_xsave.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_get_xsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_xsave = type { i32* }

@X86_FEATURE_XSAVE = common dso_local global i32 0, align 4
@XFEATURE_MASK_FPSSE = common dso_local global i32 0, align 4
@XSAVE_HDR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_xsave*)* @kvm_vcpu_ioctl_x86_get_xsave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_vcpu_ioctl_x86_get_xsave(%struct.kvm_vcpu* %0, %struct.kvm_xsave* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_xsave*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_xsave* %1, %struct.kvm_xsave** %4, align 8
  %5 = load i32, i32* @X86_FEATURE_XSAVE, align 4
  %6 = call i64 @boot_cpu_has(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.kvm_xsave*, %struct.kvm_xsave** %4, align 8
  %10 = call i32 @memset(%struct.kvm_xsave* %9, i32 0, i32 8)
  %11 = load %struct.kvm_xsave*, %struct.kvm_xsave** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_xsave, %struct.kvm_xsave* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call i32 @fill_xsave(i32* %13, %struct.kvm_vcpu* %14)
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.kvm_xsave*, %struct.kvm_xsave** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_xsave, %struct.kvm_xsave* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @memcpy(i32* %19, i32* %25, i32 4)
  %27 = load i32, i32* @XFEATURE_MASK_FPSSE, align 4
  %28 = load %struct.kvm_xsave*, %struct.kvm_xsave** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_xsave, %struct.kvm_xsave* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @XSAVE_HDR_OFFSET, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 4
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %27, i32* %34, align 4
  br label %35

35:                                               ; preds = %16, %8
  ret void
}

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @memset(%struct.kvm_xsave*, i32, i32) #1

declare dso_local i32 @fill_xsave(i32*, %struct.kvm_vcpu*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
