; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_set_core_way_partition.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_set_core_way_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN63XX = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR0 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR1 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR2 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_set_core_way_partition(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @cvmx_l2c_get_num_assoc()
  %9 = shl i32 1, %8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @OCTEON_CN63XX, align 4
  %19 = call i64 @OCTEON_IS_MODEL(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %95

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (...) @cvmx_octeon_num_cores()
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %95

27:                                               ; preds = %22
  %28 = load i32, i32* @OCTEON_CN63XX, align 4
  %29 = call i64 @OCTEON_IS_MODEL(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @CVMX_L2C_WPAR_PPX(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @cvmx_write_csr(i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %95

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 3
  %39 = mul nsw i32 %38, 8
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 12
  switch i32 %41, label %94 [
    i32 0, label %42
    i32 4, label %55
    i32 8, label %68
    i32 12, label %81
  ]

42:                                               ; preds = %36
  %43 = load i32, i32* @CVMX_L2C_SPAR0, align 4
  %44 = load i32, i32* @CVMX_L2C_SPAR0, align 4
  %45 = call i32 @cvmx_read_csr(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 255, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  %54 = call i32 @cvmx_write_csr(i32 %43, i32 %53)
  br label %94

55:                                               ; preds = %36
  %56 = load i32, i32* @CVMX_L2C_SPAR1, align 4
  %57 = load i32, i32* @CVMX_L2C_SPAR1, align 4
  %58 = call i32 @cvmx_read_csr(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = shl i32 255, %59
  %61 = xor i32 %60, -1
  %62 = and i32 %58, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %62, %65
  %67 = call i32 @cvmx_write_csr(i32 %56, i32 %66)
  br label %94

68:                                               ; preds = %36
  %69 = load i32, i32* @CVMX_L2C_SPAR2, align 4
  %70 = load i32, i32* @CVMX_L2C_SPAR2, align 4
  %71 = call i32 @cvmx_read_csr(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 255, %72
  %74 = xor i32 %73, -1
  %75 = and i32 %71, %74
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %75, %78
  %80 = call i32 @cvmx_write_csr(i32 %69, i32 %79)
  br label %94

81:                                               ; preds = %36
  %82 = load i32, i32* @CVMX_L2C_SPAR3, align 4
  %83 = load i32, i32* @CVMX_L2C_SPAR3, align 4
  %84 = call i32 @cvmx_read_csr(i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 255, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %84, %87
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 %89, %90
  %92 = or i32 %88, %91
  %93 = call i32 @cvmx_write_csr(i32 %82, i32 %92)
  br label %94

94:                                               ; preds = %36, %81, %68, %55, %42
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %31, %26, %21
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @cvmx_l2c_get_num_assoc(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_octeon_num_cores(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_L2C_WPAR_PPX(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
