; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_restore_hv_return_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_restore_hv_return_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kvmppc_vcore* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.kvmppc_vcore = type { i32, i32 }
%struct.hv_guest_state = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmhv_restore_hv_return_state(%struct.kvm_vcpu* %0, %struct.hv_guest_state* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.hv_guest_state*, align 8
  %5 = alloca %struct.kvmppc_vcore*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.hv_guest_state* %1, %struct.hv_guest_state** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 12
  %9 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  store %struct.kvmppc_vcore* %9, %struct.kvmppc_vcore** %5, align 8
  %10 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %11 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %10, i32 0, i32 15
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %14 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %16 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 11
  store i32 %17, i32* %20, align 8
  %21 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %22 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 10
  store i32 %23, i32* %26, align 4
  %27 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %28 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 9
  store i32 %29, i32* %32, align 8
  %33 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %34 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 8
  store i32 %35, i32* %38, align 4
  %39 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %40 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %43 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %45 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 7
  store i32 %46, i32* %49, align 8
  %50 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %51 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  store i32 %52, i32* %55, align 4
  %56 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %57 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 8
  %62 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %63 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 4
  %68 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %69 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 5
  store i32 %70, i32* %74, align 4
  %75 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %76 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  store i32 %77, i32* %81, align 4
  %82 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %83 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  store i32 %86, i32* %90, align 4
  %91 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %92 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 4
  %100 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %101 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  %109 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %110 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %115 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 4
  %118 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %119 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %122 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %125 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %131 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
