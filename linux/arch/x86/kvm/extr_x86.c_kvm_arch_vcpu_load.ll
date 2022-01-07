; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.kvm_vcpu*, i32)*, i64 (...)* }
%struct.kvm_vcpu = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_8__* null, align 8
@wbinvd_ipi = common dso_local global i32 0, align 4
@TIF_NEED_FPU_LOAD = common dso_local global i32 0, align 4
@KVM_REQ_CLOCK_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"KVM discovered backwards TSC\00", align 1
@KVM_REQ_GLOBAL_CLOCK_UPDATE = common dso_local global i32 0, align 4
@KVM_REQ_MIGRATE_TIMER = common dso_local global i32 0, align 4
@KVM_REQ_STEAL_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_vcpu_load(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call i64 @need_emulate_wbinvd(%struct.kvm_vcpu* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64 (...)*, i64 (...)** %12, align 8
  %14 = call i64 (...) %13()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @cpumask_set_cpu(i32 %17, i32 %21)
  br label %41

23:                                               ; preds = %10
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @wbinvd_ipi, align 4
  %39 = call i32 @smp_call_function_single(i32 %37, i32 %38, i32* null, i32 1)
  br label %40

40:                                               ; preds = %34, %28, %23
  br label %41

41:                                               ; preds = %40, %16
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %44, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 %45(%struct.kvm_vcpu* %46, i32 %47)
  %49 = call i32 (...) @fpregs_assert_state_consistent()
  %50 = load i32, i32* @TIF_NEED_FPU_LOAD, align 4
  %51 = call i64 @test_thread_flag(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = call i32 (...) @switch_fpu_return()
  br label %55

55:                                               ; preds = %53, %42
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @adjust_tsc_offset_host(%struct.kvm_vcpu* %63, i32 %67)
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load i32, i32* @KVM_REQ_CLOCK_UPDATE, align 4
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = call i32 @kvm_make_request(i32 %72, %struct.kvm_vcpu* %73)
  br label %75

75:                                               ; preds = %62, %55
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = call i64 (...) @kvm_check_tsc_unstable()
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %161

87:                                               ; preds = %84, %75
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %101

94:                                               ; preds = %87
  %95 = call i64 (...) @rdtsc()
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %95, %99
  br label %101

101:                                              ; preds = %94, %93
  %102 = phi i64 [ 0, %93 ], [ %100, %94 ]
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @mark_tsc_unstable(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %101
  %108 = call i64 (...) @kvm_check_tsc_unstable()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %113 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @kvm_compute_tsc_offset(%struct.kvm_vcpu* %111, i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @kvm_vcpu_write_tsc_offset(%struct.kvm_vcpu* %117, i32 %118)
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %121 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %110, %107
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %125 = call i64 @kvm_lapic_hv_timer_in_use(%struct.kvm_vcpu* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %129 = call i32 @kvm_lapic_restart_hv_timer(%struct.kvm_vcpu* %128)
  br label %130

130:                                              ; preds = %127, %123
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %130
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %147

143:                                              ; preds = %138, %130
  %144 = load i32, i32* @KVM_REQ_GLOBAL_CLOCK_UPDATE, align 4
  %145 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %146 = call i32 @kvm_make_request(i32 %144, %struct.kvm_vcpu* %145)
  br label %147

147:                                              ; preds = %143, %138
  %148 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %149 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32, i32* @KVM_REQ_MIGRATE_TIMER, align 4
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %156 = call i32 @kvm_make_request(i32 %154, %struct.kvm_vcpu* %155)
  br label %157

157:                                              ; preds = %153, %147
  %158 = load i32, i32* %4, align 4
  %159 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %160 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %157, %84
  %162 = load i32, i32* @KVM_REQ_STEAL_UPDATE, align 4
  %163 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %164 = call i32 @kvm_make_request(i32 %162, %struct.kvm_vcpu* %163)
  ret void
}

declare dso_local i64 @need_emulate_wbinvd(%struct.kvm_vcpu*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, i32*, i32) #1

declare dso_local i32 @fpregs_assert_state_consistent(...) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @switch_fpu_return(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @adjust_tsc_offset_host(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_check_tsc_unstable(...) #1

declare dso_local i64 @rdtsc(...) #1

declare dso_local i32 @mark_tsc_unstable(i8*) #1

declare dso_local i32 @kvm_compute_tsc_offset(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_write_tsc_offset(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_lapic_hv_timer_in_use(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lapic_restart_hv_timer(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
