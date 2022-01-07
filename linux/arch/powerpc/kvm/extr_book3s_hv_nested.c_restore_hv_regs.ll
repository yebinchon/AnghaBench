; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_restore_hv_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_restore_hv_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, %struct.kvmppc_vcore* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.kvmppc_vcore = type { i32, i32, i32 }
%struct.hv_guest_state = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PCR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.hv_guest_state*)* @restore_hv_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_hv_regs(%struct.kvm_vcpu* %0, %struct.hv_guest_state* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.hv_guest_state*, align 8
  %5 = alloca %struct.kvmppc_vcore*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.hv_guest_state* %1, %struct.hv_guest_state** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 11
  %9 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  store %struct.kvmppc_vcore* %9, %struct.kvmppc_vcore** %5, align 8
  %10 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %11 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PCR_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %16 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %18 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %17, i32 0, i32 15
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %21 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %23 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 10
  store i32 %24, i32* %27, align 4
  %28 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %29 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 9
  store i32 %30, i32* %33, align 8
  %34 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %35 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 8
  store i32 %36, i32* %39, align 4
  %40 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %41 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 7
  store i32 %42, i32* %45, align 8
  %46 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %47 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  store i32 %48, i32* %51, align 4
  %52 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %53 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 8
  %58 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %59 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  store i32 %60, i32* %63, align 4
  %64 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %65 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %68 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %70 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 5
  store i32 %71, i32* %75, align 4
  %76 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %77 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  store i32 %78, i32* %82, align 4
  %83 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %84 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  store i32 %87, i32* %91, align 4
  %92 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %93 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  store i32 %96, i32* %100, align 4
  %101 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %102 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %107 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 4
  %110 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %111 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %116 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 4
  %119 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %120 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  %125 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %126 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %132 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %135 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
