; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr_papr.c_kvmppc_h_pr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr_papr.c_kvmppc_h_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MAX_HCALL_OPCODE = common dso_local global i64 0, align 8
@EMULATE_FAIL = common dso_local global i32 0, align 4
@MSR_EE = common dso_local global i32 0, align 4
@KVM_REQ_UNHALT = common dso_local global i32 0, align 4
@EMULATE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_h_pr(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @MAX_HCALL_OPCODE, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = udiv i64 %12, 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @test_bit(i64 %13, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  %23 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %23, i32* %3, align 4
  br label %112

24:                                               ; preds = %11, %2
  %25 = load i64, i64* %5, align 8
  switch i64 %25, label %110 [
    i64 141, label %26
    i64 132, label %29
    i64 135, label %32
    i64 144, label %35
    i64 134, label %38
    i64 133, label %41
    i64 130, label %44
    i64 143, label %47
    i64 137, label %65
    i64 136, label %68
    i64 129, label %71
    i64 142, label %71
    i64 140, label %71
    i64 139, label %71
    i64 138, label %71
    i64 128, label %71
    i64 131, label %80
  ]

26:                                               ; preds = %24
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = call i32 @kvmppc_h_pr_enter(%struct.kvm_vcpu* %27)
  store i32 %28, i32* %3, align 4
  br label %112

29:                                               ; preds = %24
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = call i32 @kvmppc_h_pr_remove(%struct.kvm_vcpu* %30)
  store i32 %31, i32* %3, align 4
  br label %112

32:                                               ; preds = %24
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = call i32 @kvmppc_h_pr_protect(%struct.kvm_vcpu* %33)
  store i32 %34, i32* %3, align 4
  br label %112

35:                                               ; preds = %24
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = call i32 @kvmppc_h_pr_bulk_remove(%struct.kvm_vcpu* %36)
  store i32 %37, i32* %3, align 4
  br label %112

38:                                               ; preds = %24
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %40 = call i32 @kvmppc_h_pr_put_tce(%struct.kvm_vcpu* %39)
  store i32 %40, i32* %3, align 4
  br label %112

41:                                               ; preds = %24
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %43 = call i32 @kvmppc_h_pr_put_tce_indirect(%struct.kvm_vcpu* %42)
  store i32 %43, i32* %3, align 4
  br label %112

44:                                               ; preds = %24
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %46 = call i32 @kvmppc_h_pr_stuff_tce(%struct.kvm_vcpu* %45)
  store i32 %46, i32* %3, align 4
  br label %112

47:                                               ; preds = %24
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %50 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %49)
  %51 = load i32, i32* @MSR_EE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @kvmppc_set_msr_fast(%struct.kvm_vcpu* %48, i32 %52)
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %55 = call i32 @kvm_vcpu_block(%struct.kvm_vcpu* %54)
  %56 = load i32, i32* @KVM_REQ_UNHALT, align 4
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %58 = call i32 @kvm_clear_request(i32 %56, %struct.kvm_vcpu* %57)
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %64, i32* %3, align 4
  br label %112

65:                                               ; preds = %24
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %67 = call i32 @kvmppc_h_pr_logical_ci_load(%struct.kvm_vcpu* %66)
  store i32 %67, i32* %3, align 4
  br label %112

68:                                               ; preds = %24
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %70 = call i32 @kvmppc_h_pr_logical_ci_store(%struct.kvm_vcpu* %69)
  store i32 %70, i32* %3, align 4
  br label %112

71:                                               ; preds = %24, %24, %24, %24, %24, %24
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %73 = call i32 @kvmppc_xics_enabled(%struct.kvm_vcpu* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @kvmppc_h_pr_xics_hcall(%struct.kvm_vcpu* %76, i64 %77)
  store i32 %78, i32* %3, align 4
  br label %112

79:                                               ; preds = %71
  br label %110

80:                                               ; preds = %24
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @list_empty(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %110

89:                                               ; preds = %80
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @srcu_read_lock(i32* %93)
  store i32 %94, i32* %7, align 4
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %96 = call i32 @kvmppc_rtas_hcall(%struct.kvm_vcpu* %95)
  store i32 %96, i32* %6, align 4
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @srcu_read_unlock(i32* %100, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %110

106:                                              ; preds = %89
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %108 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %107, i32 3, i32 0)
  %109 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %109, i32* %3, align 4
  br label %112

110:                                              ; preds = %24, %105, %88, %79
  %111 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %106, %75, %68, %65, %47, %44, %41, %38, %35, %32, %29, %26, %22
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @kvmppc_h_pr_enter(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_h_pr_remove(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_h_pr_protect(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_h_pr_bulk_remove(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_h_pr_put_tce(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_h_pr_put_tce_indirect(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_h_pr_stuff_tce(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_msr_fast(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_block(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_clear_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_h_pr_logical_ci_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_h_pr_logical_ci_store(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_xics_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_h_pr_xics_hcall(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @kvmppc_rtas_hcall(%struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
