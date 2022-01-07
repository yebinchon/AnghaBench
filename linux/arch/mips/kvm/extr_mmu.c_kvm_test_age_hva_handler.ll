; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_test_age_hva_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_test_age_hva_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i32, i32, %struct.kvm_memory_slot*, i8*)* @kvm_test_age_hva_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_test_age_hva_handler(%struct.kvm* %0, i32 %1, i32 %2, %struct.kvm_memory_slot* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_memory_slot*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.kvm_memory_slot* %3, %struct.kvm_memory_slot** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.kvm*, %struct.kvm** %7, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i32* @kvm_mips_pte_for_gpa(%struct.kvm* %17, i32* null, i32 %18)
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %27

23:                                               ; preds = %5
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pte_young(i32 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32* @kvm_mips_pte_for_gpa(%struct.kvm*, i32*, i32) #1

declare dso_local i32 @pte_young(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
