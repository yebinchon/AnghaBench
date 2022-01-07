; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_pgd_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_pgd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@invalid_pmd_table = common dso_local global i64 0, align 8
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@invalid_pte_table = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @kvm_pgd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_pgd_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i64, i64* @invalid_pmd_table, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %3, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = load i32, i32* @PTRS_PER_PGD, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  store i64* %12, i64** %4, align 8
  br label %13

13:                                               ; preds = %40, %1
  %14 = load i64, i64* %5, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64*, i64** %3, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 3
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64*, i64** %3, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 4
  store i64 %26, i64* %28, align 8
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 8
  store i64* %30, i64** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64*, i64** %3, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 -3
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64*, i64** %3, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 -2
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64*, i64** %3, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 -1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %13
  %41 = load i64*, i64** %3, align 8
  %42 = load i64*, i64** %4, align 8
  %43 = icmp ne i64* %41, %42
  br i1 %43, label %13, label %44

44:                                               ; preds = %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
