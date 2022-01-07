; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_check_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_check_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_6__, %struct.kvm_run* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.kvm_run = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }

@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@DR7_BP_EN_MASK = common dso_local global i32 0, align 4
@DR6_FIXED_1 = common dso_local global i32 0, align 4
@DR6_RTM = common dso_local global i32 0, align 4
@DB_VECTOR = common dso_local global i32 0, align 4
@KVM_EXIT_DEBUG = common dso_local global i32 0, align 4
@X86_EFLAGS_RF = common dso_local global i32 0, align 4
@DR_TRAP_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32*)* @kvm_vcpu_check_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vcpu_check_breakpoint(%struct.kvm_vcpu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvm_run*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %69

18:                                               ; preds = %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DR7_BP_EN_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %18
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 2
  %29 = load %struct.kvm_run*, %struct.kvm_run** %28, align 8
  store %struct.kvm_run* %29, %struct.kvm_run** %6, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = call i64 @kvm_get_linear_rip(%struct.kvm_vcpu* %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kvm_vcpu_check_hw_bp(i64 %32, i32 0, i32 %36, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %26
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @DR6_FIXED_1, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @DR6_RTM, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %51 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %56 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i64 %54, i64* %58, align 8
  %59 = load i32, i32* @DB_VECTOR, align 4
  %60 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %61 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 8
  %64 = load i32, i32* @KVM_EXIT_DEBUG, align 4
  %65 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %66 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32*, i32** %5, align 8
  store i32 0, i32* %67, align 4
  store i32 1, i32* %3, align 4
  br label %121

68:                                               ; preds = %26
  br label %69

69:                                               ; preds = %68, %18, %2
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DR7_BP_EN_MASK, align 4
  %75 = and i32 %73, %74
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %120

78:                                               ; preds = %69
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %80 = call i32 @kvm_get_rflags(%struct.kvm_vcpu* %79)
  %81 = load i32, i32* @X86_EFLAGS_RF, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %120, label %84

84:                                               ; preds = %78
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %86 = call i64 @kvm_get_linear_rip(%struct.kvm_vcpu* %85)
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %93 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @kvm_vcpu_check_hw_bp(i64 %87, i32 0, i32 %91, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %84
  %100 = load i32, i32* @DR_TRAP_BITS, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %103 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %101
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @DR6_RTM, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 4
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %116 = load i32, i32* @DB_VECTOR, align 4
  %117 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %115, i32 %116)
  %118 = load i32*, i32** %5, align 8
  store i32 1, i32* %118, align 4
  store i32 1, i32* %3, align 4
  br label %121

119:                                              ; preds = %84
  br label %120

120:                                              ; preds = %119, %78, %69
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %99, %44
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @kvm_get_linear_rip(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_check_hw_bp(i64, i32, i32, i32) #1

declare dso_local i32 @kvm_get_rflags(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
