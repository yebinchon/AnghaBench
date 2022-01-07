; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_tr_parse_pattern.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_tr_parse_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.tr_pattern = type { i64, i32, i8, %struct.tr_pattern*, %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i8*, i32 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@TR_UNINITIALIZED = common dso_local global i64 0, align 8
@TR_RANGE = common dso_local global i64 0, align 8
@UINT16_MAX = common dso_local global i32 0, align 4
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"tr pattern too long (max 65536)\00", align 1
@TR_IN_ORDER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tr_pattern* (%struct.TYPE_9__*, %struct.tr_pattern*, i32, i8*)* @tr_parse_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tr_pattern* @tr_parse_pattern(%struct.TYPE_9__* %0, %struct.tr_pattern* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.tr_pattern*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.tr_pattern*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tr_pattern*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tr_pattern*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.tr_pattern* %1, %struct.tr_pattern** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @RSTRING_PTR(i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @RSTRING_LEN(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i8*, i8** @FALSE, align 8
  store i8* %23, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sge i32 %27, 2
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 94
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i8*, i8** @TRUE, align 8
  store i8* %36, i8** %12, align 8
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %35, %29, %26, %4
  br label %40

40:                                               ; preds = %254, %39
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %255

44:                                               ; preds = %40
  %45 = load %struct.tr_pattern*, %struct.tr_pattern** %7, align 8
  %46 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TR_UNINITIALIZED, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load %struct.tr_pattern*, %struct.tr_pattern** %7, align 8
  br label %61

57:                                               ; preds = %44
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = call i64 @mrb_malloc_simple(%struct.TYPE_9__* %58, i32 48)
  %60 = inttoptr i64 %59 to %struct.tr_pattern*
  br label %61

61:                                               ; preds = %57, %55
  %62 = phi %struct.tr_pattern* [ %56, %55 ], [ %60, %57 ]
  store %struct.tr_pattern* %62, %struct.tr_pattern** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 2
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %157

67:                                               ; preds = %61
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 92
  br i1 %74, label %75, label %157

75:                                               ; preds = %67
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 45
  br i1 %83, label %84, label %157

84:                                               ; preds = %75
  %85 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %86 = icmp eq %struct.tr_pattern* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load %struct.tr_pattern*, %struct.tr_pattern** %7, align 8
  %89 = icmp ne %struct.tr_pattern* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %207, %90
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = load %struct.tr_pattern*, %struct.tr_pattern** %7, align 8
  %94 = call i32 @tr_free_pattern(%struct.TYPE_9__* %92, %struct.tr_pattern* %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @mrb_obj_value(i32 %98)
  %100 = call i32 @mrb_exc_raise(%struct.TYPE_9__* %95, i32 %99)
  store %struct.tr_pattern* null, %struct.tr_pattern** %5, align 8
  br label %257

101:                                              ; preds = %87, %84
  %102 = load i64, i64* @TR_RANGE, align 8
  %103 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %104 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %107 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = icmp ne i8* %108, null
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %113 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = sub nsw i32 %120, %126
  %128 = add nsw i32 %127, 1
  %129 = trunc i32 %128 to i8
  %130 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %131 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %130, i32 0, i32 2
  store i8 %129, i8* %131, align 4
  %132 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %133 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %132, i32 0, i32 3
  store %struct.tr_pattern* null, %struct.tr_pattern** %133, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %140 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  store i8 %138, i8* %143, align 1
  %144 = load i8*, i8** %10, align 8
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %151 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8 %149, i8* %154, align 1
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 3
  store i32 %156, i32* %14, align 4
  br label %231

157:                                              ; preds = %75, %67, %61
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  store i32 %158, i32* %16, align 4
  br label %160

160:                                              ; preds = %187, %157
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %190

164:                                              ; preds = %160
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 2
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %187

169:                                              ; preds = %164
  %170 = load i8*, i8** %10, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 92
  br i1 %176, label %177, label %187

177:                                              ; preds = %169
  %178 = load i8*, i8** %10, align 8
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 45
  br i1 %185, label %186, label %187

186:                                              ; preds = %177
  br label %190

187:                                              ; preds = %177, %169, %164
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %160

190:                                              ; preds = %186, %160
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %16, align 4
  %193 = sub nsw i32 %191, %192
  store i32 %193, i32* %17, align 4
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* @UINT16_MAX, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %199 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %200 = call i32 @mrb_raise(%struct.TYPE_9__* %198, i32 %199, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %201

201:                                              ; preds = %197, %190
  %202 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %203 = icmp eq %struct.tr_pattern* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load %struct.tr_pattern*, %struct.tr_pattern** %7, align 8
  %206 = icmp ne %struct.tr_pattern* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %91

208:                                              ; preds = %204, %201
  %209 = load i64, i64* @TR_IN_ORDER, align 8
  %210 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %211 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load i8*, i8** %12, align 8
  %213 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %214 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %213, i32 0, i32 5
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** %15, align 8
  %216 = icmp ne i8* %215, null
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %220 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* %17, align 4
  %222 = trunc i32 %221 to i8
  %223 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %224 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %223, i32 0, i32 2
  store i8 %222, i8* %224, align 4
  %225 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %226 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %225, i32 0, i32 3
  store %struct.tr_pattern* null, %struct.tr_pattern** %226, align 8
  %227 = load i32, i32* %16, align 4
  %228 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %229 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 1
  store i32 %227, i32* %230, align 8
  br label %231

231:                                              ; preds = %208, %101
  %232 = load %struct.tr_pattern*, %struct.tr_pattern** %7, align 8
  %233 = icmp eq %struct.tr_pattern* %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load i8*, i8** %15, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %234, %231
  %238 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  store %struct.tr_pattern* %238, %struct.tr_pattern** %7, align 8
  br label %254

239:                                              ; preds = %234
  %240 = load %struct.tr_pattern*, %struct.tr_pattern** %7, align 8
  store %struct.tr_pattern* %240, %struct.tr_pattern** %18, align 8
  br label %241

241:                                              ; preds = %246, %239
  %242 = load %struct.tr_pattern*, %struct.tr_pattern** %18, align 8
  %243 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %242, i32 0, i32 3
  %244 = load %struct.tr_pattern*, %struct.tr_pattern** %243, align 8
  %245 = icmp ne %struct.tr_pattern* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load %struct.tr_pattern*, %struct.tr_pattern** %18, align 8
  %248 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %247, i32 0, i32 3
  %249 = load %struct.tr_pattern*, %struct.tr_pattern** %248, align 8
  store %struct.tr_pattern* %249, %struct.tr_pattern** %18, align 8
  br label %241

250:                                              ; preds = %241
  %251 = load %struct.tr_pattern*, %struct.tr_pattern** %13, align 8
  %252 = load %struct.tr_pattern*, %struct.tr_pattern** %18, align 8
  %253 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %252, i32 0, i32 3
  store %struct.tr_pattern* %251, %struct.tr_pattern** %253, align 8
  br label %254

254:                                              ; preds = %250, %237
  br label %40

255:                                              ; preds = %40
  %256 = load %struct.tr_pattern*, %struct.tr_pattern** %7, align 8
  store %struct.tr_pattern* %256, %struct.tr_pattern** %5, align 8
  br label %257

257:                                              ; preds = %255, %91
  %258 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  ret %struct.tr_pattern* %258
}

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i64 @mrb_malloc_simple(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @tr_free_pattern(%struct.TYPE_9__*, %struct.tr_pattern*) #1

declare dso_local i32 @mrb_exc_raise(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @mrb_raise(%struct.TYPE_9__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
