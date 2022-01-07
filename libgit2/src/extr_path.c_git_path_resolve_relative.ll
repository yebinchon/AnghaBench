; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_resolve_relative.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_resolve_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot strip root component off url\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_path_resolve_relative(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = call i32 @GIT_ERROR_CHECK_ALLOC_BUF(%struct.TYPE_4__* %11)
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @git_path_root(i8* %28)
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %83

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %52, %35
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @git__isalpha(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  br label %39

55:                                               ; preds = %49
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 58
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 47
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 47
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = ptrtoint i8* %75 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %73, %67, %61, %55
  br label %83

83:                                               ; preds = %82, %32
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %8, align 8
  store i8* %88, i8** %7, align 8
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %250, %83
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %251

93:                                               ; preds = %89
  %94 = load i8*, i8** %8, align 8
  store i8* %94, i8** %9, align 8
  br label %95

95:                                               ; preds = %108, %93
  %96 = load i8*, i8** %9, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 47
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ]
  br i1 %106, label %107, label %111

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  br label %95

111:                                              ; preds = %105
  %112 = load i8*, i8** %9, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp eq i64 %117, 1
  br i1 %118, label %119, label %126

119:                                              ; preds = %111
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 46
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %238

126:                                              ; preds = %119, %111
  %127 = load i64, i64* %10, align 8
  %128 = icmp eq i64 %127, 2
  br i1 %128, label %129, label %211

129:                                              ; preds = %126
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 46
  br i1 %134, label %135, label %211

135:                                              ; preds = %129
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 46
  br i1 %140, label %141, label %211

141:                                              ; preds = %135
  %142 = load i8*, i8** %7, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = icmp eq i8* %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i64, i64* %5, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %150 = call i32 @git_error_set(i32 %149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %262

151:                                              ; preds = %145, %141
  %152 = load i8*, i8** %7, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = icmp eq i8* %152, %153
  br i1 %154, label %155, label %177

155:                                              ; preds = %151
  %156 = load i8*, i8** %9, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 47
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i64, i64* %10, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %10, align 8
  br label %163

163:                                              ; preds = %160, %155
  %164 = load i8*, i8** %7, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = icmp ne i8* %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i8*, i8** %7, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @memmove(i8* %168, i8* %169, i64 %170)
  br label %172

172:                                              ; preds = %167, %163
  %173 = load i64, i64* %10, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 %173
  store i8* %175, i8** %7, align 8
  %176 = load i8*, i8** %7, align 8
  store i8* %176, i8** %6, align 8
  br label %210

177:                                              ; preds = %151
  br label %178

178:                                              ; preds = %190, %177
  %179 = load i8*, i8** %7, align 8
  %180 = load i8*, i8** %6, align 8
  %181 = icmp ugt i8* %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load i8*, i8** %7, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 -1
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 47
  br label %188

188:                                              ; preds = %182, %178
  %189 = phi i1 [ false, %178 ], [ %187, %182 ]
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = load i8*, i8** %7, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 -1
  store i8* %192, i8** %7, align 8
  br label %178

193:                                              ; preds = %188
  br label %194

194:                                              ; preds = %206, %193
  %195 = load i8*, i8** %7, align 8
  %196 = load i8*, i8** %6, align 8
  %197 = icmp ugt i8* %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load i8*, i8** %7, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 -1
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 47
  br label %204

204:                                              ; preds = %198, %194
  %205 = phi i1 [ false, %194 ], [ %203, %198 ]
  br i1 %205, label %206, label %209

206:                                              ; preds = %204
  %207 = load i8*, i8** %7, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 -1
  store i8* %208, i8** %7, align 8
  br label %194

209:                                              ; preds = %204
  br label %210

210:                                              ; preds = %209, %172
  br label %237

211:                                              ; preds = %135, %129, %126
  %212 = load i8*, i8** %9, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 47
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = load i8*, i8** %8, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp ne i32 %219, 47
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i64, i64* %10, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %10, align 8
  br label %224

224:                                              ; preds = %221, %216, %211
  %225 = load i8*, i8** %7, align 8
  %226 = load i8*, i8** %8, align 8
  %227 = icmp ne i8* %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %224
  %229 = load i8*, i8** %7, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = load i64, i64* %10, align 8
  %232 = call i32 @memmove(i8* %229, i8* %230, i64 %231)
  br label %233

233:                                              ; preds = %228, %224
  %234 = load i64, i64* %10, align 8
  %235 = load i8*, i8** %7, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 %234
  store i8* %236, i8** %7, align 8
  br label %237

237:                                              ; preds = %233, %210
  br label %238

238:                                              ; preds = %237, %125
  %239 = load i64, i64* %10, align 8
  %240 = load i8*, i8** %8, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 %239
  store i8* %241, i8** %8, align 8
  br label %242

242:                                              ; preds = %247, %238
  %243 = load i8*, i8** %8, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 47
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i8*, i8** %8, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %8, align 8
  br label %242

250:                                              ; preds = %242
  br label %89

251:                                              ; preds = %89
  %252 = load i8*, i8** %7, align 8
  store i8 0, i8* %252, align 1
  %253 = load i8*, i8** %7, align 8
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = ptrtoint i8* %253 to i64
  %258 = ptrtoint i8* %256 to i64
  %259 = sub i64 %257, %258
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  store i32 0, i32* %3, align 4
  br label %262

262:                                              ; preds = %251, %148
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_BUF(%struct.TYPE_4__*) #1

declare dso_local i32 @git_path_root(i8*) #1

declare dso_local i64 @git__isalpha(i8 signext) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
