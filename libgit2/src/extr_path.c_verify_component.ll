; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_verify_component.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_verify_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_PATH_REJECT_TRAVERSAL = common dso_local global i32 0, align 4
@GIT_PATH_REJECT_TRAILING_DOT = common dso_local global i32 0, align 4
@GIT_PATH_REJECT_TRAILING_SPACE = common dso_local global i32 0, align 4
@GIT_PATH_REJECT_TRAILING_COLON = common dso_local global i32 0, align 4
@GIT_PATH_REJECT_DOS_PATHS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"CON\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PRN\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"AUX\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NUL\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"COM\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"LPT\00", align 1
@GIT_PATH_REJECT_DOT_GIT_HFS = common dso_local global i32 0, align 4
@GIT_PATH_GITFILE_GITMODULES = common dso_local global i32 0, align 4
@GIT_PATH_FS_HFS = common dso_local global i32 0, align 4
@GIT_PATH_REJECT_DOT_GIT_NTFS = common dso_local global i32 0, align 4
@GIT_PATH_FS_NTFS = common dso_local global i32 0, align 4
@GIT_PATH_REJECT_DOT_GIT_LITERAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c".gitmodules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32, i32)* @verify_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_component(i32* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i64, i64* %9, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %257

15:                                               ; preds = %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @GIT_PATH_REJECT_TRAVERSAL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %257

30:                                               ; preds = %23, %20, %15
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @GIT_PATH_REJECT_TRAVERSAL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 2
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %257

51:                                               ; preds = %44, %38, %35, %30
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @GIT_PATH_REJECT_TRAILING_DOT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 46
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %257

65:                                               ; preds = %56, %51
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @GIT_PATH_REJECT_TRAILING_SPACE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = sub i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 32
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %257

79:                                               ; preds = %70, %65
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @GIT_PATH_REJECT_TRAILING_COLON, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load i8*, i8** %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = sub i64 %86, 1
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 58
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %257

93:                                               ; preds = %84, %79
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %130

98:                                               ; preds = %93
  %99 = load i8*, i8** %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @verify_dospath(i8* %99, i64 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %98
  %104 = load i8*, i8** %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @verify_dospath(i8* %104, i64 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @verify_dospath(i8* %109, i64 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = load i8*, i8** %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @verify_dospath(i8* %114, i64 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @verify_dospath(i8* %119, i64 %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i8*, i8** %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @verify_dospath(i8* %124, i64 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123, %118, %113, %108, %103, %98
  store i32 0, i32* %6, align 4
  br label %257

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %93
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %130
  %136 = load i8*, i8** %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @verify_dotgit_hfs(i8* %136, i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %257

141:                                              ; preds = %135
  %142 = load i32, i32* %10, align 4
  %143 = call i64 @S_ISLNK(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i8*, i8** %8, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load i32, i32* @GIT_PATH_GITFILE_GITMODULES, align 4
  %149 = load i32, i32* @GIT_PATH_FS_HFS, align 4
  %150 = call i64 @git_path_is_gitfile(i8* %146, i64 %147, i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  store i32 0, i32* %6, align 4
  br label %257

153:                                              ; preds = %145, %141
  br label %154

154:                                              ; preds = %153, %130
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_NTFS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %154
  %160 = load i32*, i32** %7, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load i64, i64* %9, align 8
  %163 = call i32 @verify_dotgit_ntfs(i32* %160, i8* %161, i64 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %159
  store i32 0, i32* %6, align 4
  br label %257

166:                                              ; preds = %159
  %167 = load i32, i32* %10, align 4
  %168 = call i64 @S_ISLNK(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %166
  %171 = load i8*, i8** %8, align 8
  %172 = load i64, i64* %9, align 8
  %173 = load i32, i32* @GIT_PATH_GITFILE_GITMODULES, align 4
  %174 = load i32, i32* @GIT_PATH_FS_NTFS, align 4
  %175 = call i64 @git_path_is_gitfile(i8* %171, i64 %172, i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store i32 0, i32* %6, align 4
  br label %257

178:                                              ; preds = %170, %166
  br label %179

179:                                              ; preds = %178, %154
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %182 = and i32 %180, %181
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %256

184:                                              ; preds = %179
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_NTFS, align 4
  %187 = and i32 %185, %186
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %256

189:                                              ; preds = %184
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_LITERAL, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %256

194:                                              ; preds = %189
  %195 = load i64, i64* %9, align 8
  %196 = icmp uge i64 %195, 4
  br i1 %196, label %197, label %255

197:                                              ; preds = %194
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 46
  br i1 %202, label %203, label %255

203:                                              ; preds = %197
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 103
  br i1 %208, label %215, label %209

209:                                              ; preds = %203
  %210 = load i8*, i8** %8, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 71
  br i1 %214, label %215, label %255

215:                                              ; preds = %209, %203
  %216 = load i8*, i8** %8, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 105
  br i1 %220, label %227, label %221

221:                                              ; preds = %215
  %222 = load i8*, i8** %8, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 2
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 73
  br i1 %226, label %227, label %255

227:                                              ; preds = %221, %215
  %228 = load i8*, i8** %8, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 3
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 116
  br i1 %232, label %239, label %233

233:                                              ; preds = %227
  %234 = load i8*, i8** %8, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 3
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 84
  br i1 %238, label %239, label %255

239:                                              ; preds = %233, %227
  %240 = load i64, i64* %9, align 8
  %241 = icmp eq i64 %240, 4
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store i32 0, i32* %6, align 4
  br label %257

243:                                              ; preds = %239
  %244 = load i32, i32* %10, align 4
  %245 = call i64 @S_ISLNK(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  %248 = load i8*, i8** %8, align 8
  %249 = load i64, i64* %9, align 8
  %250 = call i64 @common_prefix_icase(i8* %248, i64 %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %251 = load i64, i64* %9, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  store i32 0, i32* %6, align 4
  br label %257

254:                                              ; preds = %247, %243
  br label %255

255:                                              ; preds = %254, %233, %221, %209, %197, %194
  br label %256

256:                                              ; preds = %255, %189, %184, %179
  store i32 1, i32* %6, align 4
  br label %257

257:                                              ; preds = %256, %253, %242, %177, %165, %152, %140, %128, %92, %78, %64, %50, %29, %14
  %258 = load i32, i32* %6, align 4
  ret i32 %258
}

declare dso_local i32 @verify_dospath(i8*, i64, i8*, i32) #1

declare dso_local i32 @verify_dotgit_hfs(i8*, i64) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @git_path_is_gitfile(i8*, i64, i32, i32) #1

declare dso_local i32 @verify_dotgit_ntfs(i32*, i8*, i64) #1

declare dso_local i64 @common_prefix_icase(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
