; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_change_mmu_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_change_mmu_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@invalid_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mmu_change_mmu_pages(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @invalid_list, align 4
  %6 = call i32 @LIST_HEAD(i32 %5)
  %7 = load %struct.kvm*, %struct.kvm** %3, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.kvm*, %struct.kvm** %3, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %29, %16
  %18 = load %struct.kvm*, %struct.kvm** %3, align 8
  %19 = getelementptr inbounds %struct.kvm, %struct.kvm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.kvm*, %struct.kvm** %3, align 8
  %26 = call i32 @prepare_zap_oldest_mmu_page(%struct.kvm* %25, i32* @invalid_list)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %30

29:                                               ; preds = %24
  br label %17

30:                                               ; preds = %28, %17
  %31 = load %struct.kvm*, %struct.kvm** %3, align 8
  %32 = call i32 @kvm_mmu_commit_zap_page(%struct.kvm* %31, i32* @invalid_list)
  %33 = load %struct.kvm*, %struct.kvm** %3, align 8
  %34 = getelementptr inbounds %struct.kvm, %struct.kvm* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %30, %2
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.kvm*, %struct.kvm** %3, align 8
  %40 = getelementptr inbounds %struct.kvm, %struct.kvm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load %struct.kvm*, %struct.kvm** %3, align 8
  %43 = getelementptr inbounds %struct.kvm, %struct.kvm* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @prepare_zap_oldest_mmu_page(%struct.kvm*, i32*) #1

declare dso_local i32 @kvm_mmu_commit_zap_page(%struct.kvm*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
