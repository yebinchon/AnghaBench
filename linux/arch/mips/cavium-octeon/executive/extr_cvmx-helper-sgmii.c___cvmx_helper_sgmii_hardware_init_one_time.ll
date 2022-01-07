; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-sgmii.c___cvmx_helper_sgmii_hardware_init_one_time.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-sgmii.c___cvmx_helper_sgmii_hardware_init_one_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pcsx_miscx_ctl_reg = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%union.cvmx_pcsx_linkx_timer_count_reg = type { i8* }
%union.cvmx_gmxx_prtx_cfg = type { i8* }
%union.cvmx_pcsx_anx_adv_reg = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%union.cvmx_pcsx_sgmx_an_adv_reg = type { i8*, [8 x i8] }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @__cvmx_helper_sgmii_hardware_init_one_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_helper_sgmii_hardware_init_one_time(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %union.cvmx_pcsx_miscx_ctl_reg, align 8
  %7 = alloca %union.cvmx_pcsx_linkx_timer_count_reg, align 8
  %8 = alloca %union.cvmx_gmxx_prtx_cfg, align 8
  %9 = alloca %union.cvmx_pcsx_anx_adv_reg, align 8
  %10 = alloca %union.cvmx_pcsx_miscx_ctl_reg, align 8
  %11 = alloca %union.cvmx_pcsx_sgmx_an_adv_reg, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = call %struct.TYPE_12__* (...) @cvmx_sysinfo_get()
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 1000000
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %17, i32 %18)
  %20 = call i8* @cvmx_read_csr(i32 %19)
  %21 = bitcast %union.cvmx_gmxx_prtx_cfg* %8 to i8**
  store i8* %20, i8** %21, align 8
  %22 = bitcast %union.cvmx_gmxx_prtx_cfg* %8 to %struct.TYPE_7__*
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %24, i32 %25)
  %27 = bitcast %union.cvmx_gmxx_prtx_cfg* %8 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @cvmx_write_csr(i32 %26, i8* %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @CVMX_PCSX_MISCX_CTL_REG(i32 %30, i32 %31)
  %33 = call i8* @cvmx_read_csr(i32 %32)
  %34 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %6 to i8**
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @CVMX_PCSX_LINKX_TIMER_COUNT_REG(i32 %35, i32 %36)
  %38 = call i8* @cvmx_read_csr(i32 %37)
  %39 = bitcast %union.cvmx_pcsx_linkx_timer_count_reg* %7 to i8**
  store i8* %38, i8** %39, align 8
  %40 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %6 to %struct.TYPE_10__*
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load i64, i64* %5, align 8
  %46 = mul i64 10000, %45
  %47 = lshr i64 %46, 10
  %48 = bitcast %union.cvmx_pcsx_linkx_timer_count_reg* %7 to %struct.TYPE_8__*
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %56

50:                                               ; preds = %2
  %51 = load i64, i64* %5, align 8
  %52 = mul i64 1600, %51
  %53 = lshr i64 %52, 10
  %54 = bitcast %union.cvmx_pcsx_linkx_timer_count_reg* %7 to %struct.TYPE_8__*
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %44
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @CVMX_PCSX_LINKX_TIMER_COUNT_REG(i32 %57, i32 %58)
  %60 = bitcast %union.cvmx_pcsx_linkx_timer_count_reg* %7 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @cvmx_write_csr(i32 %59, i8* %61)
  %63 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %6 to %struct.TYPE_10__*
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %56
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @CVMX_PCSX_ANX_ADV_REG(i32 %68, i32 %69)
  %71 = call i8* @cvmx_read_csr(i32 %70)
  %72 = bitcast %union.cvmx_pcsx_anx_adv_reg* %9 to i8**
  store i8* %71, i8** %72, align 8
  %73 = bitcast %union.cvmx_pcsx_anx_adv_reg* %9 to %struct.TYPE_9__*
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = bitcast %union.cvmx_pcsx_anx_adv_reg* %9 to %struct.TYPE_9__*
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 3, i32* %76, align 8
  %77 = bitcast %union.cvmx_pcsx_anx_adv_reg* %9 to %struct.TYPE_9__*
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = bitcast %union.cvmx_pcsx_anx_adv_reg* %9 to %struct.TYPE_9__*
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @CVMX_PCSX_ANX_ADV_REG(i32 %81, i32 %82)
  %84 = bitcast %union.cvmx_pcsx_anx_adv_reg* %9 to i8**
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @cvmx_write_csr(i32 %83, i8* %85)
  br label %117

87:                                               ; preds = %56
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @CVMX_PCSX_MISCX_CTL_REG(i32 %88, i32 %89)
  %91 = call i8* @cvmx_read_csr(i32 %90)
  %92 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %10 to i8**
  store i8* %91, i8** %92, align 8
  %93 = bitcast %union.cvmx_pcsx_miscx_ctl_reg* %10 to %struct.TYPE_10__*
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %87
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @CVMX_PCSX_SGMX_AN_ADV_REG(i32 %98, i32 %99)
  %101 = call i8* @cvmx_read_csr(i32 %100)
  %102 = bitcast %union.cvmx_pcsx_sgmx_an_adv_reg* %11 to i8**
  store i8* %101, i8** %102, align 8
  %103 = bitcast %union.cvmx_pcsx_sgmx_an_adv_reg* %11 to %struct.TYPE_11__*
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = bitcast %union.cvmx_pcsx_sgmx_an_adv_reg* %11 to %struct.TYPE_11__*
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = bitcast %union.cvmx_pcsx_sgmx_an_adv_reg* %11 to %struct.TYPE_11__*
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  store i32 2, i32* %108, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @CVMX_PCSX_SGMX_AN_ADV_REG(i32 %109, i32 %110)
  %112 = bitcast %union.cvmx_pcsx_sgmx_an_adv_reg* %11 to i8**
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @cvmx_write_csr(i32 %111, i8* %113)
  br label %116

115:                                              ; preds = %87
  br label %116

116:                                              ; preds = %115, %97
  br label %117

117:                                              ; preds = %116, %67
  ret i32 0
}

declare dso_local %struct.TYPE_12__* @cvmx_sysinfo_get(...) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_PCSX_MISCX_CTL_REG(i32, i32) #1

declare dso_local i32 @CVMX_PCSX_LINKX_TIMER_COUNT_REG(i32, i32) #1

declare dso_local i32 @CVMX_PCSX_ANX_ADV_REG(i32, i32) #1

declare dso_local i32 @CVMX_PCSX_SGMX_AN_ADV_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
