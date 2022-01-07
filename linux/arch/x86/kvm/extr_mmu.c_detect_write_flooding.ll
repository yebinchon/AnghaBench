; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_detect_write_flooding.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_detect_write_flooding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_page = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PT_PAGE_TABLE_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_mmu_page*)* @detect_write_flooding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_write_flooding(%struct.kvm_mmu_page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm_mmu_page* %0, %struct.kvm_mmu_page** %3, align 8
  %4 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %5 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PT_PAGE_TABLE_LEVEL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %12, i32 0, i32 0
  %14 = call i32 @atomic_inc(i32* %13)
  %15 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  %18 = icmp sge i32 %17, 3
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %11, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
