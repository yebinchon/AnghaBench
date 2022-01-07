; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_get_sregs_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_get_sregs_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.kvm_sregs = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@KVM_SREGS_E_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_sregs*)* @get_sregs_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sregs_base(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_sregs*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %4, align 8
  %6 = call i32 (...) @get_tb()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @KVM_SREGS_E_BASE, align 4
  %8 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %7
  store i32 %13, i32* %11, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 9
  store i32 %17, i32* %21, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 8
  store i32 %25, i32* %29, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 7
  store i32 %33, i32* %37, align 4
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = call i32 @kvmppc_get_esr(%struct.kvm_vcpu* %38)
  %40 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %41 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 6
  store i32 %39, i32* %43, align 4
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = call i32 @kvmppc_get_dar(%struct.kvm_vcpu* %44)
  %46 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  store i32 %45, i32* %49, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i32 %53, i32* %57, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 4
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @kvmppc_get_dec(%struct.kvm_vcpu* %66, i32 %67)
  %69 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %70 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %75 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %83 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  ret void
}

declare dso_local i32 @get_tb(...) #1

declare dso_local i32 @kvmppc_get_esr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_dar(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_dec(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
