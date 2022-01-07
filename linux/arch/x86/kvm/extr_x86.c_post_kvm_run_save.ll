; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_post_kvm_run_save.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_post_kvm_run_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.kvm_run* }
%struct.kvm_run = type { i32, i32, i32, i32, i32 }

@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@KVM_RUN_X86_SMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @post_kvm_run_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_kvm_run_save(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_run*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 1
  %6 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  store %struct.kvm_run* %6, %struct.kvm_run** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call i32 @kvm_get_rflags(%struct.kvm_vcpu* %7)
  %9 = load i32, i32* @X86_EFLAGS_IF, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = call i64 @is_smm(%struct.kvm_vcpu* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @KVM_RUN_X86_SMM, align 4
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %26 = call i32 @kvm_get_cr8(%struct.kvm_vcpu* %25)
  %27 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %30 = call i32 @kvm_get_apic_base(%struct.kvm_vcpu* %29)
  %31 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %32 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @pic_in_kernel(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %21
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = call i64 @kvm_vcpu_ready_for_interrupt_injection(%struct.kvm_vcpu* %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %21
  %43 = phi i1 [ true, %21 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local i32 @kvm_get_rflags(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_smm(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_get_cr8(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_get_apic_base(%struct.kvm_vcpu*) #1

declare dso_local i64 @pic_in_kernel(i32) #1

declare dso_local i64 @kvm_vcpu_ready_for_interrupt_injection(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
