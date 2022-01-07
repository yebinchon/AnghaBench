; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference__normalize_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference__normalize_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@GIT_REFERENCE_FORMAT__VALIDATION_DISABLE = common dso_local global i32 0, align 4
@GIT_REFERENCE_FORMAT_REFSPEC_PATTERN = common dso_local global i32 0, align 4
@GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"the given reference name '%s' is not valid\00", align 1
@GIT_PATH_ICONV_INIT = common dso_local global i32 0, align 4
@GIT_REFERENCE_FORMAT__PRECOMPOSE_UNICODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_reference__normalize_name(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GIT_REFERENCE_FORMAT__VALIDATION_DISABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @assert(i8* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %208

37:                                               ; preds = %31, %3
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @git_buf_clear(i32* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %4, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @git_buf_sets(i32* %47, i8* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @git_buf_oom(i32* %50)
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 -1, i32 0
  store i32 %54, i32* %10, align 4
  br label %208

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %127
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %59 = and i32 %57, %58
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %14, align 1
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %14, align 1
  %63 = call i32 @ensure_segment_validity(i8* %61, i8 signext %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %208

67:                                               ; preds = %56
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %111

70:                                               ; preds = %67
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @memchr(i8* %71, i8 signext 42, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i32*, i32** %4, align 8
  %85 = call i64 @git_buf_len(i32* %84)
  store i64 %85, i64* %15, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @git_buf_cstr(i32* %87)
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @git_buf_joinpath(i32* %86, i32 %88, i8* %89)
  %91 = load i32*, i32** %4, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %92, %94
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = sext i32 %99 to i64
  %101 = add i64 %95, %100
  %102 = call i32 @git_buf_truncate(i32* %91, i64 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = call i64 @git_buf_oom(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %83
  store i32 -1, i32* %10, align 4
  br label %208

107:                                              ; preds = %83
  br label %108

108:                                              ; preds = %107, %80
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %108, %67
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  br label %208

118:                                              ; preds = %114, %111
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %133

127:                                              ; preds = %118
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i8*, i8** %7, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %7, align 8
  br label %56

133:                                              ; preds = %126
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %208

140:                                              ; preds = %136, %133
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 46
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  br label %208

150:                                              ; preds = %140
  %151 = load i8*, i8** %7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 47
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  br label %208

160:                                              ; preds = %150
  %161 = load i32, i32* %9, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %163
  br label %208

169:                                              ; preds = %163, %160
  %170 = load i32, i32* %9, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %193

172:                                              ; preds = %169
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %193, label %177

177:                                              ; preds = %172
  %178 = load i8*, i8** %5, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = call i64 (i8*, ...) @is_all_caps_and_underscore(i8* %178, i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %177
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @GIT_REFERENCE_FORMAT_REFSPEC_PATTERN, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %188, %183
  br label %208

193:                                              ; preds = %188, %177, %172, %169
  %194 = load i32, i32* %9, align 4
  %195 = icmp sgt i32 %194, 1
  br i1 %195, label %196, label %207

196:                                              ; preds = %193
  %197 = load i8*, i8** %5, align 8
  %198 = load i8*, i8** %5, align 8
  %199 = call i8* @strchr(i8* %198, i8 signext 47)
  %200 = load i8*, i8** %5, align 8
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = call i64 (i8*, ...) @is_all_caps_and_underscore(i8* %197, i64 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %196
  br label %208

207:                                              ; preds = %196, %193
  store i32 0, i32* %10, align 4
  br label %208

208:                                              ; preds = %207, %206, %192, %168, %159, %149, %139, %117, %106, %66, %46, %36
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %214 = load i8*, i8** %5, align 8
  %215 = call i32 @git_error_set(i32 %213, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %214)
  br label %216

216:                                              ; preds = %212, %208
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32*, i32** %4, align 8
  %224 = call i32 @git_buf_dispose(i32* %223)
  br label %225

225:                                              ; preds = %222, %219, %216
  %226 = load i32, i32* %10, align 4
  ret i32 %226
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @git_buf_sets(i32*, i8*) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @ensure_segment_validity(i8*, i8 signext) #1

declare dso_local i64 @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @git_buf_len(i32*) #1

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_truncate(i32*, i64) #1

declare dso_local i64 @is_all_caps_and_underscore(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
