; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_alloc_named_range_once.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_alloc_named_range_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_BOOTMEM_FLAG_NO_LOCKING = common dso_local global i64 0, align 8
@base_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cvmx_bootmem_alloc_named_range_once(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4, void (i8*)* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca void (i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store void (i8*)* %5, void (i8*)** %13, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load i64, i64* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @cvmx_bootmem_phy_named_block_find(i8* %17, i32 %19)
  store i64 %20, i64* %16, align 8
  %21 = load i64, i64* %16, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load i64, i64* %16, align 8
  %25 = load i32, i32* @base_addr, align 4
  %26 = call i64 @CVMX_BOOTMEM_NAMED_GET_FIELD(i64 %24, i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call i8* @cvmx_phys_to_ptr(i64 %27)
  store i8* %28, i8** %7, align 8
  br label %55

29:                                               ; preds = %6
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i64, i64* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @cvmx_bootmem_phy_named_block_alloc(i64 %30, i64 %31, i64 %32, i64 %33, i8* %34, i32 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i8* null, i8** %7, align 8
  br label %55

41:                                               ; preds = %29
  %42 = load i64, i64* %14, align 8
  %43 = call i8* @cvmx_phys_to_ptr(i64 %42)
  store i8* %43, i8** %15, align 8
  %44 = load void (i8*)*, void (i8*)** %13, align 8
  %45 = icmp ne void (i8*)* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load void (i8*)*, void (i8*)** %13, align 8
  %48 = load i8*, i8** %15, align 8
  call void %47(i8* %48)
  br label %53

49:                                               ; preds = %41
  %50 = load i8*, i8** %15, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @memset(i8* %50, i32 0, i64 %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i8*, i8** %15, align 8
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %53, %40, %23
  %56 = load i8*, i8** %7, align 8
  ret i8* %56
}

declare dso_local i64 @cvmx_bootmem_phy_named_block_find(i8*, i32) #1

declare dso_local i64 @CVMX_BOOTMEM_NAMED_GET_FIELD(i64, i32) #1

declare dso_local i8* @cvmx_phys_to_ptr(i64) #1

declare dso_local i64 @cvmx_bootmem_phy_named_block_alloc(i64, i64, i64, i64, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
