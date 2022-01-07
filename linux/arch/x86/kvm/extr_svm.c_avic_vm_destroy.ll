; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_avic_vm_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_avic_vm_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_svm = type { i32, i64, i64 }

@avic = common dso_local global i32 0, align 4
@svm_vm_data_hash_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*)* @avic_vm_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avic_vm_destroy(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm_svm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = call %struct.kvm_svm* @to_kvm_svm(%struct.kvm* %5)
  store %struct.kvm_svm* %6, %struct.kvm_svm** %4, align 8
  %7 = load i32, i32* @avic, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  %11 = load %struct.kvm_svm*, %struct.kvm_svm** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_svm, %struct.kvm_svm* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.kvm_svm*, %struct.kvm_svm** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_svm, %struct.kvm_svm* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @__free_page(i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.kvm_svm*, %struct.kvm_svm** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_svm, %struct.kvm_svm* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.kvm_svm*, %struct.kvm_svm** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_svm, %struct.kvm_svm* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @__free_page(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_lock_irqsave(i32* @svm_vm_data_hash_lock, i64 %31)
  %33 = load %struct.kvm_svm*, %struct.kvm_svm** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_svm, %struct.kvm_svm* %33, i32 0, i32 0
  %35 = call i32 @hash_del(i32* %34)
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* @svm_vm_data_hash_lock, i64 %36)
  br label %38

38:                                               ; preds = %30, %9
  ret void
}

declare dso_local %struct.kvm_svm* @to_kvm_svm(%struct.kvm*) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
