; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_heap_push_user_ad_ext.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_heap_push_user_ad_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { double, i64 }
%struct.TYPE_8__ = type { double }
%struct.intree_node = type { i32, i32 }
%struct.advert = type { i32, i64, i64, i32, i64, double, i32, double, double, i64 }

@__exclude_ad_id = common dso_local global i32 0, align 4
@__xor_mask = common dso_local global i32 0, align 4
@__and_mask = common dso_local global i32 0, align 4
@__use_views_limit = common dso_local global i64 0, align 8
@__user = common dso_local global %struct.TYPE_7__* null, align 8
@__cat_mask = common dso_local global i64 0, align 8
@ADF_LIMIT_VIEWS = common dso_local global i32 0, align 4
@MAX_AD_VIEWS = common dso_local global i64 0, align 8
@AdStats = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@HN = common dso_local global i64 0, align 8
@__gsort_limit = common dso_local global i64 0, align 8
@H = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_push_user_ad_ext(%struct.intree_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.advert*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.intree_node* %0, %struct.intree_node** %3, align 8
  %14 = load %struct.intree_node*, %struct.intree_node** %3, align 8
  %15 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @__exclude_ad_id, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %253

21:                                               ; preds = %1
  %22 = load %struct.intree_node*, %struct.intree_node** %3, align 8
  %23 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.advert* @get_ad(i32 %25)
  store %struct.advert* %26, %struct.advert** %6, align 8
  %27 = load %struct.advert*, %struct.advert** %6, align 8
  %28 = getelementptr inbounds %struct.advert, %struct.advert* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @__xor_mask, align 4
  %31 = xor i32 %29, %30
  %32 = load i32, i32* @__and_mask, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %253

36:                                               ; preds = %21
  %37 = load i64, i64* @__use_views_limit, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.advert*, %struct.advert** %6, align 8
  %41 = getelementptr inbounds %struct.advert, %struct.advert* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.advert*, %struct.advert** %6, align 8
  %44 = getelementptr inbounds %struct.advert, %struct.advert* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %253

48:                                               ; preds = %39, %36
  %49 = load %struct.advert*, %struct.advert** %6, align 8
  %50 = getelementptr inbounds %struct.advert, %struct.advert* %49, i32 0, i32 9
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__user, align 8
  %55 = load %struct.advert*, %struct.advert** %6, align 8
  %56 = getelementptr inbounds %struct.advert, %struct.advert* %55, i32 0, i32 9
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @is_user_in_group(%struct.TYPE_7__* %54, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %253

61:                                               ; preds = %53, %48
  %62 = load %struct.advert*, %struct.advert** %6, align 8
  %63 = getelementptr inbounds %struct.advert, %struct.advert* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 63
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %71

67:                                               ; preds = %61
  %68 = load %struct.advert*, %struct.advert** %6, align 8
  %69 = getelementptr inbounds %struct.advert, %struct.advert* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  br label %71

71:                                               ; preds = %67, %66
  %72 = phi i32 [ 0, %66 ], [ %70, %67 ]
  %73 = zext i32 %72 to i64
  %74 = shl i64 1, %73
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* @__cat_mask, align 8
  %76 = load i64, i64* %7, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %253

80:                                               ; preds = %71
  %81 = load %struct.advert*, %struct.advert** %6, align 8
  %82 = getelementptr inbounds %struct.advert, %struct.advert* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp sle i64 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load %struct.advert*, %struct.advert** %6, align 8
  %87 = getelementptr inbounds %struct.advert, %struct.advert* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ADF_LIMIT_VIEWS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 100
  br i1 %94, label %95, label %102

95:                                               ; preds = %92, %85
  %96 = load %struct.advert*, %struct.advert** %6, align 8
  %97 = getelementptr inbounds %struct.advert, %struct.advert* %96, i32 0, i32 5
  %98 = load double, double* %97, align 8
  %99 = load %struct.advert*, %struct.advert** %6, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @heap_insert(double %98, %struct.advert* %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %92
  store i32 1, i32* %2, align 4
  br label %253

103:                                              ; preds = %80
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @MAX_AD_VIEWS, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i64, i64* @MAX_AD_VIEWS, align 8
  %112 = sub nsw i64 %111, 1
  store i64 %112, i64* %8, align 8
  br label %113

113:                                              ; preds = %110, %103
  store double 0.000000e+00, double* %9, align 8
  %114 = load %struct.advert*, %struct.advert** %6, align 8
  %115 = getelementptr inbounds %struct.advert, %struct.advert* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__user, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.advert*, %struct.advert** %6, align 8
  %123 = getelementptr inbounds %struct.advert, %struct.advert* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @targ_weights_at(i32 %121, i32 %124)
  %126 = sitofp i64 %125 to double
  %127 = load double, double* %9, align 8
  %128 = fadd double %127, %126
  store double %128, double* %9, align 8
  br label %129

129:                                              ; preds = %118, %113
  %130 = load %struct.advert*, %struct.advert** %6, align 8
  %131 = getelementptr inbounds %struct.advert, %struct.advert* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** @__user, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.advert*, %struct.advert** %6, align 8
  %139 = getelementptr inbounds %struct.advert, %struct.advert* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @targ_weights_at(i32 %137, i32 %140)
  %142 = sitofp i64 %141 to double
  %143 = load double, double* %9, align 8
  %144 = fadd double %143, %142
  store double %144, double* %9, align 8
  br label %145

145:                                              ; preds = %134, %129
  %146 = load double, double* %9, align 8
  %147 = fcmp une double %146, 0.000000e+00
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = call double @log(double 2.000000e+00) #3
  %150 = load double, double* %9, align 8
  %151 = fmul double %150, %149
  store double %151, double* %9, align 8
  %152 = load double, double* %9, align 8
  %153 = fmul double 0x3FA5555555555555, %152
  %154 = fadd double %153, 0x3FC5555555555555
  %155 = load double, double* %9, align 8
  %156 = fmul double %154, %155
  %157 = fadd double %156, 5.000000e-01
  %158 = load double, double* %9, align 8
  %159 = fmul double %157, %158
  %160 = fadd double %159, 1.000000e+00
  %161 = load double, double* %9, align 8
  %162 = fmul double %160, %161
  %163 = fadd double %162, 1.000000e+00
  store double %163, double* %9, align 8
  br label %165

164:                                              ; preds = %145
  store double 1.000000e+00, double* %9, align 8
  br label %165

165:                                              ; preds = %164, %148
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @AdStats, i32 0, i32 0), align 8
  %167 = load i64, i64* %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load double, double* %169, align 8
  %171 = fcmp une double %170, 0.000000e+00
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i64 @unlikely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %165
  store i64 0, i64* %8, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @AdStats, i32 0, i32 0), align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load double, double* %179, align 8
  %181 = fcmp une double %180, 0.000000e+00
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = call i64 @unlikely(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %176
  %187 = load %struct.advert*, %struct.advert** %6, align 8
  %188 = getelementptr inbounds %struct.advert, %struct.advert* %187, i32 0, i32 5
  %189 = load double, double* %188, align 8
  %190 = load double, double* %9, align 8
  %191 = fmul double %189, %190
  %192 = load %struct.advert*, %struct.advert** %6, align 8
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @heap_insert(double %191, %struct.advert* %192, i32 %193)
  store i32 1, i32* %2, align 4
  br label %253

195:                                              ; preds = %176
  br label %196

196:                                              ; preds = %195, %165
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @AdStats, i32 0, i32 0), align 8
  %198 = load i64, i64* %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = sitofp i64 %201 to double
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @AdStats, i32 0, i32 0), align 8
  %204 = load i64, i64* %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load double, double* %206, align 8
  %208 = fdiv double %202, %207
  store double %208, double* %10, align 8
  %209 = load %struct.advert*, %struct.advert** %6, align 8
  %210 = getelementptr inbounds %struct.advert, %struct.advert* %209, i32 0, i32 7
  %211 = load double, double* %210, align 8
  %212 = load double, double* %10, align 8
  %213 = fmul double %211, %212
  store double %213, double* %11, align 8
  %214 = load %struct.advert*, %struct.advert** %6, align 8
  %215 = getelementptr inbounds %struct.advert, %struct.advert* %214, i32 0, i32 8
  %216 = load double, double* %215, align 8
  %217 = load double, double* %10, align 8
  %218 = fmul double %216, %217
  store double %218, double* %12, align 8
  %219 = load i64, i64* @HN, align 8
  %220 = load i64, i64* @__gsort_limit, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %235

222:                                              ; preds = %196
  %223 = load double, double* %11, align 8
  %224 = load double, double* %12, align 8
  %225 = fmul double 2.000000e+00, %224
  %226 = fadd double %223, %225
  %227 = load double, double* %9, align 8
  %228 = fmul double %226, %227
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** @H, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i64 1
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load double, double* %231, align 8
  %233 = fcmp ole double %228, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %222
  store i32 1, i32* %2, align 4
  br label %253

235:                                              ; preds = %222, %196
  %236 = load double, double* %11, align 8
  %237 = load double, double* %12, align 8
  %238 = call double (...) @drand48()
  %239 = call double (...) @drand48()
  %240 = fadd double %238, %239
  %241 = call double (...) @drand48()
  %242 = fsub double %240, %241
  %243 = call double (...) @drand48()
  %244 = fsub double %242, %243
  %245 = fmul double %237, %244
  %246 = fadd double %236, %245
  %247 = load double, double* %9, align 8
  %248 = fmul double %246, %247
  store double %248, double* %13, align 8
  %249 = load double, double* %13, align 8
  %250 = load %struct.advert*, %struct.advert** %6, align 8
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @heap_insert(double %249, %struct.advert* %250, i32 %251)
  store i32 1, i32* %2, align 4
  br label %253

253:                                              ; preds = %235, %234, %186, %102, %79, %60, %47, %35, %20
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local %struct.advert* @get_ad(i32) #1

declare dso_local i64 @is_user_in_group(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @heap_insert(double, %struct.advert*, i32) #1

declare dso_local i64 @targ_weights_at(i32, i32) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local double @drand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
