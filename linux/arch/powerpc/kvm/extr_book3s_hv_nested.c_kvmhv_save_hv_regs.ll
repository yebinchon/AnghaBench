; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_save_hv_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_save_hv_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, %struct.kvmppc_vcore* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.kvmppc_vcore = type { i32, i32, i32, i32 }
%struct.hv_guest_state = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PCR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmhv_save_hv_regs(%struct.kvm_vcpu* %0, %struct.hv_guest_state* %1) #0 {
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
  %10 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %11 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCR_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %16 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %18 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %21 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %20, i32 0, i32 16
  store i32 %19, i32* %21, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %27 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %26, i32 0, i32 15
  store i32 %25, i32* %27, align 8
  %28 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %29 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %32 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %31, i32 0, i32 14
  store i32 %30, i32* %32, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %38 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 8
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %44 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %50 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %56 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 4
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %62 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 8
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %68 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 4
  %69 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %70 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %73 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %80 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %87 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %94 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %92, i32* %96, align 4
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %103 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %101, i32* %105, align 4
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %107 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %112 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32 %110, i32* %114, align 4
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %116 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %121 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  store i32 %119, i32* %123, align 4
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %125 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %129 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %131 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %135 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %137 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %141 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
