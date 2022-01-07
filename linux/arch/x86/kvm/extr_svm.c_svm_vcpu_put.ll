; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_vcpu_put.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_vcpu_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vcpu_svm = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@NR_HOST_SAVE_USER_MSRS = common dso_local global i32 0, align 4
@host_save_user_msrs = common dso_local global i32* null, align 8
@MSR_KERNEL_GS_BASE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@fs = common dso_local global i32 0, align 4
@gs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @svm_vcpu_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_vcpu_put(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %5)
  store %struct.vcpu_svm* %6, %struct.vcpu_svm** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call i32 @avic_vcpu_put(%struct.kvm_vcpu* %7)
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %15 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @kvm_load_ldt(i32 %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %37, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NR_HOST_SAVE_USER_MSRS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i32*, i32** @host_save_user_msrs, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %30 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wrmsrl(i32 %28, i32 %35)
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %19

40:                                               ; preds = %19
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @avic_vcpu_put(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_load_ldt(i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
