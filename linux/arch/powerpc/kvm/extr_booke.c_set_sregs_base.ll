; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_set_sregs_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_set_sregs_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.kvm_sregs = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@KVM_SREGS_E_BASE = common dso_local global i32 0, align 4
@KVM_SREGS_E_UPDATE_DEC = common dso_local global i32 0, align 4
@KVM_SREGS_E_UPDATE_TSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_sregs*)* @set_sregs_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sregs_base(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_sregs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %5, align 8
  %6 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %7 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KVM_SREGS_E_BASE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

15:                                               ; preds = %2
  %16 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 4
  %24 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %41 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kvmppc_set_esr(%struct.kvm_vcpu* %40, i32 %45)
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %48 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %49 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kvmppc_set_dar(%struct.kvm_vcpu* %47, i32 %52)
  %54 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %63 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %64 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @kvmppc_set_tcr(%struct.kvm_vcpu* %62, i32 %67)
  %69 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %70 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @KVM_SREGS_E_UPDATE_DEC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %15
  %78 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %79 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %87 = call i32 @kvmppc_emulate_dec(%struct.kvm_vcpu* %86)
  br label %88

88:                                               ; preds = %77, %15
  %89 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %90 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @KVM_SREGS_E_UPDATE_TSR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %88
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %99 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %100 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @kvmppc_set_tsr(%struct.kvm_vcpu* %98, i32 %103)
  br label %105

105:                                              ; preds = %97, %88
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %14
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @kvmppc_set_esr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_dar(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_tcr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_emulate_dec(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_tsr(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
