; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_exit_handled_io.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_exit_handled_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i64, i64 }

@CPU_BASED_USE_IO_BITMAPS = common dso_local global i32 0, align 4
@CPU_BASED_UNCOND_IO_EXITING = common dso_local global i32 0, align 4
@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*)* @nested_vmx_exit_handled_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_exit_handled_io(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %5, align 8
  %12 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %13 = load i32, i32* @CPU_BASED_USE_IO_BITMAPS, align 4
  %14 = call i32 @nested_cpu_has(%struct.vmcs12* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %18 = load i32, i32* @CPU_BASED_UNCOND_IO_EXITING, align 4
  %19 = call i32 @nested_cpu_has(%struct.vmcs12* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %81

20:                                               ; preds = %2
  %21 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %22 = call i64 @vmcs_readl(i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = lshr i64 %23, 16
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %6, align 8
  %27 = and i64 %26, 7
  %28 = add i64 %27, 1
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  store i64 -1, i64* %8, align 8
  store i32 -1, i32* %11, align 4
  br label %30

30:                                               ; preds = %74, %20
  %31 = load i32, i32* %10, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = icmp ult i32 %34, 32768
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %38 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  br label %49

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = icmp ult i32 %41, 65536
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %45 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  br label %48

47:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %81

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 32767
  %52 = udiv i32 %51, 8
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %7, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @kvm_vcpu_read_guest(%struct.kvm_vcpu* %60, i64 %61, i32* %11, i32 1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %81

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 7
  %70 = shl i32 1, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %81

74:                                               ; preds = %66
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %10, align 4
  %79 = load i64, i64* %7, align 8
  store i64 %79, i64* %8, align 8
  br label %30

80:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %73, %64, %47, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @nested_cpu_has(%struct.vmcs12*, i32) #1

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i64 @kvm_vcpu_read_guest(%struct.kvm_vcpu*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
