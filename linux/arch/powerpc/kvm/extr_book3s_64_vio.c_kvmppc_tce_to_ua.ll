; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvmppc_tce_to_ua.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvmppc_tce_to_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@TCE_PCI_READ = common dso_local global i64 0, align 8
@TCE_PCI_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm*, i64, i64*)* @kvmppc_tce_to_ua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvmppc_tce_to_ua(%struct.kvm* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @PAGE_SHIFT, align 8
  %12 = lshr i64 %10, %11
  store i64 %12, i64* %8, align 8
  %13 = load %struct.kvm*, %struct.kvm** %5, align 8
  %14 = call i32 @kvm_memslots(%struct.kvm* %13)
  %15 = load i64, i64* %8, align 8
  %16 = call %struct.kvm_memory_slot* @search_memslots(i32 %14, i64 %15)
  store %struct.kvm_memory_slot* %16, %struct.kvm_memory_slot** %9, align 8
  %17 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %18 = icmp ne %struct.kvm_memory_slot* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %4, align 8
  br label %36

22:                                               ; preds = %3
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @__gfn_to_hva_memslot(%struct.kvm_memory_slot* %23, i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @PAGE_MASK, align 8
  %28 = load i64, i64* @TCE_PCI_READ, align 8
  %29 = or i64 %27, %28
  %30 = load i64, i64* @TCE_PCI_WRITE, align 8
  %31 = or i64 %29, %30
  %32 = xor i64 %31, -1
  %33 = and i64 %26, %32
  %34 = or i64 %25, %33
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  store i64 0, i64* %4, align 8
  br label %36

36:                                               ; preds = %22, %19
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local %struct.kvm_memory_slot* @search_memslots(i32, i64) #1

declare dso_local i32 @kvm_memslots(%struct.kvm*) #1

declare dso_local i64 @__gfn_to_hva_memslot(%struct.kvm_memory_slot*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
