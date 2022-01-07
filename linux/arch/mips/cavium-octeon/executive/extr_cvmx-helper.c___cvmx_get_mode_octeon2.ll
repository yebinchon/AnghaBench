; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_get_mode_octeon2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper.c___cvmx_get_mode_octeon2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_inf_mode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%union.cvmx_mio_qlmx_cfg = type { i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@OCTEON_CN68XX = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_NPI = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_LOOP = common dso_local global i32 0, align 4
@OCTEON_CN63XX = common dso_local global i32 0, align 4
@OCTEON_CN66XX = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_DISABLED = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_XAUI = common dso_local global i32 0, align 4
@OCTEON_CN61XX = common dso_local global i32 0, align 4
@OCTEON_CNF71XX = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_RGMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cvmx_get_mode_octeon2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_get_mode_octeon2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.cvmx_gmxx_inf_mode, align 8
  %5 = alloca %union.cvmx_mio_qlmx_cfg, align 8
  %6 = alloca %union.cvmx_mio_qlmx_cfg, align 8
  %7 = alloca %union.cvmx_mio_qlmx_cfg, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @OCTEON_CN68XX, align 4
  %9 = call i64 @OCTEON_IS_MODEL(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @__cvmx_get_mode_cn68xx(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %205

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_NPI, align 4
  store i32 %18, i32* %2, align 4
  br label %205

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_LOOP, align 4
  store i32 %23, i32* %2, align 4
  br label %205

24:                                               ; preds = %19
  %25 = load i32, i32* @OCTEON_CN63XX, align 4
  %26 = call i64 @OCTEON_IS_MODEL(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %44, label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* @OCTEON_CN66XX, align 4
  %36 = call i64 @OCTEON_IS_MODEL(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = icmp sge i32 %39, 4
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = icmp sle i32 %42, 7
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %31, %28
  %45 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %45, i32* %2, align 4
  br label %205

46:                                               ; preds = %41, %38, %34
  %47 = load i32, i32* @OCTEON_CN66XX, align 4
  %48 = call i64 @OCTEON_IS_MODEL(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %90

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = call i32 @CVMX_MIO_QLMX_CFG(i32 2)
  %55 = call i8* @cvmx_read_csr(i32 %54)
  %56 = bitcast %union.cvmx_mio_qlmx_cfg* %5 to i8**
  store i8* %55, i8** %56, align 8
  br label %67

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = call i32 @CVMX_MIO_QLMX_CFG(i32 1)
  %62 = call i8* @cvmx_read_csr(i32 %61)
  %63 = bitcast %union.cvmx_mio_qlmx_cfg* %5 to i8**
  store i8* %62, i8** %63, align 8
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %65, i32* %2, align 4
  br label %205

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %53
  %68 = bitcast %union.cvmx_mio_qlmx_cfg* %5 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 15
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %73, i32* %2, align 4
  br label %205

74:                                               ; preds = %67
  %75 = bitcast %union.cvmx_mio_qlmx_cfg* %5 to %struct.TYPE_4__*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 9
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 4
  store i32 %80, i32* %2, align 4
  br label %205

81:                                               ; preds = %74
  %82 = bitcast %union.cvmx_mio_qlmx_cfg* %5 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 11
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_XAUI, align 4
  store i32 %87, i32* %2, align 4
  br label %205

88:                                               ; preds = %81
  %89 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %89, i32* %2, align 4
  br label %205

90:                                               ; preds = %46
  %91 = load i32, i32* @OCTEON_CN61XX, align 4
  %92 = call i64 @OCTEON_IS_MODEL(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %140

94:                                               ; preds = %90
  %95 = load i32, i32* %3, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = call i32 @CVMX_MIO_QLMX_CFG(i32 2)
  %99 = call i8* @cvmx_read_csr(i32 %98)
  %100 = bitcast %union.cvmx_mio_qlmx_cfg* %6 to i8**
  store i8* %99, i8** %100, align 8
  %101 = bitcast %union.cvmx_mio_qlmx_cfg* %6 to %struct.TYPE_4__*
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 4
  store i32 %106, i32* %2, align 4
  br label %205

107:                                              ; preds = %97
  %108 = bitcast %union.cvmx_mio_qlmx_cfg* %6 to %struct.TYPE_4__*
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_XAUI, align 4
  store i32 %113, i32* %2, align 4
  br label %205

114:                                              ; preds = %107
  %115 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %115, i32* %2, align 4
  br label %205

116:                                              ; preds = %94
  %117 = load i32, i32* %3, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %138

119:                                              ; preds = %116
  %120 = call i32 @CVMX_MIO_QLMX_CFG(i32 0)
  %121 = call i8* @cvmx_read_csr(i32 %120)
  %122 = bitcast %union.cvmx_mio_qlmx_cfg* %6 to i8**
  store i8* %121, i8** %122, align 8
  %123 = bitcast %union.cvmx_mio_qlmx_cfg* %6 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 4
  store i32 %128, i32* %2, align 4
  br label %205

129:                                              ; preds = %119
  %130 = bitcast %union.cvmx_mio_qlmx_cfg* %6 to %struct.TYPE_4__*
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 3
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_XAUI, align 4
  store i32 %135, i32* %2, align 4
  br label %205

136:                                              ; preds = %129
  %137 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %137, i32* %2, align 4
  br label %205

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %138
  br label %161

140:                                              ; preds = %90
  %141 = load i32, i32* @OCTEON_CNF71XX, align 4
  %142 = call i64 @OCTEON_IS_MODEL(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %140
  %145 = load i32, i32* %3, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  %148 = call i32 @CVMX_MIO_QLMX_CFG(i32 0)
  %149 = call i8* @cvmx_read_csr(i32 %148)
  %150 = bitcast %union.cvmx_mio_qlmx_cfg* %7 to i8**
  store i8* %149, i8** %150, align 8
  %151 = bitcast %union.cvmx_mio_qlmx_cfg* %7 to %struct.TYPE_4__*
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 4
  store i32 %156, i32* %2, align 4
  br label %205

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %144
  %159 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %159, i32* %2, align 4
  br label %205

160:                                              ; preds = %140
  br label %161

161:                                              ; preds = %160, %139
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %3, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32, i32* @OCTEON_CN63XX, align 4
  %167 = call i64 @OCTEON_IS_MODEL(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %170, i32* %2, align 4
  br label %205

171:                                              ; preds = %165, %162
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @CVMX_GMXX_INF_MODE(i32 %172)
  %174 = call i8* @cvmx_read_csr(i32 %173)
  %175 = bitcast %union.cvmx_gmxx_inf_mode* %4 to i8**
  store i8* %174, i8** %175, align 8
  %176 = load i32, i32* @OCTEON_CN63XX, align 4
  %177 = call i64 @OCTEON_IS_MODEL(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %171
  %180 = bitcast %union.cvmx_gmxx_inf_mode* %4 to %struct.TYPE_5__*
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  switch i32 %182, label %187 [
    i32 0, label %183
    i32 1, label %185
  ]

183:                                              ; preds = %179
  %184 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_SGMII, align 4
  store i32 %184, i32* %2, align 4
  br label %205

185:                                              ; preds = %179
  %186 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_XAUI, align 4
  store i32 %186, i32* %2, align 4
  br label %205

187:                                              ; preds = %179
  %188 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %188, i32* %2, align 4
  br label %205

189:                                              ; preds = %171
  %190 = bitcast %union.cvmx_gmxx_inf_mode* %4 to %struct.TYPE_6__*
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %189
  %195 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_DISABLED, align 4
  store i32 %195, i32* %2, align 4
  br label %205

196:                                              ; preds = %189
  %197 = bitcast %union.cvmx_gmxx_inf_mode* %4 to %struct.TYPE_6__*
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_GMII, align 4
  store i32 %202, i32* %2, align 4
  br label %205

203:                                              ; preds = %196
  %204 = load i32, i32* @CVMX_HELPER_INTERFACE_MODE_RGMII, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %201, %194, %187, %185, %183, %169, %158, %155, %136, %134, %127, %114, %112, %105, %88, %86, %79, %72, %64, %44, %22, %17, %11
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @__cvmx_get_mode_cn68xx(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_QLMX_CFG(i32) #1

declare dso_local i32 @CVMX_GMXX_INF_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
