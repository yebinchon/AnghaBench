; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_exit_handled_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_exit_handled_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i64 }

@CPU_BASED_USE_MSR_BITMAPS = common dso_local global i32 0, align 4
@EXIT_REASON_MSR_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*, i64)* @nested_vmx_exit_handled_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_exit_handled_msr(%struct.kvm_vcpu* %0, %struct.vmcs12* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.vmcs12*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = call i64 @kvm_rcx_read(%struct.kvm_vcpu* %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %14 = load i32, i32* @CPU_BASED_USE_MSR_BITMAPS, align 4
  %15 = call i32 @nested_cpu_has(%struct.vmcs12* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %20 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @EXIT_REASON_MSR_WRITE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %26, 2048
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i64, i64* %8, align 8
  %30 = icmp sge i64 %29, 3221225472
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = sub nsw i64 %32, 3221225472
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %34, 1024
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i64, i64* %8, align 8
  %38 = icmp slt i64 %37, 8192
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sdiv i64 %42, 8
  %44 = add nsw i64 %41, %43
  %45 = call i64 @kvm_vcpu_read_guest(%struct.kvm_vcpu* %40, i64 %44, i8* %10, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %57

48:                                               ; preds = %39
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = load i64, i64* %8, align 8
  %52 = and i64 %51, 7
  %53 = trunc i64 %52 to i32
  %54 = ashr i32 %50, %53
  %55 = and i32 1, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %48, %47, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @kvm_rcx_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_cpu_has(%struct.vmcs12*, i32) #1

declare dso_local i64 @kvm_vcpu_read_guest(%struct.kvm_vcpu*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
