; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_account_huge_nx_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_account_huge_nx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_mmu_page = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_mmu_page*)* @account_huge_nx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @account_huge_nx_page(%struct.kvm* %0, %struct.kvm_mmu_page* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %4, align 8
  %5 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %6 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %24

10:                                               ; preds = %2
  %11 = load %struct.kvm*, %struct.kvm** %3, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %16, i32 0, i32 1
  %18 = load %struct.kvm*, %struct.kvm** %3, align 8
  %19 = getelementptr inbounds %struct.kvm, %struct.kvm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @list_add_tail(i32* %17, i32* %20)
  %22 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
