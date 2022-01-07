; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_pages_clear_parents.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_pages_clear_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_page_path = type { i32*, %struct.kvm_mmu_page** }
%struct.kvm_mmu_page = type { i32 }

@INVALID_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_page_path*)* @mmu_pages_clear_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_pages_clear_parents(%struct.mmu_page_path* %0) #0 {
  %2 = alloca %struct.mmu_page_path*, align 8
  %3 = alloca %struct.kvm_mmu_page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmu_page_path* %0, %struct.mmu_page_path** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load %struct.mmu_page_path*, %struct.mmu_page_path** %2, align 8
  %8 = getelementptr inbounds %struct.mmu_page_path, %struct.mmu_page_path* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mmu_page_path*, %struct.mmu_page_path** %2, align 8
  %15 = getelementptr inbounds %struct.mmu_page_path, %struct.mmu_page_path* %14, i32 0, i32 1
  %16 = load %struct.kvm_mmu_page**, %struct.kvm_mmu_page*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %16, i64 %18
  %20 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %19, align 8
  store %struct.kvm_mmu_page* %20, %struct.kvm_mmu_page** %3, align 8
  %21 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %22 = icmp ne %struct.kvm_mmu_page* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  br label %41

24:                                               ; preds = %6
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @INVALID_INDEX, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @clear_unsync_child_bit(%struct.kvm_mmu_page* %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %24
  %36 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %37 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %6, label %41

41:                                               ; preds = %23, %35
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clear_unsync_child_bit(%struct.kvm_mmu_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
