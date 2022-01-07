; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_emulate_hypercall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_emulate_hypercall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@KVM_EPERM = common dso_local global i64 0, align 8
@KVM_ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_emulate_hypercall(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @kvm_hv_hypercall_enabled(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = call i32 @kvm_hv_hypercall(%struct.kvm_vcpu* %17)
  store i32 %18, i32* %2, align 4
  br label %112

19:                                               ; preds = %1
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = call i64 @kvm_rax_read(%struct.kvm_vcpu* %20)
  store i64 %21, i64* %4, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = call i64 @kvm_rbx_read(%struct.kvm_vcpu* %22)
  store i64 %23, i64* %5, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = call i64 @kvm_rcx_read(%struct.kvm_vcpu* %24)
  store i64 %25, i64* %6, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = call i64 @kvm_rdx_read(%struct.kvm_vcpu* %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = call i64 @kvm_rsi_read(%struct.kvm_vcpu* %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @trace_kvm_hypercall(i64 %30, i64 %31, i64 %32, i64 %33, i64 %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = call i32 @is_64_bit_mode(%struct.kvm_vcpu* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %19
  %41 = load i64, i64* %4, align 8
  %42 = and i64 %41, 4294967295
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = and i64 %43, 4294967295
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = and i64 %45, 4294967295
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = and i64 %47, 4294967295
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = and i64 %49, 4294967295
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %40, %19
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %53, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = call i64 %54(%struct.kvm_vcpu* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i64, i64* @KVM_EPERM, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %9, align 8
  br label %96

61:                                               ; preds = %51
  %62 = load i64, i64* %4, align 8
  switch i64 %62, label %92 [
    i64 128, label %63
    i64 131, label %64
    i64 129, label %76
    i64 130, label %86
  ]

63:                                               ; preds = %61
  store i64 0, i64* %9, align 8
  br label %95

64:                                               ; preds = %61
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @kvm_pv_kick_cpu_op(i32 %67, i64 %68, i64 %69)
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @kvm_sched_yield(i32 %73, i64 %74)
  store i64 0, i64* %9, align 8
  br label %95

76:                                               ; preds = %61
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @kvm_pv_send_ipi(i32 %79, i64 %80, i64 %81, i64 %82, i64 %83, i32 %84)
  store i64 %85, i64* %9, align 8
  br label %95

86:                                               ; preds = %61
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @kvm_sched_yield(i32 %89, i64 %90)
  store i64 0, i64* %9, align 8
  br label %95

92:                                               ; preds = %61
  %93 = load i64, i64* @KVM_ENOSYS, align 8
  %94 = sub i64 0, %93
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %92, %86, %76, %64, %63
  br label %96

96:                                               ; preds = %95, %58
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %9, align 8
  store i64 %100, i64* %9, align 8
  br label %101

101:                                              ; preds = %99, %96
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @kvm_rax_write(%struct.kvm_vcpu* %102, i64 %103)
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %111 = call i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu* %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %101, %16
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @kvm_hv_hypercall_enabled(i32) #1

declare dso_local i32 @kvm_hv_hypercall(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_rax_read(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_rbx_read(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_rcx_read(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_rdx_read(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_rsi_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_hypercall(i64, i64, i64, i64, i64) #1

declare dso_local i32 @is_64_bit_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_pv_kick_cpu_op(i32, i64, i64) #1

declare dso_local i32 @kvm_sched_yield(i32, i64) #1

declare dso_local i64 @kvm_pv_send_ipi(i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @kvm_rax_write(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
