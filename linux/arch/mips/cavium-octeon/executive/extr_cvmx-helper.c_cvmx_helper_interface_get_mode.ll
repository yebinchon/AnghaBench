; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c_cvmx_helper_interface_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c_cvmx_helper_interface_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_inf_mode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@CVMX_HELPER_INTERFACE_MODE_DISABLED = common dso_local global i32 0, align 4
@OCTEON_CN7XXX = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF71XX = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_NPI = common dso_local global i32 0, align 4
@OCTEON_CN56XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_LOOP = common dso_local global i32 0, align 4
@OCTEON_CN31XX = common dso_local global i32 0, align 4
@OCTEON_CN30XX = common dso_local global i32 0, align 4
@OCTEON_CN50XX = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_XAUI = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_PICMG = common dso_local global i32 0, align 4
@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_SPI = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_RGMII = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_interface_get_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.cvmx_gmxx_inf_mode, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (...) @cvmx_helper_get_number_of_interfaces()
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %12, i32* %2, align 4
  br label %124

13:                                               ; preds = %7
  %14 = load i32, i32* @OCTEON_CN7XXX, align 4
  %15 = call i64 @OCTEON_IS_MODEL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @__cvmx_get_mode_cn7xxx(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %124

20:                                               ; preds = %13
  %21 = load i32, i32* @OCTEON_CN6XXX, align 4
  %22 = call i64 @OCTEON_IS_MODEL(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @OCTEON_CNF71XX, align 4
  %26 = call i64 @OCTEON_IS_MODEL(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @__cvmx_get_mode_octeon2(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %124

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_NPI, align 4
  store i32 %35, i32* %2, align 4
  br label %124

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32, i32* @OCTEON_CN56XX, align 4
  %41 = call i64 @OCTEON_IS_MODEL(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @OCTEON_CN52XX, align 4
  %45 = call i64 @OCTEON_IS_MODEL(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_LOOP, align 4
  store i32 %48, i32* %2, align 4
  br label %124

49:                                               ; preds = %43
  %50 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %50, i32* %2, align 4
  br label %124

51:                                               ; preds = %36
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, i32* @OCTEON_CN31XX, align 4
  %56 = call i64 @OCTEON_IS_MODEL(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @OCTEON_CN30XX, align 4
  %60 = call i64 @OCTEON_IS_MODEL(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @OCTEON_CN50XX, align 4
  %64 = call i64 @OCTEON_IS_MODEL(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @OCTEON_CN52XX, align 4
  %68 = call i64 @OCTEON_IS_MODEL(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %62, %58, %54
  %71 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %71, i32* %2, align 4
  br label %124

72:                                               ; preds = %66, %51
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @CVMX_GMXX_INF_MODE(i32 %73)
  %75 = call i32 @cvmx_read_csr(i32 %74)
  %76 = bitcast %union.cvmx_gmxx_inf_mode* %4 to i32*
  store i32 %75, i32* %76, align 8
  %77 = load i32, i32* @OCTEON_CN56XX, align 4
  %78 = call i64 @OCTEON_IS_MODEL(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @OCTEON_CN52XX, align 4
  %82 = call i64 @OCTEON_IS_MODEL(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %80, %72
  %85 = bitcast %union.cvmx_gmxx_inf_mode* %4 to %struct.TYPE_3__*
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %96 [
    i32 0, label %88
    i32 1, label %90
    i32 2, label %92
    i32 3, label %94
  ]

88:                                               ; preds = %84
  %89 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %89, i32* %2, align 4
  br label %124

90:                                               ; preds = %84
  %91 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_XAUI, align 4
  store i32 %91, i32* %2, align 4
  br label %124

92:                                               ; preds = %84
  %93 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 4
  store i32 %93, i32* %2, align 4
  br label %124

94:                                               ; preds = %84
  %95 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_PICMG, align 4
  store i32 %95, i32* %2, align 4
  br label %124

96:                                               ; preds = %84
  %97 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %97, i32* %2, align 4
  br label %124

98:                                               ; preds = %80
  %99 = bitcast %union.cvmx_gmxx_inf_mode* %4 to %struct.TYPE_4__*
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %104, i32* %2, align 4
  br label %124

105:                                              ; preds = %98
  %106 = bitcast %union.cvmx_gmxx_inf_mode* %4 to %struct.TYPE_4__*
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load i32, i32* @OCTEON_CN38XX, align 4
  %112 = call i64 @OCTEON_IS_MODEL(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @OCTEON_CN58XX, align 4
  %116 = call i64 @OCTEON_IS_MODEL(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114, %110
  %119 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SPI, align 4
  store i32 %119, i32* %2, align 4
  br label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_GMII, align 4
  store i32 %121, i32* %2, align 4
  br label %124

122:                                              ; preds = %105
  %123 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_RGMII, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %120, %118, %103, %96, %94, %92, %90, %88, %70, %49, %47, %34, %28, %17, %11
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @cvmx_helper_get_number_of_interfaces(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @__cvmx_get_mode_cn7xxx(i32) #1

declare dso_local i32 @__cvmx_get_mode_octeon2(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_INF_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
