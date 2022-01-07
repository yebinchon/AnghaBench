; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_visflow.c_BasePortalVis.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_visflow.c_BasePortalVis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32*, float, i64, i32, %struct.TYPE_6__, %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_6__ = type { float, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@portals = common dso_local global %struct.TYPE_7__* null, align 8
@portalbytes = common dso_local global i32 0, align 4
@numportals = common dso_local global i32 0, align 4
@farPlaneDist = common dso_local global float 0.000000e+00, align 4
@ON_EPSILON = common dso_local global float 0.000000e+00, align 4
@portal_mutex = common dso_local global i32 0, align 4
@c_flood = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BasePortalVis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @portals, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 %12
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %221

19:                                               ; preds = %1
  %20 = load i32, i32* @portalbytes, align 4
  %21 = call i8* @safe_malloc(i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @portalbytes, align 4
  %29 = call i32 @memset(i32* %27, i32 0, i32 %28)
  %30 = load i32, i32* @portalbytes, align 4
  %31 = call i8* @safe_malloc(i32 %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @portalbytes, align 4
  %39 = call i32 @memset(i32* %37, i32 0, i32 %38)
  %40 = load i32, i32* @portalbytes, align 4
  %41 = call i8* @safe_malloc(i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @portalbytes, align 4
  %49 = call i32 @memset(i32* %47, i32 0, i32 %48)
  store i32 0, i32* %3, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @portals, align 8
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %5, align 8
  br label %51

51:                                               ; preds = %193, %19
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @numportals, align 4
  %54 = mul nsw i32 %53, 2
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %198

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %193

61:                                               ; preds = %56
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 9
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %193

67:                                               ; preds = %61
  %68 = load float, float* @farPlaneDist, align 4
  %69 = fcmp ogt float %68, 0.000000e+00
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @VectorSubtract(i32 %73, i32 %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = call float @VectorLength(i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load float, float* %82, align 8
  %84 = fsub float %80, %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load float, float* %86, align 8
  %88 = fsub float %84, %87
  %89 = load float, float* @farPlaneDist, align 4
  %90 = fcmp ogt float %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %70
  br label %193

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %92, %67
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 7
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  store %struct.TYPE_8__* %96, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %126, %93
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %129

103:                                              ; preds = %97
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call float @DotProduct(i32 %110, i32 %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load float, float* %118, align 4
  %120 = fsub float %115, %119
  store float %120, float* %7, align 4
  %121 = load float, float* %7, align 4
  %122 = load float, float* @ON_EPSILON, align 4
  %123 = fcmp ogt float %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %103
  br label %129

125:                                              ; preds = %103
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %97

129:                                              ; preds = %124, %97
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %193

136:                                              ; preds = %129
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 7
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %170, %136
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %173

146:                                              ; preds = %140
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call float @DotProduct(i32 %153, i32 %157)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load float, float* %161, align 4
  %163 = fsub float %158, %162
  store float %163, float* %7, align 4
  %164 = load float, float* %7, align 4
  %165 = load float, float* @ON_EPSILON, align 4
  %166 = fneg float %165
  %167 = fcmp olt float %164, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %146
  br label %173

169:                                              ; preds = %146
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %4, align 4
  br label %140

173:                                              ; preds = %168, %140
  %174 = load i32, i32* %4, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %174, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %193

180:                                              ; preds = %173
  %181 = load i32, i32* %3, align 4
  %182 = and i32 %181, 7
  %183 = shl i32 1, %182
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %3, align 4
  %188 = ashr i32 %187, 3
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %183
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %180, %179, %135, %91, %66, %60
  %194 = load i32, i32* %3, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %3, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 1
  store %struct.TYPE_7__* %197, %struct.TYPE_7__** %5, align 8
  br label %51

198:                                              ; preds = %51
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @SimpleFlood(%struct.TYPE_7__* %199, i32 %202)
  %204 = call i32 @pthread_mutex_lock(i32* @portal_mutex)
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* @numportals, align 4
  %209 = mul nsw i32 %208, 2
  %210 = call i64 @CountBits(i32* %207, i32 %209)
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 4
  store i64 %210, i64* %212, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @c_flood, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* @c_flood, align 4
  %220 = call i32 @pthread_mutex_unlock(i32* @portal_mutex)
  br label %221

221:                                              ; preds = %198, %18
  ret void
}

declare dso_local i8* @safe_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorLength(i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @SimpleFlood(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @CountBits(i32*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
