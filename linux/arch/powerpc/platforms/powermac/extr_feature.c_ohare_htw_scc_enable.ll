; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_ohare_htw_scc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_ohare_htw_scc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.device_node = type { i32 }
%struct.macio_chip = type { i64, i64 }

@ENODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ch-a\00", align 1
@MACIO_FLAG_SCCA_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ch-b\00", align 1
@MACIO_FLAG_SCCB_ON = common dso_local global i64 0, align 8
@macio_heathrow = common dso_local global i64 0, align 8
@macio_paddington = common dso_local global i64 0, align 8
@macio_gatwick = common dso_local global i64 0, align 8
@pmac_mb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PMAC_TYPE_YOSEMITE = common dso_local global i64 0, align 8
@PMAC_TYPE_YIKES = common dso_local global i64 0, align 8
@OHARE_FCR = common dso_local global i32 0, align 4
@OH_SCC_ENABLE = common dso_local global i64 0, align 8
@HRW_SCC_TRANS_EN_N = common dso_local global i64 0, align 8
@HRW_RESET_SCC = common dso_local global i64 0, align 8
@OH_SCC_RESET = common dso_local global i64 0, align 8
@OH_SCCA_IO = common dso_local global i64 0, align 8
@OH_SCCB_IO = common dso_local global i64 0, align 8
@PMAC_SCC_FLAG_XMON = common dso_local global i64 0, align 8
@MACIO_FLAG_SCC_LOCKED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@PMAC_SCC_IRDA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @ohare_htw_scc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ohare_htw_scc_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.macio_chip*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call %struct.macio_chip* @macio_find(%struct.device_node* %15, i32 0)
  store %struct.macio_chip* %16, %struct.macio_chip** %8, align 8
  %17 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %18 = icmp ne %struct.macio_chip* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* @ENODEV, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %4, align 8
  br label %241

22:                                               ; preds = %3
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i64 @of_node_name_eq(%struct.device_node* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  store i64 %27, i64* %9, align 8
  br label %38

28:                                               ; preds = %22
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call i64 @of_node_name_eq(%struct.device_node* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  store i64 %33, i64* %9, align 8
  br label %37

34:                                               ; preds = %28
  %35 = load i64, i64* @ENODEV, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %4, align 8
  br label %241

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %40 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @macio_heathrow, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %46 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @macio_paddington, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %52 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @macio_gatwick, align 8
  %55 = icmp eq i64 %53, %54
  br label %56

56:                                               ; preds = %50, %44, %38
  %57 = phi i1 [ true, %44 ], [ true, %38 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %12, align 4
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 8
  %60 = load i64, i64* @PMAC_TYPE_YOSEMITE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 8
  %64 = load i64, i64* @PMAC_TYPE_YIKES, align 8
  %65 = icmp ne i64 %63, %64
  br label %66

66:                                               ; preds = %62, %56
  %67 = phi i1 [ false, %56 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %167

71:                                               ; preds = %66
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @LOCK(i64 %72)
  %74 = load i32, i32* @OHARE_FCR, align 4
  %75 = call i64 @MACIO_IN32(i32 %74)
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @OH_SCC_ENABLE, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %126, label %80

80:                                               ; preds = %71
  %81 = load i64, i64* @OH_SCC_ENABLE, align 8
  %82 = load i64, i64* %10, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %10, align 8
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %80
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i64, i64* @HRW_SCC_TRANS_EN_N, align 8
  %91 = xor i64 %90, -1
  %92 = load i64, i64* %10, align 8
  %93 = and i64 %92, %91
  store i64 %93, i64* %10, align 8
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* @OHARE_FCR, align 4
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @MACIO_OUT32(i32 %95, i64 %96)
  %98 = load i64, i64* @HRW_RESET_SCC, align 8
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %10, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %10, align 8
  %101 = load i32, i32* @OHARE_FCR, align 4
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @MACIO_OUT32(i32 %101, i64 %102)
  br label %111

104:                                              ; preds = %80
  %105 = load i64, i64* @OH_SCC_RESET, align 8
  store i64 %105, i64* %14, align 8
  %106 = load i64, i64* %10, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %10, align 8
  %108 = load i32, i32* @OHARE_FCR, align 4
  %109 = load i64, i64* %10, align 8
  %110 = call i32 @MACIO_OUT32(i32 %108, i64 %109)
  br label %111

111:                                              ; preds = %104, %94
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @UNLOCK(i64 %112)
  %114 = load i32, i32* @OHARE_FCR, align 4
  %115 = call i64 @MACIO_IN32(i32 %114)
  %116 = call i32 @mdelay(i32 15)
  %117 = load i64, i64* %11, align 8
  %118 = call i32 @LOCK(i64 %117)
  %119 = load i64, i64* %14, align 8
  %120 = xor i64 %119, -1
  %121 = load i64, i64* %10, align 8
  %122 = and i64 %121, %120
  store i64 %122, i64* %10, align 8
  %123 = load i32, i32* @OHARE_FCR, align 4
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @MACIO_OUT32(i32 %123, i64 %124)
  br label %126

126:                                              ; preds = %111, %71
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  %129 = and i64 %127, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i64, i64* @OH_SCCA_IO, align 8
  %133 = load i64, i64* %10, align 8
  %134 = or i64 %133, %132
  store i64 %134, i64* %10, align 8
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  %138 = and i64 %136, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i64, i64* @OH_SCCB_IO, align 8
  %142 = load i64, i64* %10, align 8
  %143 = or i64 %142, %141
  store i64 %143, i64* %10, align 8
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i32, i32* @OHARE_FCR, align 4
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @MACIO_OUT32(i32 %145, i64 %146)
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %150 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = or i64 %151, %148
  store i64 %152, i64* %150, align 8
  %153 = load i64, i64* %11, align 8
  %154 = call i32 @UNLOCK(i64 %153)
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @PMAC_SCC_FLAG_XMON, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %144
  %160 = load i32, i32* @MACIO_FLAG_SCC_LOCKED, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %163 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = or i64 %164, %161
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %159, %144
  br label %240

167:                                              ; preds = %66
  %168 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %169 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* @MACIO_FLAG_SCC_LOCKED, align 4
  %172 = sext i32 %171 to i64
  %173 = and i64 %170, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %167
  %176 = load i64, i64* @EPERM, align 8
  %177 = sub nsw i64 0, %176
  store i64 %177, i64* %4, align 8
  br label %241

178:                                              ; preds = %167
  %179 = load i64, i64* %11, align 8
  %180 = call i32 @LOCK(i64 %179)
  %181 = load i32, i32* @OHARE_FCR, align 4
  %182 = call i64 @MACIO_IN32(i32 %181)
  store i64 %182, i64* %10, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  %185 = and i64 %183, %184
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %178
  %188 = load i64, i64* @OH_SCCA_IO, align 8
  %189 = xor i64 %188, -1
  %190 = load i64, i64* %10, align 8
  %191 = and i64 %190, %189
  store i64 %191, i64* %10, align 8
  br label %192

192:                                              ; preds = %187, %178
  %193 = load i64, i64* %9, align 8
  %194 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  %195 = and i64 %193, %194
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load i64, i64* @OH_SCCB_IO, align 8
  %199 = xor i64 %198, -1
  %200 = load i64, i64* %10, align 8
  %201 = and i64 %200, %199
  store i64 %201, i64* %10, align 8
  br label %202

202:                                              ; preds = %197, %192
  %203 = load i32, i32* @OHARE_FCR, align 4
  %204 = load i64, i64* %10, align 8
  %205 = call i32 @MACIO_OUT32(i32 %203, i64 %204)
  %206 = load i64, i64* %10, align 8
  %207 = load i64, i64* @OH_SCCA_IO, align 8
  %208 = load i64, i64* @OH_SCCB_IO, align 8
  %209 = or i64 %207, %208
  %210 = and i64 %206, %209
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %230

212:                                              ; preds = %202
  %213 = load i64, i64* @OH_SCC_ENABLE, align 8
  %214 = xor i64 %213, -1
  %215 = load i64, i64* %10, align 8
  %216 = and i64 %215, %214
  store i64 %216, i64* %10, align 8
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %212
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i64, i64* @HRW_SCC_TRANS_EN_N, align 8
  %224 = load i64, i64* %10, align 8
  %225 = or i64 %224, %223
  store i64 %225, i64* %10, align 8
  br label %226

226:                                              ; preds = %222, %219, %212
  %227 = load i32, i32* @OHARE_FCR, align 4
  %228 = load i64, i64* %10, align 8
  %229 = call i32 @MACIO_OUT32(i32 %227, i64 %228)
  br label %230

230:                                              ; preds = %226, %202
  %231 = load i64, i64* %9, align 8
  %232 = xor i64 %231, -1
  %233 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %234 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = and i64 %235, %232
  store i64 %236, i64* %234, align 8
  %237 = load i64, i64* %11, align 8
  %238 = call i32 @UNLOCK(i64 %237)
  %239 = call i32 @mdelay(i32 10)
  br label %240

240:                                              ; preds = %230, %166
  store i64 0, i64* %4, align 8
  br label %241

241:                                              ; preds = %240, %175, %34, %19
  %242 = load i64, i64* %4, align 8
  ret i64 %242
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i64 @MACIO_IN32(i32) #1

declare dso_local i32 @MACIO_OUT32(i32, i64) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
