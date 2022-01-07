; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_debug.c_kvm_arm_clear_debug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_debug.c_kvm_arm_clear_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i32* }

@KVM_GUESTDBG_USE_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"BKPTS\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"WAPTS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arm_clear_debug(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %3 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %4 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @trace_kvm_arm_clear_debug(i32 %5)
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %1
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = call i32 @restore_guest_debug_regs(%struct.kvm_vcpu* %12)
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @KVM_GUESTDBG_USE_HW, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %11
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = call i32 @kvm_arm_reset_debug_ptr(%struct.kvm_vcpu* %21)
  %23 = call i32 (...) @get_num_brps()
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @trace_kvm_arm_set_regset(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23, i32* %30, i32* %37)
  %39 = call i32 (...) @get_num_wrps()
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @trace_kvm_arm_set_regset(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32* %46, i32* %53)
  br label %55

55:                                               ; preds = %20, %11
  br label %56

56:                                               ; preds = %55, %1
  ret void
}

declare dso_local i32 @trace_kvm_arm_clear_debug(i32) #1

declare dso_local i32 @restore_guest_debug_regs(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_arm_reset_debug_ptr(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_arm_set_regset(i8*, i32, i32*, i32*) #1

declare dso_local i32 @get_num_brps(...) #1

declare dso_local i32 @get_num_wrps(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
