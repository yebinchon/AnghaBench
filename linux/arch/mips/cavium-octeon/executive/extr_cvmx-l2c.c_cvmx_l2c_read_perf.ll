; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_read_perf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-l2c.c_cvmx_l2c_read_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@CVMX_L2C_PFC0 = common dso_local global i32 0, align 4
@CVMX_L2C_TADS = common dso_local global i32 0, align 4
@CVMX_L2C_PFC1 = common dso_local global i32 0, align 4
@CVMX_L2C_PFC2 = common dso_local global i32 0, align 4
@CVMX_L2C_PFC3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_read_perf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %95 [
    i32 0, label %13
    i32 1, label %40
    i32 2, label %67
    i32 3, label %94
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @OCTEON_CN5XXX, align 4
  %15 = call i32 @OCTEON_IS_MODEL(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @OCTEON_CN3XXX, align 4
  %19 = call i32 @OCTEON_IS_MODEL(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @CVMX_L2C_PFC0, align 4
  %23 = call i32 @cvmx_read_csr(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %122

24:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %35, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CVMX_L2C_TADS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @CVMX_L2C_TADX_PFC0(i32 %30)
  %32 = call i32 @cvmx_read_csr(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %25

38:                                               ; preds = %25
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %122

40:                                               ; preds = %1
  %41 = load i32, i32* @OCTEON_CN5XXX, align 4
  %42 = call i32 @OCTEON_IS_MODEL(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @OCTEON_CN3XXX, align 4
  %46 = call i32 @OCTEON_IS_MODEL(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @CVMX_L2C_PFC1, align 4
  %50 = call i32 @cvmx_read_csr(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %122

51:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @CVMX_L2C_TADS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @CVMX_L2C_TADX_PFC1(i32 %57)
  %59 = call i32 @cvmx_read_csr(i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %122

67:                                               ; preds = %1
  %68 = load i32, i32* @OCTEON_CN5XXX, align 4
  %69 = call i32 @OCTEON_IS_MODEL(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @OCTEON_CN3XXX, align 4
  %73 = call i32 @OCTEON_IS_MODEL(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @CVMX_L2C_PFC2, align 4
  %77 = call i32 @cvmx_read_csr(i32 %76)
  store i32 %77, i32* %2, align 4
  br label %122

78:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %89, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @CVMX_L2C_TADS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @CVMX_L2C_TADX_PFC2(i32 %84)
  %86 = call i32 @cvmx_read_csr(i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %79

92:                                               ; preds = %79
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %122

94:                                               ; preds = %1
  br label %95

95:                                               ; preds = %1, %94
  %96 = load i32, i32* @OCTEON_CN5XXX, align 4
  %97 = call i32 @OCTEON_IS_MODEL(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @OCTEON_CN3XXX, align 4
  %101 = call i32 @OCTEON_IS_MODEL(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99, %95
  %104 = load i32, i32* @CVMX_L2C_PFC3, align 4
  %105 = call i32 @cvmx_read_csr(i32 %104)
  store i32 %105, i32* %2, align 4
  br label %122

106:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %117, %106
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @CVMX_L2C_TADS, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @CVMX_L2C_TADX_PFC3(i32 %112)
  %114 = call i32 @cvmx_read_csr(i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %107

120:                                              ; preds = %107
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %103, %92, %75, %65, %48, %38, %21
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_L2C_TADX_PFC0(i32) #1

declare dso_local i32 @CVMX_L2C_TADX_PFC1(i32) #1

declare dso_local i32 @CVMX_L2C_TADX_PFC2(i32) #1

declare dso_local i32 @CVMX_L2C_TADX_PFC3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
