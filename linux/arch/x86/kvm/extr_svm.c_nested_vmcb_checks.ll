; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_vmcb_checks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_vmcb_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@INTERCEPT_VMRUN = common dso_local global i64 0, align 8
@SVM_NESTED_CTL_NP_ENABLE = common dso_local global i32 0, align 4
@npt_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmcb*)* @nested_vmcb_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmcb_checks(%struct.vmcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmcb*, align 8
  store %struct.vmcb* %0, %struct.vmcb** %3, align 8
  %4 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %5 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @INTERCEPT_VMRUN, align 8
  %9 = shl i64 1, %8
  %10 = and i64 %7, %9
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %15 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %33

20:                                               ; preds = %13
  %21 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %22 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SVM_NESTED_CTL_NP_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @npt_enabled, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %28, %20
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %19, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
