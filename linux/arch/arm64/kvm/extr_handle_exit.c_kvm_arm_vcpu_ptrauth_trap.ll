; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_handle_exit.c_kvm_arm_vcpu_ptrauth_trap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_handle_exit.c_kvm_arm_vcpu_ptrauth_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_cpu_context* }
%struct.kvm_cpu_context = type { i32 }

@APIA = common dso_local global i32 0, align 4
@APIB = common dso_local global i32 0, align 4
@APDA = common dso_local global i32 0, align 4
@APDB = common dso_local global i32 0, align 4
@APGA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arm_vcpu_ptrauth_trap(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_cpu_context*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call i64 @vcpu_has_ptrauth(%struct.kvm_vcpu* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call i32 @vcpu_ptrauth_enable(%struct.kvm_vcpu* %8)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.kvm_cpu_context*, %struct.kvm_cpu_context** %12, align 8
  store %struct.kvm_cpu_context* %13, %struct.kvm_cpu_context** %3, align 8
  %14 = load %struct.kvm_cpu_context*, %struct.kvm_cpu_context** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_cpu_context, %struct.kvm_cpu_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @APIA, align 4
  %18 = call i32 @__ptrauth_save_key(i32 %16, i32 %17)
  %19 = load %struct.kvm_cpu_context*, %struct.kvm_cpu_context** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_cpu_context, %struct.kvm_cpu_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @APIB, align 4
  %23 = call i32 @__ptrauth_save_key(i32 %21, i32 %22)
  %24 = load %struct.kvm_cpu_context*, %struct.kvm_cpu_context** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_cpu_context, %struct.kvm_cpu_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @APDA, align 4
  %28 = call i32 @__ptrauth_save_key(i32 %26, i32 %27)
  %29 = load %struct.kvm_cpu_context*, %struct.kvm_cpu_context** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_cpu_context, %struct.kvm_cpu_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @APDB, align 4
  %33 = call i32 @__ptrauth_save_key(i32 %31, i32 %32)
  %34 = load %struct.kvm_cpu_context*, %struct.kvm_cpu_context** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_cpu_context, %struct.kvm_cpu_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @APGA, align 4
  %38 = call i32 @__ptrauth_save_key(i32 %36, i32 %37)
  br label %42

39:                                               ; preds = %1
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %41 = call i32 @kvm_inject_undefined(%struct.kvm_vcpu* %40)
  br label %42

42:                                               ; preds = %39, %7
  ret void
}

declare dso_local i64 @vcpu_has_ptrauth(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_ptrauth_enable(%struct.kvm_vcpu*) #1

declare dso_local i32 @__ptrauth_save_key(i32, i32) #1

declare dso_local i32 @kvm_inject_undefined(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
