; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_avic_get_physical_id_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_avic_get_physical_id_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_svm = type { i32 }

@AVIC_MAX_PHYSICAL_ID_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.kvm_vcpu*, i32)* @avic_get_physical_id_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @avic_get_physical_id_entry(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kvm_svm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.kvm_svm* @to_kvm_svm(i32 %10)
  store %struct.kvm_svm* %11, %struct.kvm_svm** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AVIC_MAX_PHYSICAL_ID_COUNT, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.kvm_svm*, %struct.kvm_svm** %7, align 8
  %18 = getelementptr inbounds %struct.kvm_svm, %struct.kvm_svm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @page_address(i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %3, align 8
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i32*, i32** %3, align 8
  ret i32* %26
}

declare dso_local %struct.kvm_svm* @to_kvm_svm(i32) #1

declare dso_local i32* @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
