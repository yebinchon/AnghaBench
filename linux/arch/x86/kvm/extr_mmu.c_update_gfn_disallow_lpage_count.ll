; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_update_gfn_disallow_lpage_count.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_update_gfn_disallow_lpage_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i32 }
%struct.kvm_lpage_info = type { i64 }

@PT_DIRECTORY_LEVEL = common dso_local global i32 0, align 4
@PT_MAX_HUGEPAGE_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_memory_slot*, i32, i32)* @update_gfn_disallow_lpage_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_gfn_disallow_lpage_count(%struct.kvm_memory_slot* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_lpage_info*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_memory_slot* %0, %struct.kvm_memory_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @PT_DIRECTORY_LEVEL, align 4
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @PT_MAX_HUGEPAGE_LEVEL, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.kvm_lpage_info* @lpage_info_slot(i32 %15, %struct.kvm_memory_slot* %16, i32 %17)
  store %struct.kvm_lpage_info* %18, %struct.kvm_lpage_info** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %7, align 8
  %22 = getelementptr inbounds %struct.kvm_lpage_info, %struct.kvm_lpage_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %7, align 8
  %26 = getelementptr inbounds %struct.kvm_lpage_info, %struct.kvm_lpage_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %10

34:                                               ; preds = %10
  ret void
}

declare dso_local %struct.kvm_lpage_info* @lpage_info_slot(i32, %struct.kvm_memory_slot*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
