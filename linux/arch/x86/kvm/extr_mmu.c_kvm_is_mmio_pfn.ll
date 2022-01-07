; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_is_mmio_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_is_mmio_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E820_TYPE_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @kvm_is_mmio_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_is_mmio_pfn(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @pfn_valid(i64 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @is_zero_pfn(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @pfn_to_page(i64 %12)
  %14 = call i64 @PageReserved(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = call i32 (...) @pat_enabled()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @pat_pfn_immune_to_uc_mtrr(i64 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ true, %16 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %11, %7
  %26 = phi i1 [ false, %11 ], [ false, %7 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %40

28:                                               ; preds = %1
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @pfn_to_hpa(i64 %29)
  %31 = load i64, i64* %3, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i64 @pfn_to_hpa(i64 %32)
  %34 = sub nsw i64 %33, 1
  %35 = load i32, i32* @E820_TYPE_RAM, align 4
  %36 = call i32 @e820__mapped_raw_any(i64 %30, i64 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %28, %25
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local i32 @is_zero_pfn(i64) #1

declare dso_local i64 @PageReserved(i32) #1

declare dso_local i32 @pfn_to_page(i64) #1

declare dso_local i32 @pat_enabled(...) #1

declare dso_local i64 @pat_pfn_immune_to_uc_mtrr(i64) #1

declare dso_local i32 @e820__mapped_raw_any(i64, i64, i32) #1

declare dso_local i64 @pfn_to_hpa(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
