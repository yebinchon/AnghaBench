; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_idmap.c_identity_mapping_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_idmap.c_identity_mapping_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"Setting up static identity map for 0x%lx - 0x%lx\0A\00", align 1
@PMD_TYPE_SECT = common dso_local global i64 0, align 8
@PMD_SECT_AP_WRITE = common dso_local global i64 0, align 8
@PMD_SECT_AF = common dso_local global i64 0, align 8
@CPU_ARCH_ARMv5TEJ = common dso_local global i64 0, align 8
@PMD_BIT4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i64)* @identity_mapping_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @identity_mapping_add(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @virt_to_idmap(i8* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @virt_to_idmap(i8* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17)
  %19 = load i64, i64* @PMD_TYPE_SECT, align 8
  %20 = load i64, i64* @PMD_SECT_AP_WRITE, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @PMD_SECT_AF, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* %8, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %8, align 8
  %26 = call i64 (...) @cpu_architecture()
  %27 = load i64, i64* @CPU_ARCH_ARMv5TEJ, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = call i32 (...) @cpu_is_xscale_family()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* @PMD_BIT4, align 8
  %34 = load i64, i64* %8, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %32, %29, %4
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @pgd_index(i64 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %5, align 8
  br label %42

42:                                               ; preds = %51, %36
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @pgd_addr_end(i64 %43, i64 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @idmap_add_pud(i32* %46, i64 %47, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %5, align 8
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %42, label %58

58:                                               ; preds = %51
  ret void
}

declare dso_local i64 @virt_to_idmap(i8*) #1

declare dso_local i32 @pr_info(i8*, i64, i64) #1

declare dso_local i64 @cpu_architecture(...) #1

declare dso_local i32 @cpu_is_xscale_family(...) #1

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i32 @idmap_add_pud(i32*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
