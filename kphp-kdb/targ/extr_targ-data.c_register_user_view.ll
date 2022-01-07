; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_register_user_view.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_register_user_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { double, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.lev_targ_user_view = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.advert = type { double, double, double, double, i64, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@LEV_TARG_USER_VIEW = common dso_local global i64 0, align 8
@targeting_disabled = common dso_local global i64 0, align 8
@MAX_ADS = common dso_local global i32 0, align 4
@AdSpace = common dso_local global i32 0, align 4
@inactive_ad_nodes = common dso_local global i32 0, align 4
@MAX_AD_VIEWS = common dso_local global i32 0, align 4
@AdStats = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ADF_NEWVIEWS = common dso_local global i32 0, align 4
@total_sump1 = common dso_local global double 0.000000e+00, align 8
@total_sump2 = common dso_local global double 0.000000e+00, align 8
@ADF_ANYVIEWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_user_view*)* @register_user_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_user_view(%struct.lev_targ_user_view* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_targ_user_view*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.advert*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  store %struct.lev_targ_user_view* %0, %struct.lev_targ_user_view** %3, align 8
  %12 = load %struct.lev_targ_user_view*, %struct.lev_targ_user_view** %3, align 8
  %13 = getelementptr inbounds %struct.lev_targ_user_view, %struct.lev_targ_user_view* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LEV_TARG_USER_VIEW, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.lev_targ_user_view*, %struct.lev_targ_user_view** %3, align 8
  %20 = getelementptr inbounds %struct.lev_targ_user_view, %struct.lev_targ_user_view* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_10__* @get_user(i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %4, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = call i32 @account_user_online(%struct.TYPE_10__* %23)
  %25 = load i64, i64* @targeting_disabled, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %277

28:                                               ; preds = %1
  %29 = load %struct.lev_targ_user_view*, %struct.lev_targ_user_view** %3, align 8
  %30 = getelementptr inbounds %struct.lev_targ_user_view, %struct.lev_targ_user_view* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MAX_ADS, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %34, %28
  store i32 -1, i32* %2, align 4
  br label %277

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.advert* @get_ad(i32 %43)
  store %struct.advert* %44, %struct.advert** %6, align 8
  %45 = load %struct.advert*, %struct.advert** %6, align 8
  %46 = icmp ne %struct.advert* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ad_is_ancient(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %277

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = call %struct.advert* @get_ad_f(i32 %53, i32 1)
  store %struct.advert* %54, %struct.advert** %6, align 8
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i32, i32* @AdSpace, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @intree_lookup(i32 %56, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %277

64:                                               ; preds = %55
  %65 = load %struct.advert*, %struct.advert** %6, align 8
  %66 = call i32 @load_ancient_ad(%struct.advert* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %277

71:                                               ; preds = %64
  %72 = load i32, i32* @AdSpace, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @intree_lookup(i32 %72, i32 %75, i32 %76)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load i32, i32* @AdSpace, align 4
  %82 = load i64, i64* %9, align 8
  %83 = call %struct.TYPE_11__* @TNODE(i32 %81, i64 %82)
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  store i32 %86, i32* %8, align 4
  br label %126

87:                                               ; preds = %71
  %88 = load i32, i32* @AdSpace, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @intree_lookup(i32 %88, i32 %91, i32 %92)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %87
  %97 = load i32, i32* @AdSpace, align 4
  %98 = load i64, i64* %9, align 8
  %99 = call %struct.TYPE_11__* @TNODE(i32 %97, i64 %98)
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  store i32 %102, i32* %8, align 4
  br label %125

103:                                              ; preds = %87
  %104 = load i32, i32* @AdSpace, align 4
  %105 = call i64 @new_intree_node(i32 %104)
  store i64 %105, i64* %9, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @AdSpace, align 4
  %108 = load i64, i64* %9, align 8
  %109 = call %struct.TYPE_11__* @TNODE(i32 %107, i64 %108)
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* @AdSpace, align 4
  %112 = load i64, i64* %9, align 8
  %113 = call %struct.TYPE_11__* @TNODE(i32 %111, i64 %112)
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 4
  store i32 1, i32* %8, align 4
  %115 = load i32, i32* @AdSpace, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @intree_insert(i32 %115, i32 %118, i64 %119)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @inactive_ad_nodes, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* @inactive_ad_nodes, align 4
  br label %125

125:                                              ; preds = %103, %96
  br label %126

126:                                              ; preds = %125, %80
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @incr_ad_views(i32 %127, i32 1, i32 1)
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @MAX_AD_VIEWS, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* @MAX_AD_VIEWS, align 4
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %132, %126
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %10, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %139 = load i64, i64* %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load double, double* %141, align 8
  %143 = fcmp une double %142, 0.000000e+00
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  store i64 0, i64* %10, align 8
  br label %149

149:                                              ; preds = %148, %135
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load double, double* %153, align 8
  %155 = call i64 @likely(double %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %217

157:                                              ; preds = %149
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %159 = load i64, i64* %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = sitofp i64 %162 to double
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load double, double* %167, align 8
  %169 = fdiv double %163, %168
  store double %169, double* %11, align 8
  %170 = load double, double* %11, align 8
  %171 = load %struct.advert*, %struct.advert** %6, align 8
  %172 = getelementptr inbounds %struct.advert, %struct.advert* %171, i32 0, i32 0
  %173 = load double, double* %172, align 8
  %174 = fadd double %173, %170
  store double %174, double* %172, align 8
  %175 = load double, double* %11, align 8
  %176 = load %struct.advert*, %struct.advert** %6, align 8
  %177 = getelementptr inbounds %struct.advert, %struct.advert* %176, i32 0, i32 1
  %178 = load double, double* %177, align 8
  %179 = fadd double %178, %175
  store double %179, double* %177, align 8
  %180 = load double, double* %11, align 8
  %181 = load double, double* %11, align 8
  %182 = fmul double %180, %181
  %183 = load %struct.advert*, %struct.advert** %6, align 8
  %184 = getelementptr inbounds %struct.advert, %struct.advert* %183, i32 0, i32 2
  %185 = load double, double* %184, align 8
  %186 = fadd double %185, %182
  store double %186, double* %184, align 8
  %187 = load double, double* %11, align 8
  %188 = load double, double* %11, align 8
  %189 = fmul double %187, %188
  %190 = load %struct.advert*, %struct.advert** %6, align 8
  %191 = getelementptr inbounds %struct.advert, %struct.advert* %190, i32 0, i32 3
  %192 = load double, double* %191, align 8
  %193 = fadd double %192, %189
  store double %193, double* %191, align 8
  %194 = load %struct.advert*, %struct.advert** %6, align 8
  %195 = getelementptr inbounds %struct.advert, %struct.advert* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = icmp sgt i64 %196, 0
  br i1 %197, label %198, label %214

198:                                              ; preds = %157
  %199 = load %struct.advert*, %struct.advert** %6, align 8
  %200 = getelementptr inbounds %struct.advert, %struct.advert* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @ADF_NEWVIEWS, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %198
  %206 = load double, double* %11, align 8
  %207 = load double, double* @total_sump1, align 8
  %208 = fadd double %207, %206
  store double %208, double* @total_sump1, align 8
  %209 = load double, double* %11, align 8
  %210 = load double, double* %11, align 8
  %211 = fmul double %209, %210
  %212 = load double, double* @total_sump2, align 8
  %213 = fadd double %212, %211
  store double %213, double* @total_sump2, align 8
  br label %214

214:                                              ; preds = %205, %198, %157
  %215 = load %struct.advert*, %struct.advert** %6, align 8
  %216 = call i32 @compute_ad_lambda(%struct.advert* %215)
  br label %217

217:                                              ; preds = %214, %149
  %218 = load %struct.advert*, %struct.advert** %6, align 8
  %219 = getelementptr inbounds %struct.advert, %struct.advert* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @ADF_ANYVIEWS, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %217
  %225 = load i32, i32* @ADF_NEWVIEWS, align 4
  %226 = load %struct.advert*, %struct.advert** %6, align 8
  %227 = getelementptr inbounds %struct.advert, %struct.advert* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %224, %217
  %231 = load %struct.advert*, %struct.advert** %6, align 8
  %232 = getelementptr inbounds %struct.advert, %struct.advert* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @ADF_NEWVIEWS, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %271

237:                                              ; preds = %230
  %238 = load %struct.advert*, %struct.advert** %6, align 8
  %239 = getelementptr inbounds %struct.advert, %struct.advert* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = icmp sgt i64 %240, 0
  br i1 %241, label %242, label %271

242:                                              ; preds = %237
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 1), align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i64 0
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load double, double* %250, align 8
  %252 = fadd double %251, 1.000000e+00
  store double %252, double* %250, align 8
  %253 = load i32, i32* %8, align 4
  %254 = icmp sgt i32 %253, 0
  %255 = zext i1 %254 to i32
  %256 = call i32 @assert(i32 %255)
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 1), align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %261, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = load double, double* %268, align 8
  %270 = fadd double %269, 1.000000e+00
  store double %270, double* %268, align 8
  br label %271

271:                                              ; preds = %242, %237, %230
  %272 = load %struct.advert*, %struct.advert** %6, align 8
  %273 = load %struct.lev_targ_user_view*, %struct.lev_targ_user_view** %3, align 8
  %274 = getelementptr inbounds %struct.lev_targ_user_view, %struct.lev_targ_user_view* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @register_one_view(%struct.advert* %272, i32 %275)
  store i32 1, i32* %2, align 4
  br label %277

277:                                              ; preds = %271, %69, %63, %51, %41, %27
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @get_user(i32) #1

declare dso_local i32 @account_user_online(%struct.TYPE_10__*) #1

declare dso_local %struct.advert* @get_ad(i32) #1

declare dso_local i32 @ad_is_ancient(i32) #1

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i64 @intree_lookup(i32, i32, i32) #1

declare dso_local i32 @load_ancient_ad(%struct.advert*) #1

declare dso_local %struct.TYPE_11__* @TNODE(i32, i64) #1

declare dso_local i64 @new_intree_node(i32) #1

declare dso_local i32 @intree_insert(i32, i32, i64) #1

declare dso_local i32 @incr_ad_views(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(double) #1

declare dso_local i32 @compute_ad_lambda(%struct.advert*) #1

declare dso_local i32 @register_one_view(%struct.advert*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
