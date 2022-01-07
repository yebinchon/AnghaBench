; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_pgd_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_pgd_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@CONFIG_PGTABLE_LEVELS = common dso_local global i32 0, align 4
@SHARED_KERNEL_PMD = common dso_local global i64 0, align 8
@KERNEL_PGD_BOUNDARY = common dso_local global i32 0, align 4
@swapper_pg_dir = common dso_local global i32 0, align 4
@KERNEL_PGD_PTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i32*)* @pgd_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgd_ctor(%struct.mm_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @CONFIG_PGTABLE_LEVELS, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @CONFIG_PGTABLE_LEVELS, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i64, i64* @SHARED_KERNEL_PMD, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @CONFIG_PGTABLE_LEVELS, align 4
  %15 = icmp sge i32 %14, 4
  br i1 %15, label %16, label %26

16:                                               ; preds = %13, %10, %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @KERNEL_PGD_BOUNDARY, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* @swapper_pg_dir, align 4
  %22 = load i32, i32* @KERNEL_PGD_BOUNDARY, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @KERNEL_PGD_PTRS, align 4
  %25 = call i32 @clone_pgd_range(i32* %20, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %16, %13
  %27 = load i64, i64* @SHARED_KERNEL_PMD, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %32 = call i32 @pgd_set_mm(i32* %30, %struct.mm_struct* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @pgd_list_add(i32* %33)
  br label %35

35:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @clone_pgd_range(i32*, i32, i32) #1

declare dso_local i32 @pgd_set_mm(i32*, %struct.mm_struct*) #1

declare dso_local i32 @pgd_list_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
