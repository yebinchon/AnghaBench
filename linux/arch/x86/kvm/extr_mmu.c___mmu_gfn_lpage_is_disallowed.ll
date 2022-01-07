; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___mmu_gfn_lpage_is_disallowed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___mmu_gfn_lpage_is_disallowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i32 }
%struct.kvm_lpage_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.kvm_memory_slot*)* @__mmu_gfn_lpage_is_disallowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mmu_gfn_lpage_is_disallowed(i32 %0, i32 %1, %struct.kvm_memory_slot* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_memory_slot*, align 8
  %8 = alloca %struct.kvm_lpage_info*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot** %7, align 8
  %9 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %10 = icmp ne %struct.kvm_memory_slot* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.kvm_lpage_info* @lpage_info_slot(i32 %12, %struct.kvm_memory_slot* %13, i32 %14)
  store %struct.kvm_lpage_info* %15, %struct.kvm_lpage_info** %8, align 8
  %16 = load %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %8, align 8
  %17 = getelementptr inbounds %struct.kvm_lpage_info, %struct.kvm_lpage_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %24

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.kvm_lpage_info* @lpage_info_slot(i32, %struct.kvm_memory_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
