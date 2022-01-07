; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_get_written_sptes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_get_written_sptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_page = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PT32_ROOT_LEVEL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.kvm_mmu_page*, i32, i32*)* @get_written_sptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_written_sptes(%struct.kvm_mmu_page* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kvm_mmu_page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.kvm_mmu_page* %0, %struct.kvm_mmu_page** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @offset_in_page(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PT32_ROOT_LEVEL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, -8
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 2, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = lshr i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @PAGE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %46 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32* null, i32** %4, align 8
  br label %61

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %54 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = udiv i64 %57, 4
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %10, align 8
  store i32* %60, i32** %4, align 8
  br label %61

61:                                               ; preds = %52, %50
  %62 = load i32*, i32** %4, align 8
  ret i32* %62
}

declare dso_local i32 @offset_in_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
