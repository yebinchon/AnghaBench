; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-interrupt-rsl.c___cvmx_interrupt_gmxx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-interrupt-rsl.c___cvmx_interrupt_gmxx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_inf_mode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%union.cvmx_gmxx_tx_int_en = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@OCTEON_CN56XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_interrupt_gmxx_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_gmxx_inf_mode, align 8
  %4 = alloca %union.cvmx_gmxx_tx_int_en, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @CVMX_GMXX_INF_MODE(i32 %7)
  %9 = call i32 @cvmx_read_csr(i32 %8)
  %10 = bitcast %union.cvmx_gmxx_inf_mode* %3 to i32*
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @OCTEON_CN56XX, align 4
  %12 = call i64 @OCTEON_IS_MODEL(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @OCTEON_CN52XX, align 4
  %16 = call i64 @OCTEON_IS_MODEL(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %1
  %19 = bitcast %union.cvmx_gmxx_inf_mode* %3 to %struct.TYPE_6__*
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = bitcast %union.cvmx_gmxx_inf_mode* %3 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %29 [
    i32 1, label %27
    i32 2, label %28
    i32 3, label %28
  ]

27:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %30

28:                                               ; preds = %23, %23
  store i32 4, i32* %5, align 4
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %28, %27
  br label %32

31:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %30
  br label %65

33:                                               ; preds = %14
  %34 = bitcast %union.cvmx_gmxx_inf_mode* %3 to %struct.TYPE_6__*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = load i32, i32* @OCTEON_CN38XX, align 4
  %40 = call i64 @OCTEON_IS_MODEL(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @OCTEON_CN58XX, align 4
  %44 = call i64 @OCTEON_IS_MODEL(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42, %38
  %47 = bitcast %union.cvmx_gmxx_inf_mode* %3 to %struct.TYPE_6__*
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %53

52:                                               ; preds = %46
  store i32 4, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %62

54:                                               ; preds = %42
  %55 = bitcast %union.cvmx_gmxx_inf_mode* %3 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 2, i32* %5, align 4
  br label %61

60:                                               ; preds = %54
  store i32 3, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %53
  br label %64

63:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %64, %32
  %66 = bitcast %union.cvmx_gmxx_tx_int_en* %4 to i64*
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i32, i32* @OCTEON_CN38XX, align 4
  %71 = call i64 @OCTEON_IS_MODEL(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @OCTEON_CN58XX, align 4
  %75 = call i64 @OCTEON_IS_MODEL(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %69
  %78 = bitcast %union.cvmx_gmxx_tx_int_en* %4 to %struct.TYPE_7__*
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %73
  %81 = bitcast %union.cvmx_gmxx_tx_int_en* %4 to %struct.TYPE_8__*
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %65
  %84 = load i32, i32* %5, align 4
  %85 = shl i32 1, %84
  %86 = sub nsw i32 %85, 1
  %87 = bitcast %union.cvmx_gmxx_tx_int_en* %4 to %struct.TYPE_8__*
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @CVMX_GMXX_TX_INT_EN(i32 %89)
  %91 = bitcast %union.cvmx_gmxx_tx_int_en* %4 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @cvmx_write_csr(i32 %90, i64 %92)
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %102, %83
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @__cvmx_interrupt_gmxx_rxx_int_en_enable(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %94

105:                                              ; preds = %94
  ret void
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_INF_MODE(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_GMXX_TX_INT_EN(i32) #1

declare dso_local i32 @__cvmx_interrupt_gmxx_rxx_int_en_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
