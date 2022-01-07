; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_address_to_index.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_address_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_l2c_ctl = type { i8* }
%union.cvmx_l2c_cfg = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CVMX_L2C_IDX_ADDR_SHIFT = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@CVMX_L2C_CTL = common dso_local global i32 0, align 4
@CVMX_L2C_CFG = common dso_local global i32 0, align 4
@OCTEON_CN63XX = common dso_local global i32 0, align 4
@CVMX_L2C_MEMBANK_SELECT_SIZE = common dso_local global i32 0, align 4
@CVMX_L2C_ALIAS_MASK = common dso_local global i32 0, align 4
@CVMX_L2C_TAG_ADDR_ALIAS_SHIFT = common dso_local global i32 0, align 4
@CVMX_L2C_IDX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_address_to_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_l2c_ctl, align 8
  %6 = alloca %union.cvmx_l2c_cfg, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @CVMX_L2C_IDX_ADDR_SHIFT, align 4
  %10 = ashr i32 %8, %9
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @OCTEON_CN6XXX, align 4
  %12 = call i64 @OCTEON_IS_MODEL(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i32, i32* @CVMX_L2C_CTL, align 4
  %16 = call i8* @cvmx_read_csr(i32 %15)
  %17 = bitcast %union.cvmx_l2c_ctl* %5 to i8**
  store i8* %16, i8** %17, align 8
  %18 = bitcast %union.cvmx_l2c_ctl* %5 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load i32, i32* @CVMX_L2C_CFG, align 4
  %26 = call i8* @cvmx_read_csr(i32 %25)
  %27 = bitcast %union.cvmx_l2c_cfg* %6 to i8**
  store i8* %26, i8** %27, align 8
  %28 = bitcast %union.cvmx_l2c_cfg* %6 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %14
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %31
  %35 = load i32, i32* @OCTEON_CN63XX, align 4
  %36 = call i64 @OCTEON_IS_MODEL(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @CVMX_L2C_MEMBANK_SELECT_SIZE, align 4
  %41 = load i32, i32* @CVMX_L2C_IDX_ADDR_SHIFT, align 4
  %42 = shl i32 1, %41
  %43 = sdiv i32 %40, %42
  %44 = sdiv i32 %39, %43
  %45 = and i32 %44, 7
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (...) @cvmx_l2c_get_num_sets()
  %48 = sdiv i32 %46, %47
  %49 = load i32, i32* %3, align 4
  %50 = xor i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %3, align 4
  %53 = xor i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %34
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @CVMX_L2C_ALIAS_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @CVMX_L2C_TAG_ADDR_ALIAS_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = load i32, i32* %3, align 4
  %61 = xor i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %38
  br label %63

63:                                               ; preds = %62, %31
  %64 = load i32, i32* @CVMX_L2C_IDX_MASK, align 4
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_l2c_get_num_sets(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
