; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_hcall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_hcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i64 }
%struct.TYPE_4__ = type { i32 }

@H_SUCCESS = common dso_local global i32 0, align 4
@H_HARDWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xics_hcall(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_xics*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %13, align 8
  store %struct.kvmppc_xics* %14, %struct.kvmppc_xics** %6, align 8
  %15 = load i32, i32* @H_SUCCESS, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %17 = icmp ne %struct.kvmppc_xics* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @H_HARDWARE, align 4
  store i32 %25, i32* %3, align 4
  br label %86

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %44 [
    i32 128, label %28
    i32 130, label %38
  ]

28:                                               ; preds = %26
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %30 = call i64 @kvmppc_h_xirr(%struct.kvm_vcpu* %29)
  store i64 %30, i64* %7, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %31, i32 4, i64 %32)
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = call i64 (...) @get_tb()
  %36 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %34, i32 5, i64 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %86

38:                                               ; preds = %26
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %41 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %40, i32 4)
  %42 = call i32 @kvmppc_h_ipoll(%struct.kvm_vcpu* %39, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %86

44:                                               ; preds = %26
  %45 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %46 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i64 @is_kvmppc_hv_enabled(%struct.TYPE_6__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @kvmppc_xics_rm_complete(%struct.kvm_vcpu* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %86

59:                                               ; preds = %49, %44
  %60 = load i32, i32* %5, align 4
  switch i32 %60, label %84 [
    i32 129, label %61
    i32 133, label %67
    i32 132, label %72
    i32 131, label %77
  ]

61:                                               ; preds = %59
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %63 = call i64 @kvmppc_h_xirr(%struct.kvm_vcpu* %62)
  store i64 %63, i64* %7, align 8
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %64, i32 4, i64 %65)
  br label %84

67:                                               ; preds = %59
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %70 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %69, i32 4)
  %71 = call i32 @kvmppc_h_cppr(%struct.kvm_vcpu* %68, i32 %70)
  br label %84

72:                                               ; preds = %59
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %75 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %74, i32 4)
  %76 = call i32 @kvmppc_h_eoi(%struct.kvm_vcpu* %73, i32 %75)
  store i32 %76, i32* %8, align 4
  br label %84

77:                                               ; preds = %59
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %80 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %79, i32 4)
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %82 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %81, i32 5)
  %83 = call i32 @kvmppc_h_ipi(%struct.kvm_vcpu* %78, i32 %80, i32 %82)
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %59, %77, %72, %67, %61
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %55, %38, %28, %24
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @kvmppc_h_xirr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i64) #1

declare dso_local i64 @get_tb(...) #1

declare dso_local i32 @kvmppc_h_ipoll(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @is_kvmppc_hv_enabled(%struct.TYPE_6__*) #1

declare dso_local i32 @kvmppc_xics_rm_complete(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_h_cppr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_h_eoi(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_h_ipi(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
