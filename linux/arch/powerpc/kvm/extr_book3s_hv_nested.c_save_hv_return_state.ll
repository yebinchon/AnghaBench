; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_save_hv_return_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_save_hv_return_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.kvmppc_vcore* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.kvmppc_vcore = type { i32, i32 }
%struct.hv_guest_state = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, %struct.hv_guest_state*)* @save_hv_return_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_hv_return_state(%struct.kvm_vcpu* %0, i32 %1, %struct.hv_guest_state* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_guest_state*, align 8
  %7 = alloca %struct.kvmppc_vcore*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hv_guest_state* %2, %struct.hv_guest_state** %6, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 12
  %11 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %10, align 8
  store %struct.kvmppc_vcore* %11, %struct.kvmppc_vcore** %7, align 8
  %12 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %7, align 8
  %13 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %16 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %15, i32 0, i32 15
  store i32 %14, i32* %16, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %22 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %21, i32 0, i32 14
  store i32 %20, i32* %22, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %28 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %27, i32 0, i32 13
  store i32 %26, i32* %28, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %34 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 8
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %40 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 4
  %41 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %7, align 8
  %42 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %45 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %52 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %59 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %66 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %75 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %74, i32 0, i32 7
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %73, i32* %77, align 4
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %84 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 %82, i32* %86, align 4
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %93 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %92, i32 0, i32 7
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  store i32 %91, i32* %95, align 4
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %101 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %103 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %107 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %109 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %113 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %5, align 4
  switch i32 %114, label %148 [
    i32 130, label %115
    i32 128, label %134
    i32 129, label %141
  ]

115:                                              ; preds = %3
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %121 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %127 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %133 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  br label %148

134:                                              ; preds = %3
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %136 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %140 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %148

141:                                              ; preds = %3
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %143 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.hv_guest_state*, %struct.hv_guest_state** %6, align 8
  %147 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %3, %141, %134, %115
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
