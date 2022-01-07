; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_enable_nmi_window.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_enable_nmi_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@HF_NMI_MASK = common dso_local global i32 0, align 4
@HF_IRET_MASK = common dso_local global i32 0, align 4
@INTERCEPT_STGI = common dso_local global i32 0, align 4
@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@X86_EFLAGS_RF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @enable_nmi_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_nmi_window(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %4)
  store %struct.vcpu_svm* %5, %struct.vcpu_svm** %3, align 8
  %6 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %7 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @HF_NMI_MASK, align 4
  %12 = load i32, i32* @HF_IRET_MASK, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = load i32, i32* @HF_NMI_MASK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %20 = call i32 @gif_set(%struct.vcpu_svm* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %24 = call i64 @vgif_enabled(%struct.vcpu_svm* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %28 = load i32, i32* @INTERCEPT_STGI, align 4
  %29 = call i32 @set_intercept(%struct.vcpu_svm* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %55

31:                                               ; preds = %18
  %32 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %33 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %55

38:                                               ; preds = %31
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = call i32 @svm_get_rflags(%struct.kvm_vcpu* %39)
  %41 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %42 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %44 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* @X86_EFLAGS_TF, align 4
  %46 = load i32, i32* @X86_EFLAGS_RF, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %49 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %47
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %38, %37, %30, %17
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @gif_set(%struct.vcpu_svm*) #1

declare dso_local i64 @vgif_enabled(%struct.vcpu_svm*) #1

declare dso_local i32 @set_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @svm_get_rflags(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
