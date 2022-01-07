; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_rmode_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_rmode_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GP_VECTOR = common dso_local global i32 0, align 4
@SS_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i64)* @handle_rmode_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rmode_exception(%struct.kvm_vcpu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @GP_VECTOR, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SS_VECTOR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11, %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = call i64 @kvm_emulate_instruction(%struct.kvm_vcpu* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %33 = call i32 @kvm_vcpu_halt(%struct.kvm_vcpu* %32)
  store i32 %33, i32* %4, align 4
  br label %40

34:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %40

35:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %40

36:                                               ; preds = %15, %11
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %37, i32 %38)
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %35, %34, %28
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @kvm_emulate_instruction(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_halt(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
