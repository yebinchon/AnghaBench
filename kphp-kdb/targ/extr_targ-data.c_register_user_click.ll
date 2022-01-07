; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_register_user_click.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_register_user_click.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.lev_targ_click_ext = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, i8* }
%struct.advert = type { i32, i32, double, double, double, double, double, double, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@LEV_TARG_CLICK = common dso_local global i64 0, align 8
@LEV_TARG_CLICK_EXT = common dso_local global i64 0, align 8
@targeting_disabled = common dso_local global i64 0, align 8
@MAX_ADS = common dso_local global i32 0, align 4
@AdSpace = common dso_local global i32 0, align 4
@ADF_ON = common dso_local global i32 0, align 4
@ADF_ANCIENT = common dso_local global i32 0, align 4
@active_ad_nodes = common dso_local global i32 0, align 4
@inactive_ad_nodes = common dso_local global i32 0, align 4
@clicked_ad_nodes = common dso_local global i32 0, align 4
@MAX_AD_VIEWS = common dso_local global i32 0, align 4
@AdStats = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ADF_NEWVIEWS = common dso_local global i32 0, align 4
@total_sump0 = common dso_local global i32 0, align 4
@total_sump1 = common dso_local global double 0.000000e+00, align 8
@total_sump2 = common dso_local global double 0.000000e+00, align 8
@MONEY_SCALE = common dso_local global i32 0, align 4
@tot_click_money = common dso_local global i32 0, align 4
@tot_clicks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_click_ext*)* @register_user_click to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_user_click(%struct.lev_targ_click_ext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_targ_click_ext*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.advert*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store %struct.lev_targ_click_ext* %0, %struct.lev_targ_click_ext** %3, align 8
  %12 = load %struct.lev_targ_click_ext*, %struct.lev_targ_click_ext** %3, align 8
  %13 = getelementptr inbounds %struct.lev_targ_click_ext, %struct.lev_targ_click_ext* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LEV_TARG_CLICK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.lev_targ_click_ext*, %struct.lev_targ_click_ext** %3, align 8
  %19 = getelementptr inbounds %struct.lev_targ_click_ext, %struct.lev_targ_click_ext* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LEV_TARG_CLICK_EXT, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %17, %1
  %24 = phi i1 [ true, %1 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* @targeting_disabled, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %452

30:                                               ; preds = %23
  %31 = load %struct.lev_targ_click_ext*, %struct.lev_targ_click_ext** %3, align 8
  %32 = getelementptr inbounds %struct.lev_targ_click_ext, %struct.lev_targ_click_ext* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_10__* @get_user(i32 %33)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %4, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = call i32 @account_user_online(%struct.TYPE_10__* %35)
  %37 = load %struct.lev_targ_click_ext*, %struct.lev_targ_click_ext** %3, align 8
  %38 = getelementptr inbounds %struct.lev_targ_click_ext, %struct.lev_targ_click_ext* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %5, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @MAX_ADS, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %42, %30
  store i32 -1, i32* %2, align 4
  br label %452

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = call %struct.advert* @get_ad(i32 %51)
  store %struct.advert* %52, %struct.advert** %6, align 8
  %53 = load %struct.advert*, %struct.advert** %6, align 8
  %54 = icmp ne %struct.advert* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ad_is_ancient(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 -1, i32* %2, align 4
  br label %452

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = call %struct.advert* @get_ad_f(i32 %61, i32 1)
  store %struct.advert* %62, %struct.advert** %6, align 8
  br label %63

63:                                               ; preds = %60, %50
  %64 = load i32, i32* @AdSpace, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @intree_lookup(i32 %64, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %452

72:                                               ; preds = %63
  %73 = load %struct.advert*, %struct.advert** %6, align 8
  %74 = call i32 @load_ancient_ad(%struct.advert* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %452

79:                                               ; preds = %72
  %80 = load i32, i32* @AdSpace, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i8* @intree_remove(i32 %80, i8* %83, i32 %84, i64* %8)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %79
  %91 = load %struct.advert*, %struct.advert** %6, align 8
  %92 = getelementptr inbounds %struct.advert, %struct.advert* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ADF_ON, align 4
  %95 = load i32, i32* @ADF_ANCIENT, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = load i32, i32* @ADF_ON, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i32, i32* @active_ad_nodes, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* @active_ad_nodes, align 4
  br label %140

104:                                              ; preds = %79
  %105 = load i32, i32* @AdSpace, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i8* @intree_remove(i32 %105, i8* %108, i32 %109, i64* %8)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %104
  %116 = load i32, i32* @inactive_ad_nodes, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* @inactive_ad_nodes, align 4
  %118 = load %struct.advert*, %struct.advert** %6, align 8
  %119 = getelementptr inbounds %struct.advert, %struct.advert* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ADF_ANCIENT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  br label %139

127:                                              ; preds = %104
  %128 = load i32, i32* @AdSpace, align 4
  %129 = call i64 @new_intree_node(i32 %128)
  store i64 %129, i64* %8, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @AdSpace, align 4
  %132 = load i64, i64* %8, align 8
  %133 = call %struct.TYPE_11__* @TNODE(i32 %131, i64 %132)
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* @AdSpace, align 4
  %136 = load i64, i64* %8, align 8
  %137 = call %struct.TYPE_11__* @TNODE(i32 %135, i64 %136)
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %127, %115
  br label %140

140:                                              ; preds = %139, %90
  %141 = load i32, i32* @AdSpace, align 4
  %142 = load i64, i64* %8, align 8
  %143 = call %struct.TYPE_11__* @TNODE(i32 %141, i64 %142)
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp sle i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  br label %154

154:                                              ; preds = %148, %140
  %155 = load %struct.lev_targ_click_ext*, %struct.lev_targ_click_ext** %3, align 8
  %156 = getelementptr inbounds %struct.lev_targ_click_ext, %struct.lev_targ_click_ext* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @LEV_TARG_CLICK_EXT, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load %struct.lev_targ_click_ext*, %struct.lev_targ_click_ext** %3, align 8
  %162 = getelementptr inbounds %struct.lev_targ_click_ext, %struct.lev_targ_click_ext* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  br label %168

164:                                              ; preds = %154
  %165 = load %struct.advert*, %struct.advert** %6, align 8
  %166 = getelementptr inbounds %struct.advert, %struct.advert* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  br label %168

168:                                              ; preds = %164, %160
  %169 = phi i32 [ %163, %160 ], [ %167, %164 ]
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.advert*, %struct.advert** %6, align 8
  %172 = getelementptr inbounds %struct.advert, %struct.advert* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = xor i32 %170, %173
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %176, %168
  %178 = load %struct.advert*, %struct.advert** %6, align 8
  %179 = getelementptr inbounds %struct.advert, %struct.advert* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @assert(i32 %180)
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %9, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* @AdSpace, align 4
  %188 = load i64, i64* %8, align 8
  %189 = call %struct.TYPE_11__* @TNODE(i32 %187, i64 %188)
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  store i32 %186, i32* %190, align 4
  br label %191

191:                                              ; preds = %184, %177
  %192 = load i32, i32* @AdSpace, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i64, i64* %8, align 8
  %197 = call i32 @intree_insert(i32 %192, i32 %195, i64 %196)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* @clicked_ad_nodes, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* @clicked_ad_nodes, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %191
  store i32 0, i32* %2, align 4
  br label %452

205:                                              ; preds = %191
  %206 = load %struct.advert*, %struct.advert** %6, align 8
  %207 = getelementptr inbounds %struct.advert, %struct.advert* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @ADF_ON, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %205
  %213 = load i32, i32* %10, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %451

215:                                              ; preds = %212, %205
  %216 = load %struct.advert*, %struct.advert** %6, align 8
  %217 = getelementptr inbounds %struct.advert, %struct.advert* %216, i32 0, i32 11
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 4
  %220 = load %struct.advert*, %struct.advert** %6, align 8
  %221 = getelementptr inbounds %struct.advert, %struct.advert* %220, i32 0, i32 10
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  %224 = load %struct.advert*, %struct.advert** %6, align 8
  %225 = getelementptr inbounds %struct.advert, %struct.advert* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  %228 = load %struct.advert*, %struct.advert** %6, align 8
  %229 = getelementptr inbounds %struct.advert, %struct.advert* %228, i32 0, i32 2
  %230 = load double, double* %229, align 8
  %231 = fadd double %230, 1.000000e+00
  store double %231, double* %229, align 8
  %232 = load %struct.advert*, %struct.advert** %6, align 8
  %233 = getelementptr inbounds %struct.advert, %struct.advert* %232, i32 0, i32 3
  %234 = load double, double* %233, align 8
  %235 = fadd double %234, 1.000000e+00
  store double %235, double* %233, align 8
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @MAX_AD_VIEWS, align 4
  %238 = icmp sge i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %215
  %240 = load i32, i32* @MAX_AD_VIEWS, align 4
  %241 = sub nsw i32 %240, 1
  store i32 %241, i32* %9, align 4
  br label %242

242:                                              ; preds = %239, %215
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  %250 = xor i1 %249, true
  %251 = zext i1 %250 to i32
  %252 = call i64 @unlikely(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %242
  store i32 0, i32* %9, align 4
  br label %255

255:                                              ; preds = %254, %242
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %257 = load i32, i32* %9, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i64 @likely(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %388

264:                                              ; preds = %255
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = sitofp i64 %270 to double
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sitofp i32 %277 to double
  %279 = fdiv double %271, %278
  store double %279, double* %11, align 8
  %280 = load double, double* %11, align 8
  %281 = load %struct.advert*, %struct.advert** %6, align 8
  %282 = getelementptr inbounds %struct.advert, %struct.advert* %281, i32 0, i32 4
  %283 = load double, double* %282, align 8
  %284 = fcmp ole double %280, %283
  %285 = zext i1 %284 to i32
  %286 = call i64 @likely(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %345

288:                                              ; preds = %264
  %289 = load double, double* %11, align 8
  %290 = load double, double* %11, align 8
  %291 = fmul double %289, %290
  %292 = load %struct.advert*, %struct.advert** %6, align 8
  %293 = getelementptr inbounds %struct.advert, %struct.advert* %292, i32 0, i32 5
  %294 = load double, double* %293, align 8
  %295 = fcmp ole double %291, %294
  %296 = zext i1 %295 to i32
  %297 = call i64 @likely(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %345

299:                                              ; preds = %288
  %300 = load double, double* %11, align 8
  %301 = load %struct.advert*, %struct.advert** %6, align 8
  %302 = getelementptr inbounds %struct.advert, %struct.advert* %301, i32 0, i32 4
  %303 = load double, double* %302, align 8
  %304 = fsub double %303, %300
  store double %304, double* %302, align 8
  %305 = load double, double* %11, align 8
  %306 = load %struct.advert*, %struct.advert** %6, align 8
  %307 = getelementptr inbounds %struct.advert, %struct.advert* %306, i32 0, i32 6
  %308 = load double, double* %307, align 8
  %309 = fsub double %308, %305
  store double %309, double* %307, align 8
  %310 = load double, double* %11, align 8
  %311 = load double, double* %11, align 8
  %312 = fmul double %310, %311
  %313 = load %struct.advert*, %struct.advert** %6, align 8
  %314 = getelementptr inbounds %struct.advert, %struct.advert* %313, i32 0, i32 5
  %315 = load double, double* %314, align 8
  %316 = fsub double %315, %312
  store double %316, double* %314, align 8
  %317 = load double, double* %11, align 8
  %318 = load double, double* %11, align 8
  %319 = fmul double %317, %318
  %320 = load %struct.advert*, %struct.advert** %6, align 8
  %321 = getelementptr inbounds %struct.advert, %struct.advert* %320, i32 0, i32 7
  %322 = load double, double* %321, align 8
  %323 = fsub double %322, %319
  store double %323, double* %321, align 8
  %324 = load i32, i32* %10, align 4
  %325 = icmp sgt i32 %324, 0
  br i1 %325, label %326, label %344

326:                                              ; preds = %299
  %327 = load %struct.advert*, %struct.advert** %6, align 8
  %328 = getelementptr inbounds %struct.advert, %struct.advert* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @ADF_NEWVIEWS, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %344

333:                                              ; preds = %326
  %334 = load i32, i32* @total_sump0, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* @total_sump0, align 4
  %336 = load double, double* %11, align 8
  %337 = load double, double* @total_sump1, align 8
  %338 = fsub double %337, %336
  store double %338, double* @total_sump1, align 8
  %339 = load double, double* %11, align 8
  %340 = load double, double* %11, align 8
  %341 = fmul double %339, %340
  %342 = load double, double* @total_sump2, align 8
  %343 = fsub double %342, %341
  store double %343, double* @total_sump2, align 8
  br label %344

344:                                              ; preds = %333, %326, %299
  br label %387

345:                                              ; preds = %288, %264
  %346 = load %struct.advert*, %struct.advert** %6, align 8
  %347 = getelementptr inbounds %struct.advert, %struct.advert* %346, i32 0, i32 4
  %348 = load double, double* %347, align 8
  %349 = load %struct.advert*, %struct.advert** %6, align 8
  %350 = getelementptr inbounds %struct.advert, %struct.advert* %349, i32 0, i32 6
  %351 = load double, double* %350, align 8
  %352 = fsub double %351, %348
  store double %352, double* %350, align 8
  %353 = load %struct.advert*, %struct.advert** %6, align 8
  %354 = getelementptr inbounds %struct.advert, %struct.advert* %353, i32 0, i32 5
  %355 = load double, double* %354, align 8
  %356 = load %struct.advert*, %struct.advert** %6, align 8
  %357 = getelementptr inbounds %struct.advert, %struct.advert* %356, i32 0, i32 7
  %358 = load double, double* %357, align 8
  %359 = fsub double %358, %355
  store double %359, double* %357, align 8
  %360 = load i32, i32* %10, align 4
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %382

362:                                              ; preds = %345
  %363 = load %struct.advert*, %struct.advert** %6, align 8
  %364 = getelementptr inbounds %struct.advert, %struct.advert* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @ADF_NEWVIEWS, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %382

369:                                              ; preds = %362
  %370 = load i32, i32* @total_sump0, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* @total_sump0, align 4
  %372 = load %struct.advert*, %struct.advert** %6, align 8
  %373 = getelementptr inbounds %struct.advert, %struct.advert* %372, i32 0, i32 4
  %374 = load double, double* %373, align 8
  %375 = load double, double* @total_sump1, align 8
  %376 = fsub double %375, %374
  store double %376, double* @total_sump1, align 8
  %377 = load %struct.advert*, %struct.advert** %6, align 8
  %378 = getelementptr inbounds %struct.advert, %struct.advert* %377, i32 0, i32 5
  %379 = load double, double* %378, align 8
  %380 = load double, double* @total_sump2, align 8
  %381 = fsub double %380, %379
  store double %381, double* @total_sump2, align 8
  br label %382

382:                                              ; preds = %369, %362, %345
  %383 = load %struct.advert*, %struct.advert** %6, align 8
  %384 = getelementptr inbounds %struct.advert, %struct.advert* %383, i32 0, i32 4
  store double 0.000000e+00, double* %384, align 8
  %385 = load %struct.advert*, %struct.advert** %6, align 8
  %386 = getelementptr inbounds %struct.advert, %struct.advert* %385, i32 0, i32 5
  store double 0.000000e+00, double* %386, align 8
  br label %387

387:                                              ; preds = %382, %344
  br label %388

388:                                              ; preds = %387, %255
  %389 = load i32, i32* %10, align 4
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %391, label %446

391:                                              ; preds = %388
  %392 = load i32, i32* %10, align 4
  %393 = load i32, i32* @MONEY_SCALE, align 4
  %394 = mul nsw i32 %392, %393
  %395 = load %struct.advert*, %struct.advert** %6, align 8
  %396 = getelementptr inbounds %struct.advert, %struct.advert* %395, i32 0, i32 8
  %397 = load i32, i32* %396, align 8
  %398 = add nsw i32 %397, %394
  store i32 %398, i32* %396, align 8
  %399 = load i32, i32* %10, align 4
  %400 = load i32, i32* @MONEY_SCALE, align 4
  %401 = mul nsw i32 %399, %400
  %402 = load i32, i32* @tot_click_money, align 4
  %403 = add nsw i32 %402, %401
  store i32 %403, i32* @tot_click_money, align 4
  %404 = load i32, i32* %9, align 4
  %405 = icmp sgt i32 %404, 0
  br i1 %405, label %406, label %445

406:                                              ; preds = %391
  %407 = load %struct.advert*, %struct.advert** %6, align 8
  %408 = getelementptr inbounds %struct.advert, %struct.advert* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @ADF_NEWVIEWS, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %445

413:                                              ; preds = %406
  %414 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 1), align 8
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i64 0
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %416, align 4
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i64 0
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = add nsw i64 %422, 1
  store i64 %423, i64* %421, align 8
  %424 = load i32, i32* %9, align 4
  %425 = load i32, i32* @MAX_AD_VIEWS, align 4
  %426 = icmp sge i32 %424, %425
  br i1 %426, label %427, label %430

427:                                              ; preds = %413
  %428 = load i32, i32* @MAX_AD_VIEWS, align 4
  %429 = sub nsw i32 %428, 1
  store i32 %429, i32* %9, align 4
  br label %430

430:                                              ; preds = %427, %413
  %431 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 1), align 8
  %432 = load i32, i32* %9, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %435, align 4
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @AdStats, i32 0, i32 0), align 8
  %439 = load i32, i32* %9, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = add nsw i64 %443, 1
  store i64 %444, i64* %442, align 8
  br label %445

445:                                              ; preds = %430, %406, %391
  br label %446

446:                                              ; preds = %445, %388
  %447 = load %struct.advert*, %struct.advert** %6, align 8
  %448 = call i32 @compute_estimated_gain(%struct.advert* %447)
  %449 = load i32, i32* @tot_clicks, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* @tot_clicks, align 4
  store i32 1, i32* %2, align 4
  br label %452

451:                                              ; preds = %212
  store i32 0, i32* %2, align 4
  br label %452

452:                                              ; preds = %451, %446, %204, %77, %71, %59, %49, %29
  %453 = load i32, i32* %2, align 4
  ret i32 %453
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @get_user(i32) #1

declare dso_local i32 @account_user_online(%struct.TYPE_10__*) #1

declare dso_local %struct.advert* @get_ad(i32) #1

declare dso_local i32 @ad_is_ancient(i32) #1

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i64 @intree_lookup(i32, i32, i32) #1

declare dso_local i32 @load_ancient_ad(%struct.advert*) #1

declare dso_local i8* @intree_remove(i32, i8*, i32, i64*) #1

declare dso_local i64 @new_intree_node(i32) #1

declare dso_local %struct.TYPE_11__* @TNODE(i32, i64) #1

declare dso_local i32 @intree_insert(i32, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @compute_estimated_gain(%struct.advert*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
