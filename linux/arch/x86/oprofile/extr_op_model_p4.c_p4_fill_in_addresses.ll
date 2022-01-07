; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_p4.c_p4_fill_in_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_p4.c_p4_fill_in_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.op_msrs = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@num_counters = common dso_local global i32 0, align 4
@p4_counters = common dso_local global %struct.TYPE_8__* null, align 8
@MSR_P4_BSU_ESCR0 = common dso_local global i32 0, align 4
@MSR_P4_IQ_ESCR0 = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@MSR_P4_BSU_ESCR1 = common dso_local global i32 0, align 4
@MSR_P4_IQ_ESCR1 = common dso_local global i32 0, align 4
@MSR_P4_RAT_ESCR0 = common dso_local global i32 0, align 4
@MSR_P4_SSU_ESCR0 = common dso_local global i32 0, align 4
@MSR_P4_MS_ESCR0 = common dso_local global i32 0, align 4
@MSR_P4_TC_ESCR1 = common dso_local global i32 0, align 4
@MSR_P4_IX_ESCR0 = common dso_local global i32 0, align 4
@MSR_P4_CRU_ESCR3 = common dso_local global i32 0, align 4
@NUM_COUNTERS_NON_HT = common dso_local global i32 0, align 4
@MSR_P4_CRU_ESCR5 = common dso_local global i32 0, align 4
@MSR_P4_CRU_ESCR4 = common dso_local global i32 0, align 4
@counter_config = common dso_local global %struct.TYPE_9__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_msrs*)* @p4_fill_in_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4_fill_in_addresses(%struct.op_msrs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.op_msrs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.op_msrs* %0, %struct.op_msrs** %3, align 8
  %8 = call i32 (...) @setup_num_counters()
  %9 = call i32 (...) @get_stagger()
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %50, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @num_counters, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %10
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p4_counters, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @VIRT_CTR(i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p4_counters, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @VIRT_CTR(i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @reserve_perfctr_nmi(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %14
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %35 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %33, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %43 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %41, i32* %48, align 4
  br label %49

49:                                               ; preds = %32, %14
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %10

53:                                               ; preds = %10
  %54 = load i32, i32* @MSR_P4_BSU_ESCR0, align 4
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %54, %55
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %75, %53
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @MSR_P4_IQ_ESCR0, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @reserve_evntsel_nmi(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %68 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %66, i32* %73, align 4
  br label %74

74:                                               ; preds = %65, %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %4, align 4
  %78 = call i64 (...) @addr_increment()
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %5, align 4
  br label %57

83:                                               ; preds = %57
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @boot_cpu_data, i32 0, i32 0), align 4
  %85 = icmp sge i32 %84, 3
  br i1 %85, label %86, label %117

86:                                               ; preds = %83
  %87 = load i32, i32* @MSR_P4_BSU_ESCR0, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %87, %88
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %108, %86
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @MSR_P4_BSU_ESCR1, align 4
  %93 = icmp ule i32 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %90
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @reserve_evntsel_nmi(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %101 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 %99, i32* %106, align 4
  br label %107

107:                                              ; preds = %98, %94
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %4, align 4
  %111 = call i64 (...) @addr_increment()
  %112 = load i32, i32* %5, align 4
  %113 = zext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %90

116:                                              ; preds = %90
  br label %148

117:                                              ; preds = %83
  %118 = load i32, i32* @MSR_P4_IQ_ESCR0, align 4
  %119 = load i32, i32* %7, align 4
  %120 = add i32 %118, %119
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %139, %117
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @MSR_P4_IQ_ESCR1, align 4
  %124 = icmp ule i32 %122, %123
  br i1 %124, label %125, label %147

125:                                              ; preds = %121
  %126 = load i32, i32* %5, align 4
  %127 = call i64 @reserve_evntsel_nmi(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %132 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32 %130, i32* %137, align 4
  br label %138

138:                                              ; preds = %129, %125
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %4, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %4, align 4
  %142 = call i64 (...) @addr_increment()
  %143 = load i32, i32* %5, align 4
  %144 = zext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %5, align 4
  br label %121

147:                                              ; preds = %121
  br label %148

148:                                              ; preds = %147, %116
  %149 = load i32, i32* @MSR_P4_RAT_ESCR0, align 4
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %149, %150
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %170, %148
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @MSR_P4_SSU_ESCR0, align 4
  %155 = icmp ule i32 %153, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %152
  %157 = load i32, i32* %5, align 4
  %158 = call i64 @reserve_evntsel_nmi(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i32, i32* %5, align 4
  %162 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %163 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %162, i32 0, i32 0
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i32 %161, i32* %168, align 4
  br label %169

169:                                              ; preds = %160, %156
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %4, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %4, align 4
  %173 = call i64 (...) @addr_increment()
  %174 = load i32, i32* %5, align 4
  %175 = zext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %5, align 4
  br label %152

178:                                              ; preds = %152
  %179 = load i32, i32* @MSR_P4_MS_ESCR0, align 4
  %180 = load i32, i32* %7, align 4
  %181 = add i32 %179, %180
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %200, %178
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @MSR_P4_TC_ESCR1, align 4
  %185 = icmp ule i32 %183, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %182
  %187 = load i32, i32* %5, align 4
  %188 = call i64 @reserve_evntsel_nmi(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %193 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %192, i32 0, i32 0
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  store i32 %191, i32* %198, align 4
  br label %199

199:                                              ; preds = %190, %186
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %4, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %4, align 4
  %203 = call i64 (...) @addr_increment()
  %204 = load i32, i32* %5, align 4
  %205 = zext i32 %204 to i64
  %206 = add nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %5, align 4
  br label %182

208:                                              ; preds = %182
  %209 = load i32, i32* @MSR_P4_IX_ESCR0, align 4
  %210 = load i32, i32* %7, align 4
  %211 = add i32 %209, %210
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %230, %208
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @MSR_P4_CRU_ESCR3, align 4
  %215 = icmp ule i32 %213, %214
  br i1 %215, label %216, label %238

216:                                              ; preds = %212
  %217 = load i32, i32* %5, align 4
  %218 = call i64 @reserve_evntsel_nmi(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = load i32, i32* %5, align 4
  %222 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %223 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %222, i32 0, i32 0
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = load i32, i32* %4, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  store i32 %221, i32* %228, align 4
  br label %229

229:                                              ; preds = %220, %216
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %4, align 4
  %232 = add i32 %231, 1
  store i32 %232, i32* %4, align 4
  %233 = call i64 (...) @addr_increment()
  %234 = load i32, i32* %5, align 4
  %235 = zext i32 %234 to i64
  %236 = add nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %5, align 4
  br label %212

238:                                              ; preds = %212
  %239 = load i32, i32* @num_counters, align 4
  %240 = load i32, i32* @NUM_COUNTERS_NON_HT, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %271

242:                                              ; preds = %238
  %243 = load i32, i32* @MSR_P4_CRU_ESCR5, align 4
  %244 = call i64 @reserve_evntsel_nmi(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %242
  %247 = load i32, i32* @MSR_P4_CRU_ESCR5, align 4
  %248 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %249 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %248, i32 0, i32 0
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %249, align 8
  %251 = load i32, i32* %4, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %4, align 4
  %253 = zext i32 %251 to i64
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  store i32 %247, i32* %255, align 4
  br label %256

256:                                              ; preds = %246, %242
  %257 = load i32, i32* @MSR_P4_CRU_ESCR4, align 4
  %258 = call i64 @reserve_evntsel_nmi(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %256
  %261 = load i32, i32* @MSR_P4_CRU_ESCR4, align 4
  %262 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %263 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %262, i32 0, i32 0
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = load i32, i32* %4, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %4, align 4
  %267 = zext i32 %265 to i64
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 0
  store i32 %261, i32* %269, align 4
  br label %270

270:                                              ; preds = %260, %256
  br label %314

271:                                              ; preds = %238
  %272 = load i32, i32* %7, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %271
  %275 = load i32, i32* @MSR_P4_CRU_ESCR4, align 4
  %276 = call i64 @reserve_evntsel_nmi(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %274
  %279 = load i32, i32* @MSR_P4_CRU_ESCR4, align 4
  %280 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %281 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %280, i32 0, i32 0
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %281, align 8
  %283 = load i32, i32* %4, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %4, align 4
  %285 = zext i32 %283 to i64
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 0
  store i32 %279, i32* %287, align 4
  br label %288

288:                                              ; preds = %278, %274
  br label %313

289:                                              ; preds = %271
  %290 = load i32, i32* @MSR_P4_CRU_ESCR5, align 4
  %291 = call i64 @reserve_evntsel_nmi(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %312

293:                                              ; preds = %289
  %294 = load i32, i32* @MSR_P4_CRU_ESCR5, align 4
  %295 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %296 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %295, i32 0, i32 0
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = load i32, i32* %4, align 4
  %299 = add i32 %298, 1
  store i32 %299, i32* %4, align 4
  %300 = zext i32 %298 to i64
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  store i32 %294, i32* %302, align 4
  %303 = load i32, i32* @MSR_P4_CRU_ESCR5, align 4
  %304 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %305 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %304, i32 0, i32 0
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = load i32, i32* %4, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %4, align 4
  %309 = zext i32 %307 to i64
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 0
  store i32 %303, i32* %311, align 4
  br label %312

312:                                              ; preds = %293, %289
  br label %313

313:                                              ; preds = %312, %288
  br label %314

314:                                              ; preds = %313, %270
  store i32 0, i32* %4, align 4
  br label %315

315:                                              ; preds = %346, %314
  %316 = load i32, i32* %4, align 4
  %317 = load i32, i32* @num_counters, align 4
  %318 = icmp ult i32 %316, %317
  br i1 %318, label %319, label %349

319:                                              ; preds = %315
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** @counter_config, align 8
  %321 = load i32, i32* %4, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %319
  br label %346

328:                                              ; preds = %319
  %329 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %330 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %329, i32 0, i32 0
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %330, align 8
  %332 = load i32, i32* %4, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %328
  br label %346

339:                                              ; preds = %328
  %340 = load i32, i32* %4, align 4
  %341 = call i32 @op_x86_warn_reserved(i32 %340)
  %342 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %343 = call i32 @p4_shutdown(%struct.op_msrs* %342)
  %344 = load i32, i32* @EBUSY, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %2, align 4
  br label %350

346:                                              ; preds = %338, %327
  %347 = load i32, i32* %4, align 4
  %348 = add i32 %347, 1
  store i32 %348, i32* %4, align 4
  br label %315

349:                                              ; preds = %315
  store i32 0, i32* %2, align 4
  br label %350

350:                                              ; preds = %349, %339
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local i32 @setup_num_counters(...) #1

declare dso_local i32 @get_stagger(...) #1

declare dso_local i64 @VIRT_CTR(i32, i32) #1

declare dso_local i64 @reserve_perfctr_nmi(i32) #1

declare dso_local i64 @reserve_evntsel_nmi(i32) #1

declare dso_local i64 @addr_increment(...) #1

declare dso_local i32 @op_x86_warn_reserved(i32) #1

declare dso_local i32 @p4_shutdown(%struct.op_msrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
