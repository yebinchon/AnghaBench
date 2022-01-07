; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_get_mode_cn68xx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_get_mode_cn68xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_mio_qlmx_cfg = type { i8* }
%struct.TYPE_2__ = type { i32, i32 }

@CVMX_HELPER_INTERFACE_MODE_DISABLED = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_XAUI = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_NPI = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cvmx_get_mode_cn68xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_get_mode_cn68xx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.cvmx_mio_qlmx_cfg, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %90 [
    i32 0, label %6
    i32 2, label %32
    i32 3, label %32
    i32 4, label %32
    i32 7, label %59
    i32 8, label %88
  ]

6:                                                ; preds = %1
  %7 = call i32 @CVMX_MIO_QLMX_CFG(i32 0)
  %8 = call i8* @cvmx_read_csr(i32 %7)
  %9 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to i8**
  store i8* %8, i8** %9, align 8
  %10 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %15, i32* %2, align 4
  br label %92

16:                                               ; preds = %6
  %17 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 4
  store i32 %22, i32* %2, align 4
  br label %92

23:                                               ; preds = %16
  %24 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_XAUI, align 4
  store i32 %29, i32* %2, align 4
  br label %92

30:                                               ; preds = %23
  %31 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %31, i32* %2, align 4
  br label %92

32:                                               ; preds = %1, %1, %1
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @CVMX_MIO_QLMX_CFG(i32 %33)
  %35 = call i8* @cvmx_read_csr(i32 %34)
  %36 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to i8**
  store i8* %35, i8** %36, align 8
  %37 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 15
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %42, i32* %2, align 4
  br label %92

43:                                               ; preds = %32
  %44 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 4
  store i32 %49, i32* %2, align 4
  br label %92

50:                                               ; preds = %43
  %51 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_XAUI, align 4
  store i32 %56, i32* %2, align 4
  br label %92

57:                                               ; preds = %50
  %58 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %58, i32* %2, align 4
  br label %92

59:                                               ; preds = %1
  %60 = call i32 @CVMX_MIO_QLMX_CFG(i32 3)
  %61 = call i8* @cvmx_read_csr(i32 %60)
  %62 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to i8**
  store i8* %61, i8** %62, align 8
  %63 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 15
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %68, i32* %2, align 4
  br label %92

69:                                               ; preds = %59
  %70 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = call i32 @CVMX_MIO_QLMX_CFG(i32 1)
  %76 = call i8* @cvmx_read_csr(i32 %75)
  %77 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to i8**
  store i8* %76, i8** %77, align 8
  %78 = bitcast %union.cvmx_mio_qlmx_cfg* %4 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %83, i32* %2, align 4
  br label %92

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %69
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_NPI, align 4
  store i32 %87, i32* %2, align 4
  br label %92

88:                                               ; preds = %1
  %89 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_LOOP, align 4
  store i32 %89, i32* %2, align 4
  br label %92

90:                                               ; preds = %1
  %91 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %88, %86, %82, %67, %57, %55, %48, %41, %30, %28, %21, %14
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_QLMX_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
