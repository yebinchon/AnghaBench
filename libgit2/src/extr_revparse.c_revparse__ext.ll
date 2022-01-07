; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revparse.c_revparse__ext.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revparse.c_revparse__ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"unimplemented\00", align 1
@GIT_ERROR = common dso_local global i32 0, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"failed to parse revision specifier - Invalid pattern '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @revparse__ext(i32** %0, i32** %1, i64* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 -1, i32* %13, align 4
  %24 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %24, i32* %15, align 4
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 1, i32* %18, align 4
  %25 = load i32**, i32*** %6, align 8
  %26 = icmp ne i32** %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load i32**, i32*** %7, align 8
  %29 = icmp ne i32** %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br label %36

36:                                               ; preds = %33, %30, %27, %5
  %37 = phi i1 [ false, %30 ], [ false, %27 ], [ false, %5 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32**, i32*** %6, align 8
  store i32* null, i32** %40, align 8
  %41 = load i32**, i32*** %7, align 8
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %214, %36
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %215

48:                                               ; preds = %42
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %203 [
    i32 94, label %54
    i32 126, label %100
    i32 58, label %122
    i32 64, label %170
  ]

54:                                               ; preds = %48
  store i32 0, i32* %18, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @ensure_base_rev_loaded(i32** %17, i32** %16, i8* %55, i64 %56, i32* %57, i32 0)
  store i32 %58, i32* %13, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %235

61:                                               ; preds = %54
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 1
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 123
  br i1 %68, label %69, label %84

69:                                               ; preds = %61
  store i32* null, i32** %19, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @extract_curly_braces_content(i32* %15, i8* %70, i64* %11)
  store i32 %71, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %235

74:                                               ; preds = %69
  %75 = load i32*, i32** %17, align 8
  %76 = call i8* @git_buf_cstr(i32* %15)
  %77 = call i32 @handle_caret_curly_syntax(i32** %19, i32* %75, i8* %76)
  store i32 %77, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %235

80:                                               ; preds = %74
  %81 = load i32*, i32** %17, align 8
  %82 = call i32 @git_object_free(i32* %81)
  %83 = load i32*, i32** %19, align 8
  store i32* %83, i32** %17, align 8
  br label %99

84:                                               ; preds = %61
  store i32* null, i32** %20, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @extract_how_many(i32* %14, i8* %85, i64* %11)
  store i32 %86, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %235

89:                                               ; preds = %84
  %90 = load i32*, i32** %17, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @handle_caret_parent_syntax(i32** %20, i32* %90, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %235

95:                                               ; preds = %89
  %96 = load i32*, i32** %17, align 8
  %97 = call i32 @git_object_free(i32* %96)
  %98 = load i32*, i32** %20, align 8
  store i32* %98, i32** %17, align 8
  br label %99

99:                                               ; preds = %95, %80
  br label %214

100:                                              ; preds = %48
  store i32* null, i32** %21, align 8
  store i32 0, i32* %18, align 4
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @extract_how_many(i32* %14, i8* %101, i64* %11)
  store i32 %102, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %235

105:                                              ; preds = %100
  %106 = load i8*, i8** %10, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @ensure_base_rev_loaded(i32** %17, i32** %16, i8* %106, i64 %107, i32* %108, i32 0)
  store i32 %109, i32* %13, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %235

112:                                              ; preds = %105
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @handle_linear_syntax(i32** %21, i32* %113, i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %235

118:                                              ; preds = %112
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 @git_object_free(i32* %119)
  %121 = load i32*, i32** %21, align 8
  store i32* %121, i32** %17, align 8
  br label %214

122:                                              ; preds = %48
  store i32* null, i32** %22, align 8
  store i32 0, i32* %18, align 4
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @extract_path(i32* %15, i8* %123, i64* %11)
  store i32 %124, i32* %13, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %235

127:                                              ; preds = %122
  %128 = load i32*, i32** %17, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = load i64, i64* %12, align 8
  %131 = call i32 @any_left_hand_identifier(i32* %128, i32* %129, i64 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = load i8*, i8** %10, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @ensure_base_rev_loaded(i32** %17, i32** %16, i8* %134, i64 %135, i32* %136, i32 1)
  store i32 %137, i32* %13, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %235

140:                                              ; preds = %133
  %141 = load i32*, i32** %17, align 8
  %142 = call i8* @git_buf_cstr(i32* %15)
  %143 = call i32 @handle_colon_syntax(i32** %22, i32* %141, i8* %142)
  store i32 %143, i32* %13, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %235

146:                                              ; preds = %140
  br label %166

147:                                              ; preds = %127
  %148 = call i8* @git_buf_cstr(i32* %15)
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 47
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load i32*, i32** %9, align 8
  %154 = call i8* @git_buf_cstr(i32* %15)
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = ptrtoint i8* %155 to i32
  %157 = call i32 @handle_grep_syntax(i32** %22, i32* %153, i32* null, i32 %156)
  store i32 %157, i32* %13, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %235

160:                                              ; preds = %152
  br label %165

161:                                              ; preds = %147
  %162 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %163 = call i32 (i32, i8*, ...) @git_error_set(i32 %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %164 = load i32, i32* @GIT_ERROR, align 4
  store i32 %164, i32* %13, align 4
  br label %235

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165, %146
  %167 = load i32*, i32** %17, align 8
  %168 = call i32 @git_object_free(i32* %167)
  %169 = load i32*, i32** %22, align 8
  store i32* %169, i32** %17, align 8
  br label %214

170:                                              ; preds = %48
  %171 = load i8*, i8** %10, align 8
  %172 = load i64, i64* %11, align 8
  %173 = add i64 %172, 1
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 123
  br i1 %177, label %178, label %202

178:                                              ; preds = %170
  store i32* null, i32** %23, align 8
  %179 = load i8*, i8** %10, align 8
  %180 = call i32 @extract_curly_braces_content(i32* %15, i8* %179, i64* %11)
  store i32 %180, i32* %13, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %235

183:                                              ; preds = %178
  %184 = load i32*, i32** %17, align 8
  %185 = call i32 @ensure_base_rev_is_not_known_yet(i32* %184)
  store i32 %185, i32* %13, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %235

188:                                              ; preds = %183
  %189 = load i8*, i8** %10, align 8
  %190 = load i64, i64* %12, align 8
  %191 = load i32*, i32** %9, align 8
  %192 = call i8* @git_buf_cstr(i32* %15)
  %193 = call i32 @handle_at_syntax(i32** %23, i32** %16, i8* %189, i64 %190, i32* %191, i8* %192)
  store i32 %193, i32* %13, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %235

196:                                              ; preds = %188
  %197 = load i32*, i32** %23, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32*, i32** %23, align 8
  store i32* %200, i32** %17, align 8
  br label %201

201:                                              ; preds = %199, %196
  br label %214

202:                                              ; preds = %170
  br label %203

203:                                              ; preds = %48, %202
  %204 = load i32*, i32** %17, align 8
  %205 = load i32*, i32** %16, align 8
  %206 = call i32 @ensure_left_hand_identifier_is_not_known_yet(i32* %204, i32* %205)
  store i32 %206, i32* %13, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %235

209:                                              ; preds = %203
  %210 = load i64, i64* %11, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %11, align 8
  %212 = load i64, i64* %12, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %12, align 8
  br label %214

214:                                              ; preds = %209, %201, %166, %118, %99
  br label %42

215:                                              ; preds = %42
  %216 = load i8*, i8** %10, align 8
  %217 = load i64, i64* %12, align 8
  %218 = load i32*, i32** %9, align 8
  %219 = call i32 @ensure_base_rev_loaded(i32** %17, i32** %16, i8* %216, i64 %217, i32* %218, i32 0)
  store i32 %219, i32* %13, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %235

222:                                              ; preds = %215
  %223 = load i32, i32* %18, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load i32*, i32** %16, align 8
  %227 = call i32 @git_reference_free(i32* %226)
  store i32* null, i32** %16, align 8
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i32*, i32** %17, align 8
  %230 = load i32**, i32*** %6, align 8
  store i32* %229, i32** %230, align 8
  %231 = load i32*, i32** %16, align 8
  %232 = load i32**, i32*** %7, align 8
  store i32* %231, i32** %232, align 8
  %233 = load i64, i64* %12, align 8
  %234 = load i64*, i64** %8, align 8
  store i64 %233, i64* %234, align 8
  store i32 0, i32* %13, align 4
  br label %235

235:                                              ; preds = %228, %221, %208, %195, %187, %182, %161, %159, %145, %139, %126, %117, %111, %104, %94, %88, %79, %73, %60
  %236 = load i32, i32* %13, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %235
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %244 = load i8*, i8** %10, align 8
  %245 = call i32 (i32, i8*, ...) @git_error_set(i32 %243, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %244)
  br label %246

246:                                              ; preds = %242, %238
  %247 = load i32*, i32** %17, align 8
  %248 = call i32 @git_object_free(i32* %247)
  %249 = load i32*, i32** %16, align 8
  %250 = call i32 @git_reference_free(i32* %249)
  br label %251

251:                                              ; preds = %246, %235
  %252 = call i32 @git_buf_dispose(i32* %15)
  %253 = load i32, i32* %13, align 4
  ret i32 %253
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ensure_base_rev_loaded(i32**, i32**, i8*, i64, i32*, i32) #1

declare dso_local i32 @extract_curly_braces_content(i32*, i8*, i64*) #1

declare dso_local i32 @handle_caret_curly_syntax(i32**, i32*, i8*) #1

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @extract_how_many(i32*, i8*, i64*) #1

declare dso_local i32 @handle_caret_parent_syntax(i32**, i32*, i32) #1

declare dso_local i32 @handle_linear_syntax(i32**, i32*, i32) #1

declare dso_local i32 @extract_path(i32*, i8*, i64*) #1

declare dso_local i32 @any_left_hand_identifier(i32*, i32*, i64) #1

declare dso_local i32 @handle_colon_syntax(i32**, i32*, i8*) #1

declare dso_local i32 @handle_grep_syntax(i32**, i32*, i32*, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, ...) #1

declare dso_local i32 @ensure_base_rev_is_not_known_yet(i32*) #1

declare dso_local i32 @handle_at_syntax(i32**, i32**, i8*, i64, i32*, i8*) #1

declare dso_local i32 @ensure_left_hand_identifier_is_not_known_yet(i32*, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
