; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_write_exit_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_write_exit_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__*, %struct.kvm_mmio_fragment* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_mmio_fragment = type { i32, i32 }

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i8*, i32)* @write_exit_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_exit_mmio(%struct.kvm_vcpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_mmio_fragment*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 1
  %12 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %11, align 8
  %13 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %12, i64 0
  store %struct.kvm_mmio_fragment* %13, %struct.kvm_mmio_fragment** %9, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %9, align 8
  %21 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %9, align 8
  %24 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @min(i32 8, i32 %25)
  %27 = call i32 @memcpy(i32 %19, i32 %22, i32 %26)
  %28 = load i32, i32* @X86EMUL_CONTINUE, align 4
  ret i32 %28
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
