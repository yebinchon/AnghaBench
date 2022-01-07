; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@CVMX_L2C_TAG_ADDR_ALIAS_SHIFT = common dso_local global i32 0, align 4
@CVMX_L2C_IDX_ADDR_SHIFT = common dso_local global i32 0, align 4
@CVMX_MIPS_SPACE_XKPHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_l2c_flush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 (...) @cvmx_l2c_get_num_sets()
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @cvmx_l2c_get_num_assoc()
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @OCTEON_CN6XXX, align 4
  %11 = call i64 @OCTEON_IS_MODEL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %0
  %14 = load i32, i32* @CVMX_L2C_TAG_ADDR_ALIAS_SHIFT, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @CVMX_L2C_IDX_ADDR_SHIFT, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %41, %13
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i32, i32* @CVMX_MIPS_SPACE_XKPHYS, align 4
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  %34 = call i32 @CVMX_ADD_SEG(i32 %26, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @CVMX_CACHE_WBIL2I(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %21

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %16

44:                                               ; preds = %16
  br label %67

45:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %59, %50
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @cvmx_l2c_flush_line(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %51

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  br label %46

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66, %44
  ret void
}

declare dso_local i32 @cvmx_l2c_get_num_sets(...) #1

declare dso_local i32 @cvmx_l2c_get_num_assoc(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_ADD_SEG(i32, i32) #1

declare dso_local i32 @CVMX_CACHE_WBIL2I(i32, i32) #1

declare dso_local i32 @cvmx_l2c_flush_line(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
