; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_vmap.c_lwGetPolyVMaps.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_vmap.c_lwGetPolyVMaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64*, i64*, %struct.TYPE_9__*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwGetPolyVMaps(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  br label %11

11:                                               ; preds = %85, %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %89

14:                                               ; preds = %11
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %85

19:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %81, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %84

26:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %77, %26
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %28, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %27
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %58
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %7, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %43
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %80

76:                                               ; preds = %43
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %27

80:                                               ; preds = %71, %27
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %20

84:                                               ; preds = %20
  br label %85

85:                                               ; preds = %84, %14
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %6, align 8
  br label %11

89:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %144, %89
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %147

96:                                               ; preds = %90
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %140, %96
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %98, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %97
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %118
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %7, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %108
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call %struct.TYPE_12__* @_pico_calloc(i32 %127, i32 4)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %130, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = icmp ne %struct.TYPE_12__* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %248

136:                                              ; preds = %124
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %108
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %97

143:                                              ; preds = %97
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %90

147:                                              ; preds = %90
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %6, align 8
  br label %149

149:                                              ; preds = %243, %147
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %151 = icmp ne %struct.TYPE_9__* %150, null
  br i1 %151, label %152, label %247

152:                                              ; preds = %149
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %243

157:                                              ; preds = %152
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %239, %157
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %242

164:                                              ; preds = %158
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %235, %164
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %166, %179
  br i1 %180, label %181, label %238

181:                                              ; preds = %165
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i64 %196
  store %struct.TYPE_11__* %197, %struct.TYPE_11__** %7, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  %200 = load i64*, i64** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %204, %207
  br i1 %208, label %209, label %234

209:                                              ; preds = %181
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  store %struct.TYPE_9__* %210, %struct.TYPE_9__** %219, align 8
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  store i32 %220, i32* %229, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  br label %238

234:                                              ; preds = %181
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %9, align 4
  br label %165

238:                                              ; preds = %209, %165
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %158

242:                                              ; preds = %158
  br label %243

243:                                              ; preds = %242, %152
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  store %struct.TYPE_9__* %246, %struct.TYPE_9__** %6, align 8
  br label %149

247:                                              ; preds = %149
  store i32 1, i32* %3, align 4
  br label %248

248:                                              ; preds = %247, %135
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local %struct.TYPE_12__* @_pico_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
