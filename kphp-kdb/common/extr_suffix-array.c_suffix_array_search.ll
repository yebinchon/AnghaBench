; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_suffix-array.c_suffix_array_search.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_suffix-array.c_suffix_array_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i8* }

@.str = private unnamed_addr constant [88 x i8] c"suffix_array_search (%.*s), d = %d, ld = %d, f = %d, lf = %d, lcp_di = %d, lcp_if = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @suffix_array_search(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %213, %4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %214

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %34, %35
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %15, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @get_lcp(%struct.TYPE_4__* %38, i32 %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @get_lcp(%struct.TYPE_4__* %42, i32 %43, i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %33
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %12, align 4
  br label %213

65:                                               ; preds = %58, %33
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %13, align 4
  br label %212

75:                                               ; preds = %69, %65
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %14, align 4
  br label %211

86:                                               ; preds = %79, %75
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %11, align 4
  br label %210

96:                                               ; preds = %90, %86
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %97, %104
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i32, i32* %12, align 4
  br label %113

111:                                              ; preds = %96
  %112 = load i32, i32* %14, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %18, align 4
  store i32 %115, i32* %21, align 4
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %21, align 4
  br label %121

121:                                              ; preds = %119, %113
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %21, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %21, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8* %128, i8** %22, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %131, i64 %141
  store i8* %142, i8** %23, align 8
  store i32 0, i32* %20, align 4
  br label %143

143:                                              ; preds = %158, %121
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %21, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load i8*, i8** %22, align 8
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8*, i8** %23, align 8
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %150, %153
  br label %155

155:                                              ; preds = %147, %143
  %156 = phi i1 [ false, %143 ], [ %154, %147 ]
  br i1 %156, label %157, label %165

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %20, align 4
  %161 = load i8*, i8** %22, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %22, align 8
  %163 = load i8*, i8** %23, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %23, align 8
  br label %143

165:                                              ; preds = %155
  %166 = load i32, i32* %20, align 4
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %19, align 4
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %165
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %18, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load i32, i32* %8, align 4
  %178 = load i32*, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %5, align 4
  br label %251

186:                                              ; preds = %172, %165
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %18, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %202, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %205

194:                                              ; preds = %190
  %195 = load i8*, i8** %23, align 8
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = load i8*, i8** %22, align 8
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %194, %186
  %203 = load i32, i32* %15, align 4
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %19, align 4
  store i32 %204, i32* %12, align 4
  br label %208

205:                                              ; preds = %194, %190
  %206 = load i32, i32* %15, align 4
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %19, align 4
  store i32 %207, i32* %14, align 4
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209, %94
  br label %211

211:                                              ; preds = %210, %83
  br label %212

212:                                              ; preds = %211, %73
  br label %213

213:                                              ; preds = %212, %62
  br label %28

214:                                              ; preds = %28
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %14, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %214
  %219 = load i32, i32* %12, align 4
  %220 = load i32*, i32** %9, align 8
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* %11, align 4
  %222 = icmp sge i32 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %218
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  br label %232

231:                                              ; preds = %218
  br label %232

232:                                              ; preds = %231, %223
  %233 = phi i32 [ %230, %223 ], [ -1, %231 ]
  store i32 %233, i32* %5, align 4
  br label %251

234:                                              ; preds = %214
  %235 = load i32, i32* %14, align 4
  %236 = load i32*, i32** %9, align 8
  store i32 %235, i32* %236, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %234
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  br label %249

248:                                              ; preds = %234
  br label %249

249:                                              ; preds = %248, %240
  %250 = phi i32 [ %247, %240 ], [ -1, %248 ]
  store i32 %250, i32* %5, align 4
  br label %251

251:                                              ; preds = %249, %232, %176
  %252 = load i32, i32* %5, align 4
  ret i32 %252
}

declare dso_local i32 @get_lcp(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
