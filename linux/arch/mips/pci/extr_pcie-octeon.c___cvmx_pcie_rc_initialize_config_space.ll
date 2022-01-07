; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_rc_initialize_config_space.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_rc_initialize_config_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pciercx_cfg030 = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }
%union.cvmx_pciercx_cfg070 = type { i8* }
%union.cvmx_pciercx_cfg001 = type { i8*, [8 x i8] }
%union.cvmx_pciercx_cfg032 = type { i8* }
%union.cvmx_pciercx_cfg006 = type { i8*, [8 x i8] }
%union.cvmx_pciercx_cfg008 = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }
%union.cvmx_pciercx_cfg009 = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i64 }
%union.cvmx_pciercx_cfg010 = type { i8* }
%union.cvmx_pciercx_cfg011 = type { i8* }
%union.cvmx_pciercx_cfg035 = type { i8*, [8 x i8] }
%union.cvmx_pciercx_cfg075 = type { i8*, [8 x i8] }
%union.cvmx_pciercx_cfg034 = type { i8*, [8 x i8] }
%union.cvmx_npei_ctl_status2 = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i8*, i8* }
%union.cvmx_dpi_sli_prtx_cfg = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i8*, i8* }
%union.cvmx_sli_s2m_portx_ctl = type { i8* }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }

@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@MPS_CN5XXX = common dso_local global i8* null, align 8
@MRRS_CN5XXX = common dso_local global i8* null, align 8
@MPS_CN6XXX = common dso_local global i8* null, align 8
@MRRS_CN6XXX = common dso_local global i8* null, align 8
@OCTEON_FEATURE_NPEI = common dso_local global i32 0, align 4
@CVMX_PEXP_NPEI_CTL_STATUS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__cvmx_pcie_rc_initialize_config_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_pcie_rc_initialize_config_space(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_pciercx_cfg030, align 8
  %4 = alloca %union.cvmx_pciercx_cfg070, align 8
  %5 = alloca %union.cvmx_pciercx_cfg001, align 8
  %6 = alloca %union.cvmx_pciercx_cfg032, align 8
  %7 = alloca %union.cvmx_pciercx_cfg006, align 8
  %8 = alloca %union.cvmx_pciercx_cfg008, align 8
  %9 = alloca %union.cvmx_pciercx_cfg009, align 8
  %10 = alloca %union.cvmx_pciercx_cfg010, align 8
  %11 = alloca %union.cvmx_pciercx_cfg011, align 8
  %12 = alloca %union.cvmx_pciercx_cfg035, align 8
  %13 = alloca %union.cvmx_pciercx_cfg075, align 8
  %14 = alloca %union.cvmx_pciercx_cfg034, align 8
  %15 = alloca %union.cvmx_npei_ctl_status2, align 8
  %16 = alloca %union.cvmx_dpi_sli_prtx_cfg, align 8
  %17 = alloca %union.cvmx_sli_s2m_portx_ctl, align 8
  store i32 %0, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @CVMX_PCIERCX_CFG030(i32 %19)
  %21 = call i8* @cvmx_pcie_cfgx_read(i32 %18, i32 %20)
  %22 = bitcast %union.cvmx_pciercx_cfg030* %3 to i8**
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @OCTEON_CN5XXX, align 4
  %24 = call i64 @OCTEON_IS_MODEL(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i8*, i8** @MPS_CN5XXX, align 8
  %28 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_25__*
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @MRRS_CN5XXX, align 8
  %31 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_25__*
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  br label %40

33:                                               ; preds = %1
  %34 = load i8*, i8** @MPS_CN6XXX, align 8
  %35 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_25__*
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @MRRS_CN6XXX, align 8
  %38 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_25__*
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %33, %26
  %41 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_25__*
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_25__*
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_25__*
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_25__*
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_25__*
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 4
  store i32 1, i32* %50, align 8
  %51 = bitcast %union.cvmx_pciercx_cfg030* %3 to %struct.TYPE_25__*
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 5
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @CVMX_PCIERCX_CFG030(i32 %54)
  %56 = bitcast %union.cvmx_pciercx_cfg030* %3 to i8**
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @cvmx_pcie_cfgx_write(i32 %53, i32 %55, i8* %57)
  %59 = load i32, i32* @OCTEON_FEATURE_NPEI, align 4
  %60 = call i64 @octeon_has_feature(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %40
  %63 = load i32, i32* @CVMX_PEXP_NPEI_CTL_STATUS2, align 4
  %64 = call i8* @cvmx_read_csr(i32 %63)
  %65 = bitcast %union.cvmx_npei_ctl_status2* %15 to i8**
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** @MPS_CN5XXX, align 8
  %67 = bitcast %union.cvmx_npei_ctl_status2* %15 to %struct.TYPE_26__*
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @MRRS_CN5XXX, align 8
  %70 = bitcast %union.cvmx_npei_ctl_status2* %15 to %struct.TYPE_26__*
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %2, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = bitcast %union.cvmx_npei_ctl_status2* %15 to %struct.TYPE_26__*
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 0
  store i32 3, i32* %76, align 8
  br label %80

77:                                               ; preds = %62
  %78 = bitcast %union.cvmx_npei_ctl_status2* %15 to %struct.TYPE_26__*
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 1
  store i32 3, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @CVMX_PEXP_NPEI_CTL_STATUS2, align 4
  %82 = bitcast %union.cvmx_npei_ctl_status2* %15 to i8**
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @cvmx_write_csr(i32 %81, i8* %83)
  br label %115

85:                                               ; preds = %40
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @CVMX_DPI_SLI_PRTX_CFG(i32 %86)
  %88 = call i8* @cvmx_read_csr(i32 %87)
  %89 = bitcast %union.cvmx_dpi_sli_prtx_cfg* %16 to i8**
  store i8* %88, i8** %89, align 8
  %90 = load i8*, i8** @MPS_CN6XXX, align 8
  %91 = bitcast %union.cvmx_dpi_sli_prtx_cfg* %16 to %struct.TYPE_27__*
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @MRRS_CN6XXX, align 8
  %94 = bitcast %union.cvmx_dpi_sli_prtx_cfg* %16 to %struct.TYPE_27__*
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = bitcast %union.cvmx_dpi_sli_prtx_cfg* %16 to %struct.TYPE_27__*
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  store i32 32, i32* %97, align 8
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @CVMX_DPI_SLI_PRTX_CFG(i32 %98)
  %100 = bitcast %union.cvmx_dpi_sli_prtx_cfg* %16 to i8**
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @cvmx_write_csr(i32 %99, i8* %101)
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @CVMX_PEXP_SLI_S2M_PORTX_CTL(i32 %103)
  %105 = call i8* @cvmx_read_csr(i32 %104)
  %106 = bitcast %union.cvmx_sli_s2m_portx_ctl* %17 to i8**
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** @MRRS_CN6XXX, align 8
  %108 = bitcast %union.cvmx_sli_s2m_portx_ctl* %17 to %struct.TYPE_28__*
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @CVMX_PEXP_SLI_S2M_PORTX_CTL(i32 %110)
  %112 = bitcast %union.cvmx_sli_s2m_portx_ctl* %17 to i8**
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @cvmx_write_csr(i32 %111, i8* %113)
  br label %115

115:                                              ; preds = %85, %80
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @CVMX_PCIERCX_CFG070(i32 %117)
  %119 = call i8* @cvmx_pcie_cfgx_read(i32 %116, i32 %118)
  %120 = bitcast %union.cvmx_pciercx_cfg070* %4 to i8**
  store i8* %119, i8** %120, align 8
  %121 = bitcast %union.cvmx_pciercx_cfg070* %4 to %struct.TYPE_29__*
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = bitcast %union.cvmx_pciercx_cfg070* %4 to %struct.TYPE_29__*
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @CVMX_PCIERCX_CFG070(i32 %126)
  %128 = bitcast %union.cvmx_pciercx_cfg070* %4 to i8**
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @cvmx_pcie_cfgx_write(i32 %125, i32 %127, i8* %129)
  %131 = load i32, i32* %2, align 4
  %132 = load i32, i32* %2, align 4
  %133 = call i32 @CVMX_PCIERCX_CFG001(i32 %132)
  %134 = call i8* @cvmx_pcie_cfgx_read(i32 %131, i32 %133)
  %135 = bitcast %union.cvmx_pciercx_cfg001* %5 to i8**
  store i8* %134, i8** %135, align 8
  %136 = bitcast %union.cvmx_pciercx_cfg001* %5 to %struct.TYPE_30__*
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = bitcast %union.cvmx_pciercx_cfg001* %5 to %struct.TYPE_30__*
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  %140 = bitcast %union.cvmx_pciercx_cfg001* %5 to %struct.TYPE_30__*
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 2
  store i32 1, i32* %141, align 8
  %142 = bitcast %union.cvmx_pciercx_cfg001* %5 to %struct.TYPE_30__*
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 3
  store i32 1, i32* %143, align 4
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* %2, align 4
  %146 = call i32 @CVMX_PCIERCX_CFG001(i32 %145)
  %147 = bitcast %union.cvmx_pciercx_cfg001* %5 to i8**
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @cvmx_pcie_cfgx_write(i32 %144, i32 %146, i8* %148)
  %150 = load i32, i32* %2, align 4
  %151 = load i32, i32* %2, align 4
  %152 = call i32 @CVMX_PCIERCX_CFG066(i32 %151)
  %153 = call i32 @cvmx_pcie_cfgx_write(i32 %150, i32 %152, i8* null)
  %154 = load i32, i32* %2, align 4
  %155 = load i32, i32* %2, align 4
  %156 = call i32 @CVMX_PCIERCX_CFG069(i32 %155)
  %157 = call i32 @cvmx_pcie_cfgx_write(i32 %154, i32 %156, i8* null)
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* %2, align 4
  %160 = call i32 @CVMX_PCIERCX_CFG032(i32 %159)
  %161 = call i8* @cvmx_pcie_cfgx_read(i32 %158, i32 %160)
  %162 = bitcast %union.cvmx_pciercx_cfg032* %6 to i8**
  store i8* %161, i8** %162, align 8
  %163 = bitcast %union.cvmx_pciercx_cfg032* %6 to %struct.TYPE_16__*
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  %165 = load i32, i32* %2, align 4
  %166 = load i32, i32* %2, align 4
  %167 = call i32 @CVMX_PCIERCX_CFG032(i32 %166)
  %168 = bitcast %union.cvmx_pciercx_cfg032* %6 to i8**
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @cvmx_pcie_cfgx_write(i32 %165, i32 %167, i8* %169)
  %171 = bitcast %union.cvmx_pciercx_cfg006* %7 to i8**
  store i8* null, i8** %171, align 8
  %172 = bitcast %union.cvmx_pciercx_cfg006* %7 to %struct.TYPE_17__*
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = bitcast %union.cvmx_pciercx_cfg006* %7 to %struct.TYPE_17__*
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  store i32 1, i32* %175, align 4
  %176 = bitcast %union.cvmx_pciercx_cfg006* %7 to %struct.TYPE_17__*
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  %178 = load i32, i32* %2, align 4
  %179 = load i32, i32* %2, align 4
  %180 = call i32 @CVMX_PCIERCX_CFG006(i32 %179)
  %181 = bitcast %union.cvmx_pciercx_cfg006* %7 to i8**
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @cvmx_pcie_cfgx_write(i32 %178, i32 %180, i8* %182)
  %184 = bitcast %union.cvmx_pciercx_cfg008* %8 to i8**
  store i8* null, i8** %184, align 8
  %185 = bitcast %union.cvmx_pciercx_cfg008* %8 to %struct.TYPE_18__*
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  store i32 256, i32* %186, align 8
  %187 = bitcast %union.cvmx_pciercx_cfg008* %8 to %struct.TYPE_18__*
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* %2, align 4
  %190 = load i32, i32* %2, align 4
  %191 = call i32 @CVMX_PCIERCX_CFG008(i32 %190)
  %192 = bitcast %union.cvmx_pciercx_cfg008* %8 to i8**
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @cvmx_pcie_cfgx_write(i32 %189, i32 %191, i8* %193)
  %195 = load i32, i32* %2, align 4
  %196 = load i32, i32* %2, align 4
  %197 = call i32 @CVMX_PCIERCX_CFG009(i32 %196)
  %198 = call i8* @cvmx_pcie_cfgx_read(i32 %195, i32 %197)
  %199 = bitcast %union.cvmx_pciercx_cfg009* %9 to i8**
  store i8* %198, i8** %199, align 8
  %200 = load i32, i32* %2, align 4
  %201 = load i32, i32* %2, align 4
  %202 = call i32 @CVMX_PCIERCX_CFG010(i32 %201)
  %203 = call i8* @cvmx_pcie_cfgx_read(i32 %200, i32 %202)
  %204 = bitcast %union.cvmx_pciercx_cfg010* %10 to i8**
  store i8* %203, i8** %204, align 8
  %205 = load i32, i32* %2, align 4
  %206 = load i32, i32* %2, align 4
  %207 = call i32 @CVMX_PCIERCX_CFG011(i32 %206)
  %208 = call i8* @cvmx_pcie_cfgx_read(i32 %205, i32 %207)
  %209 = bitcast %union.cvmx_pciercx_cfg011* %11 to i8**
  store i8* %208, i8** %209, align 8
  %210 = bitcast %union.cvmx_pciercx_cfg009* %9 to %struct.TYPE_19__*
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  store i32 256, i32* %211, align 8
  %212 = bitcast %union.cvmx_pciercx_cfg009* %9 to %struct.TYPE_19__*
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  %214 = bitcast %union.cvmx_pciercx_cfg010* %10 to %struct.TYPE_20__*
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  store i32 256, i32* %215, align 8
  %216 = bitcast %union.cvmx_pciercx_cfg011* %11 to %struct.TYPE_21__*
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  store i64 0, i64* %217, align 8
  %218 = load i32, i32* %2, align 4
  %219 = load i32, i32* %2, align 4
  %220 = call i32 @CVMX_PCIERCX_CFG009(i32 %219)
  %221 = bitcast %union.cvmx_pciercx_cfg009* %9 to i8**
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @cvmx_pcie_cfgx_write(i32 %218, i32 %220, i8* %222)
  %224 = load i32, i32* %2, align 4
  %225 = load i32, i32* %2, align 4
  %226 = call i32 @CVMX_PCIERCX_CFG010(i32 %225)
  %227 = bitcast %union.cvmx_pciercx_cfg010* %10 to i8**
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @cvmx_pcie_cfgx_write(i32 %224, i32 %226, i8* %228)
  %230 = load i32, i32* %2, align 4
  %231 = load i32, i32* %2, align 4
  %232 = call i32 @CVMX_PCIERCX_CFG011(i32 %231)
  %233 = bitcast %union.cvmx_pciercx_cfg011* %11 to i8**
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @cvmx_pcie_cfgx_write(i32 %230, i32 %232, i8* %234)
  %236 = load i32, i32* %2, align 4
  %237 = load i32, i32* %2, align 4
  %238 = call i32 @CVMX_PCIERCX_CFG035(i32 %237)
  %239 = call i8* @cvmx_pcie_cfgx_read(i32 %236, i32 %238)
  %240 = bitcast %union.cvmx_pciercx_cfg035* %12 to i8**
  store i8* %239, i8** %240, align 8
  %241 = bitcast %union.cvmx_pciercx_cfg035* %12 to %struct.TYPE_22__*
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = bitcast %union.cvmx_pciercx_cfg035* %12 to %struct.TYPE_22__*
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 1
  store i32 1, i32* %244, align 4
  %245 = bitcast %union.cvmx_pciercx_cfg035* %12 to %struct.TYPE_22__*
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 2
  store i32 1, i32* %246, align 8
  %247 = bitcast %union.cvmx_pciercx_cfg035* %12 to %struct.TYPE_22__*
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 3
  store i32 1, i32* %248, align 4
  %249 = load i32, i32* %2, align 4
  %250 = load i32, i32* %2, align 4
  %251 = call i32 @CVMX_PCIERCX_CFG035(i32 %250)
  %252 = bitcast %union.cvmx_pciercx_cfg035* %12 to i8**
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @cvmx_pcie_cfgx_write(i32 %249, i32 %251, i8* %253)
  %255 = load i32, i32* %2, align 4
  %256 = load i32, i32* %2, align 4
  %257 = call i32 @CVMX_PCIERCX_CFG075(i32 %256)
  %258 = call i8* @cvmx_pcie_cfgx_read(i32 %255, i32 %257)
  %259 = bitcast %union.cvmx_pciercx_cfg075* %13 to i8**
  store i8* %258, i8** %259, align 8
  %260 = bitcast %union.cvmx_pciercx_cfg075* %13 to %struct.TYPE_23__*
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 0
  store i32 1, i32* %261, align 8
  %262 = bitcast %union.cvmx_pciercx_cfg075* %13 to %struct.TYPE_23__*
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 1
  store i32 1, i32* %263, align 4
  %264 = bitcast %union.cvmx_pciercx_cfg075* %13 to %struct.TYPE_23__*
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 2
  store i32 1, i32* %265, align 8
  %266 = load i32, i32* %2, align 4
  %267 = load i32, i32* %2, align 4
  %268 = call i32 @CVMX_PCIERCX_CFG075(i32 %267)
  %269 = bitcast %union.cvmx_pciercx_cfg075* %13 to i8**
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @cvmx_pcie_cfgx_write(i32 %266, i32 %268, i8* %270)
  %272 = load i32, i32* %2, align 4
  %273 = load i32, i32* %2, align 4
  %274 = call i32 @CVMX_PCIERCX_CFG034(i32 %273)
  %275 = call i8* @cvmx_pcie_cfgx_read(i32 %272, i32 %274)
  %276 = bitcast %union.cvmx_pciercx_cfg034* %14 to i8**
  store i8* %275, i8** %276, align 8
  %277 = bitcast %union.cvmx_pciercx_cfg034* %14 to %struct.TYPE_24__*
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 0
  store i32 1, i32* %278, align 8
  %279 = bitcast %union.cvmx_pciercx_cfg034* %14 to %struct.TYPE_24__*
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 1
  store i32 1, i32* %280, align 4
  %281 = bitcast %union.cvmx_pciercx_cfg034* %14 to %struct.TYPE_24__*
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 2
  store i32 1, i32* %282, align 8
  %283 = load i32, i32* %2, align 4
  %284 = load i32, i32* %2, align 4
  %285 = call i32 @CVMX_PCIERCX_CFG034(i32 %284)
  %286 = bitcast %union.cvmx_pciercx_cfg034* %14 to i8**
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @cvmx_pcie_cfgx_write(i32 %283, i32 %285, i8* %287)
  ret void
}

declare dso_local i8* @cvmx_pcie_cfgx_read(i32, i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG030(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_pcie_cfgx_write(i32, i32, i8*) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_DPI_SLI_PRTX_CFG(i32) #1

declare dso_local i32 @CVMX_PEXP_SLI_S2M_PORTX_CTL(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG070(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG001(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG066(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG069(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG032(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG006(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG008(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG009(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG010(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG011(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG035(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG075(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG034(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
