; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_io.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_io(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %10 = call i64 @vmcs_readl(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = and i64 %11, 16
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = call i32 @kvm_emulate_instruction(%struct.kvm_vcpu* %23, i32 0)
  store i32 %24, i32* %2, align 4
  br label %42

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = lshr i64 %26, 16
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i64, i64* %4, align 8
  %30 = and i64 %29, 7
  %31 = add i64 %30, 1
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @kvm_fast_pio(%struct.kvm_vcpu* %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %25, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i32 @kvm_emulate_instruction(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_fast_pio(%struct.kvm_vcpu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
