; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_get_core_way_partition.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_get_core_way_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN63XX = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR0 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR1 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR2 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_get_core_way_partition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 (...) @cvmx_octeon_num_cores()
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %57

9:                                                ; preds = %1
  %10 = load i32, i32* @OCTEON_CN63XX, align 4
  %11 = call i64 @OCTEON_IS_MODEL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @CVMX_L2C_WPAR_PPX(i32 %14)
  %16 = call i32 @cvmx_read_csr(i32 %15)
  %17 = and i32 %16, 65535
  store i32 %17, i32* %2, align 4
  br label %57

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 3
  %21 = mul nsw i32 %20, 8
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 12
  switch i32 %23, label %56 [
    i32 0, label %24
    i32 4, label %32
    i32 8, label %40
    i32 12, label %48
  ]

24:                                               ; preds = %18
  %25 = load i32, i32* @CVMX_L2C_SPAR0, align 4
  %26 = call i32 @cvmx_read_csr(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 255, %27
  %29 = and i32 %26, %28
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %57

32:                                               ; preds = %18
  %33 = load i32, i32* @CVMX_L2C_SPAR1, align 4
  %34 = call i32 @cvmx_read_csr(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 255, %35
  %37 = and i32 %34, %36
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %2, align 4
  br label %57

40:                                               ; preds = %18
  %41 = load i32, i32* @CVMX_L2C_SPAR2, align 4
  %42 = call i32 @cvmx_read_csr(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = shl i32 255, %43
  %45 = and i32 %42, %44
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %2, align 4
  br label %57

48:                                               ; preds = %18
  %49 = load i32, i32* @CVMX_L2C_SPAR3, align 4
  %50 = call i32 @cvmx_read_csr(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 255, %51
  %53 = and i32 %50, %52
  %54 = load i32, i32* %4, align 4
  %55 = ashr i32 %53, %54
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %48, %40, %32, %24, %13, %8
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @cvmx_octeon_num_cores(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_L2C_WPAR_PPX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
