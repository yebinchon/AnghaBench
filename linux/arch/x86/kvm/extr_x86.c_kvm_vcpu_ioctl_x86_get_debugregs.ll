; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_get_debugregs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_get_debugregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kvm_debugregs = type { i64, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_debugregs*)* @kvm_vcpu_ioctl_x86_get_debugregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_vcpu_ioctl_x86_get_debugregs(%struct.kvm_vcpu* %0, %struct.kvm_debugregs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_debugregs*, align 8
  %5 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_debugregs* %1, %struct.kvm_debugregs** %4, align 8
  %6 = load %struct.kvm_debugregs*, %struct.kvm_debugregs** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_debugregs, %struct.kvm_debugregs* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(i32 %8, i32 %12, i32 4)
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call i32 @kvm_get_dr(%struct.kvm_vcpu* %14, i32 6, i64* %5)
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.kvm_debugregs*, %struct.kvm_debugregs** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_debugregs, %struct.kvm_debugregs* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kvm_debugregs*, %struct.kvm_debugregs** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_debugregs, %struct.kvm_debugregs* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.kvm_debugregs*, %struct.kvm_debugregs** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_debugregs, %struct.kvm_debugregs* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.kvm_debugregs*, %struct.kvm_debugregs** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_debugregs, %struct.kvm_debugregs* %27, i32 0, i32 1
  %29 = call i32 @memset(i32* %28, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kvm_get_dr(%struct.kvm_vcpu*, i32, i64*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
