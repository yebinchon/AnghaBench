; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_decode_32bit_hsr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_decode_32bit_hsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coproc_params = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.kvm_vcpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coproc_params*, %struct.kvm_vcpu*)* @decode_32bit_hsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_32bit_hsr(%struct.coproc_params* noalias sret %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %3, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %5 = call i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %4)
  %6 = ashr i32 %5, 1
  %7 = and i32 %6, 15
  %8 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %0, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %9)
  %11 = ashr i32 %10, 5
  %12 = and i32 %11, 15
  %13 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %0, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %14)
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %0, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %0, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %21)
  %23 = ashr i32 %22, 10
  %24 = and i32 %23, 15
  %25 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %0, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = call i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %26)
  %28 = ashr i32 %27, 14
  %29 = and i32 %28, 7
  %30 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %0, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu* %31)
  %33 = ashr i32 %32, 17
  %34 = and i32 %33, 7
  %35 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %0, i32 0, i32 6
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %0, i32 0, i32 7
  store i64 0, i64* %36, align 8
  ret void
}

declare dso_local i32 @kvm_vcpu_get_hsr(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
