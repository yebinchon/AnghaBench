; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_set_hw_way_partition.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_set_hw_way_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN63XX = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_set_hw_way_partition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @cvmx_l2c_get_num_assoc()
  %6 = shl i32 1, %5
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @OCTEON_CN63XX, align 4
  %16 = call i64 @OCTEON_IS_MODEL(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %36

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @OCTEON_CN63XX, align 4
  %21 = call i64 @OCTEON_IS_MODEL(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i32 @CVMX_L2C_WPAR_IOBX(i32 0)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @cvmx_write_csr(i32 %24, i32 %25)
  br label %35

27:                                               ; preds = %19
  %28 = load i32, i32* @CVMX_L2C_SPAR4, align 4
  %29 = load i32, i32* @CVMX_L2C_SPAR4, align 4
  %30 = call i32 @cvmx_read_csr(i32 %29)
  %31 = and i32 %30, -256
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @cvmx_write_csr(i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %27, %23
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @cvmx_l2c_get_num_assoc(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_L2C_WPAR_IOBX(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
