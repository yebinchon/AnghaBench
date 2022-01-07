; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-boot-vector.c_cvmx_boot_vector_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-boot-vector.c_cvmx_boot_vector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VECTOR_TABLE_SIZE = common dso_local global i32 0, align 4
@_cvmx_bootvector_data = common dso_local global i32* null, align 8
@CVMX_MIO_BOOT_LOC_ADR = common dso_local global i32 0, align 4
@CVMX_MIO_BOOT_LOC_DAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cvmx_boot_vector_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_boot_vector_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @VECTOR_TABLE_SIZE, align 4
  %8 = call i32 @memset(i8* %6, i32 0, i32 %7)
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @cvmx_ptr_to_phys(i8* %9)
  %11 = sext i32 %10 to i64
  %12 = or i64 %11, -9223372036854775808
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %44, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 15
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load i32*, i32** @_cvmx_bootvector_data, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = call i64 (...) @OCTEON_IS_OCTEON1PLUS()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %36

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, -4294967296
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %28, %17
  %37 = load i32, i32* @CVMX_MIO_BOOT_LOC_ADR, align 4
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 %38, 8
  %40 = call i32 @cvmx_write_csr(i32 %37, i32 %39)
  %41 = load i32, i32* @CVMX_MIO_BOOT_LOC_DAT, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cvmx_write_csr(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %14

47:                                               ; preds = %14
  %48 = load i32, i32* @CVMX_MIO_BOOT_LOC_ADR, align 4
  %49 = call i32 @cvmx_write_csr(i32 %48, i32 120)
  %50 = load i32, i32* @CVMX_MIO_BOOT_LOC_DAT, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @cvmx_write_csr(i32 %50, i32 %51)
  %53 = call i32 @CVMX_MIO_BOOT_LOC_CFGX(i32 0)
  %54 = call i32 @cvmx_write_csr(i32 %53, i32 -2114191360)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @cvmx_ptr_to_phys(i8*) #1

declare dso_local i64 @OCTEON_IS_OCTEON1PLUS(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_MIO_BOOT_LOC_CFGX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
