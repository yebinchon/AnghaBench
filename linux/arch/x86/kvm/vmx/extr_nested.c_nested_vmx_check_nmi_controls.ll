; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_nmi_controls.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_nmi_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcs12 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPU_BASED_VIRTUAL_NMI_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmcs12*)* @nested_vmx_check_nmi_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_check_nmi_controls(%struct.vmcs12* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmcs12*, align 8
  store %struct.vmcs12* %0, %struct.vmcs12** %3, align 8
  %4 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %5 = call i32 @nested_cpu_has_nmi_exiting(%struct.vmcs12* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %9 = call i64 @nested_cpu_has_virtual_nmis(%struct.vmcs12* %8)
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ false, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 @CC(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %11
  %20 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %21 = call i64 @nested_cpu_has_virtual_nmis(%struct.vmcs12* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %25 = load i32, i32* @CPU_BASED_VIRTUAL_NMI_PENDING, align 4
  %26 = call i64 @nested_cpu_has(%struct.vmcs12* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i1 [ false, %19 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @CC(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @CC(i32) #1

declare dso_local i32 @nested_cpu_has_nmi_exiting(%struct.vmcs12*) #1

declare dso_local i64 @nested_cpu_has_virtual_nmis(%struct.vmcs12*) #1

declare dso_local i64 @nested_cpu_has(%struct.vmcs12*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
