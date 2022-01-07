; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_do_match_pathspec.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_do_match_pathspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.pathspec = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@DO_MATCH_EXCLUDE = common dso_local global i32 0, align 4
@PATHSPEC_FROMTOP = common dso_local global i32 0, align 4
@PATHSPEC_MAXDEPTH = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL = common dso_local global i32 0, align 4
@PATHSPEC_GLOB = common dso_local global i32 0, align 4
@PATHSPEC_ICASE = common dso_local global i32 0, align 4
@PATHSPEC_EXCLUDE = common dso_local global i32 0, align 4
@PATHSPEC_ATTR = common dso_local global i32 0, align 4
@MATCHED_RECURSIVELY = common dso_local global i32 0, align 4
@MATCHED_EXACTLY = common dso_local global i32 0, align 4
@MATCHED_FNMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.pathspec*, i8*, i32, i32, i8*, i32)* @do_match_pathspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_match_pathspec(%struct.index_state* %0, %struct.pathspec* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.index_state*, align 8
  %10 = alloca %struct.pathspec*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %9, align 8
  store %struct.pathspec* %1, %struct.pathspec** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @DO_MATCH_EXCLUDE, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %18, align 4
  %24 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %25 = load i32, i32* @PATHSPEC_FROMTOP, align 4
  %26 = load i32, i32* @PATHSPEC_MAXDEPTH, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PATHSPEC_LITERAL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PATHSPEC_GLOB, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PATHSPEC_ICASE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PATHSPEC_ATTR, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @GUARD_PATHSPEC(%struct.pathspec* %24, i32 %37)
  %39 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %40 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %73, label %43

43:                                               ; preds = %7
  %44 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %45 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %50 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PATHSPEC_MAXDEPTH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %57 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %48, %43
  %61 = load i32, i32* @MATCHED_RECURSIVELY, align 4
  store i32 %61, i32* %8, align 4
  br label %261

62:                                               ; preds = %55
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %66 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @within_depth(i8* %63, i32 %64, i32 0, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @MATCHED_EXACTLY, align 4
  store i32 %71, i32* %8, align 4
  br label %261

72:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %261

73:                                               ; preds = %7
  %74 = load i32, i32* %13, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %11, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %82 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %256, %73
  %86 = load i32, i32* %16, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %259

88:                                               ; preds = %85
  %89 = load i32, i32* %18, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %88
  %92 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %93 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %91, %88
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %108 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %107, i32 0, i32 3
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %106, %91
  br label %256

119:                                              ; preds = %106, %103
  %120 = load i8*, i8** %14, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i8*, i8** %14, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = load i32, i32* @MATCHED_EXACTLY, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %256

132:                                              ; preds = %122, %119
  %133 = load i8*, i8** %14, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %154

135:                                              ; preds = %132
  %136 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %137 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %136, i32 0, i32 3
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %135
  %148 = load i32, i32* @MATCHED_FNMATCH, align 4
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %14, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  store i8 %149, i8* %153, align 1
  br label %154

154:                                              ; preds = %147, %135, %132
  %155 = load %struct.index_state*, %struct.index_state** %9, align 8
  %156 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %157 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %156, i32 0, i32 3
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = load i32, i32* %13, align 4
  %163 = load i8*, i8** %11, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @match_pathspec_item(%struct.index_state* %155, %struct.TYPE_2__* %161, i32 %162, i8* %163, i32 %164, i32 %165)
  store i32 %166, i32* %19, align 4
  %167 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %168 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %226

171:                                              ; preds = %154
  %172 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %173 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @PATHSPEC_MAXDEPTH, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %226

178:                                              ; preds = %171
  %179 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %180 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, -1
  br i1 %182, label %183, label %226

183:                                              ; preds = %178
  %184 = load i32, i32* %19, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %226

186:                                              ; preds = %183
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* @MATCHED_FNMATCH, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %226

190:                                              ; preds = %186
  %191 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %192 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %191, i32 0, i32 3
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %20, align 4
  %199 = load i8*, i8** %11, align 8
  %200 = load i32, i32* %20, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 47
  br i1 %205, label %206, label %209

206:                                              ; preds = %190
  %207 = load i32, i32* %20, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %20, align 4
  br label %209

209:                                              ; preds = %206, %190
  %210 = load i8*, i8** %11, align 8
  %211 = load i32, i32* %20, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %20, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %218 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @within_depth(i8* %213, i32 %216, i32 0, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %209
  %223 = load i32, i32* @MATCHED_EXACTLY, align 4
  store i32 %223, i32* %19, align 4
  br label %225

224:                                              ; preds = %209
  store i32 0, i32* %19, align 4
  br label %225

225:                                              ; preds = %224, %222
  br label %226

226:                                              ; preds = %225, %186, %183, %178, %171, %154
  %227 = load i32, i32* %19, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %255

229:                                              ; preds = %226
  %230 = load i32, i32* %17, align 4
  %231 = load i32, i32* %19, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load i32, i32* %19, align 4
  store i32 %234, i32* %17, align 4
  br label %235

235:                                              ; preds = %233, %229
  %236 = load i8*, i8** %14, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %254

238:                                              ; preds = %235
  %239 = load i8*, i8** %14, align 8
  %240 = load i32, i32* %16, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = load i32, i32* %19, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %238
  %248 = load i32, i32* %19, align 4
  %249 = trunc i32 %248 to i8
  %250 = load i8*, i8** %14, align 8
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  store i8 %249, i8* %253, align 1
  br label %254

254:                                              ; preds = %247, %238, %235
  br label %255

255:                                              ; preds = %254, %226
  br label %256

256:                                              ; preds = %255, %131, %118
  %257 = load i32, i32* %16, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %16, align 4
  br label %85

259:                                              ; preds = %85
  %260 = load i32, i32* %17, align 4
  store i32 %260, i32* %8, align 4
  br label %261

261:                                              ; preds = %259, %72, %70, %60
  %262 = load i32, i32* %8, align 4
  ret i32 %262
}

declare dso_local i32 @GUARD_PATHSPEC(%struct.pathspec*, i32) #1

declare dso_local i64 @within_depth(i8*, i32, i32, i32) #1

declare dso_local i32 @match_pathspec_item(%struct.index_state*, %struct.TYPE_2__*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
