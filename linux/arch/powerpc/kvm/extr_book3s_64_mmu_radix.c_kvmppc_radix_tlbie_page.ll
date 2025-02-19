; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_radix_tlbie_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_radix_tlbie_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@H_TLB_INVALIDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"KVM: TLB page invalidation hcall failed, rc=%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_radix_tlbie_page(%struct.kvm* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = shl i64 1, %18
  store i64 %19, i64* %9, align 8
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* %9, align 8
  %24 = sub i64 %23, 1
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %6, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %6, align 8
  %28 = call i32 (...) @kvmhv_on_pseries()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @radix__flush_tlb_lpid_page(i32 %31, i64 %32, i64 %33)
  br label %54

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @shift_to_mmu_psize(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @mmu_get_ap(i32 %39)
  %41 = call i64 @PPC_BITLSHIFT(i32 58)
  %42 = shl i64 %40, %41
  %43 = or i64 %38, %42
  store i64 %43, i64* %12, align 8
  %44 = load i32, i32* @H_TLB_INVALIDATE, align 4
  %45 = call i32 @H_TLBIE_P1_ENC(i32 0, i32 0, i32 1)
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @plpar_hcall_norets(i32 %44, i32 %45, i32 %46, i64 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %30, %51, %35
  ret void
}

declare dso_local i32 @kvmhv_on_pseries(...) #1

declare dso_local i32 @radix__flush_tlb_lpid_page(i32, i64, i64) #1

declare dso_local i32 @shift_to_mmu_psize(i32) #1

declare dso_local i64 @mmu_get_ap(i32) #1

declare dso_local i64 @PPC_BITLSHIFT(i32) #1

declare dso_local i64 @plpar_hcall_norets(i32, i32, i32, i64) #1

declare dso_local i32 @H_TLBIE_P1_ENC(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
