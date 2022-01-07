; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_ListFiles.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_ListFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._finddata_t = type { i32, i8* }

@MAX_OSPATH = common dso_local global i32 0, align 4
@MAX_FOUND_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_A_SUBDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s\\*%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @Sys_ListFiles(i8* %0, i8* %1, i8* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct._finddata_t, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = load i32, i32* @MAX_OSPATH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32, i32* @MAX_FOUND_FILES, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8*, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %74

33:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @Sys_ListFilteredFiles(i8* %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %35, i8** %30, i32* %14)
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %30, i64 %38
  store i8* null, i8** %39, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %22, align 4
  br label %263

45:                                               ; preds = %33
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = call i8** @Z_Malloc(i32 %50)
  store i8** %51, i8*** %15, align 8
  store i32 0, i32* %20, align 4
  br label %52

52:                                               ; preds = %65, %45
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %30, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %15, align 8
  %62 = load i32, i32* %20, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %60, i8** %64, align 8
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %20, align 4
  br label %52

68:                                               ; preds = %52
  %69 = load i8**, i8*** %15, align 8
  %70 = load i32, i32* %20, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* null, i8** %72, align 8
  %73 = load i8**, i8*** %15, align 8
  store i8** %73, i8*** %6, align 8
  store i32 1, i32* %22, align 4
  br label %263

74:                                               ; preds = %5
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 47
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %19, align 4
  br label %93

91:                                               ; preds = %84, %78
  %92 = load i32, i32* @_A_SUBDIR, align 4
  store i32 %92, i32* %19, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @strlen(i8* %94)
  store i32 %95, i32* %21, align 4
  %96 = trunc i64 %25 to i32
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @Com_sprintf(i8* %27, i32 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %97, i8* %98)
  store i32 0, i32* %14, align 4
  %100 = call i64 @_findfirst(i8* %27, %struct._finddata_t* %17)
  store i64 %100, i64* %18, align 8
  %101 = load i64, i64* %18, align 8
  %102 = icmp eq i64 %101, -1
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32*, i32** %10, align 8
  store i32 0, i32* %104, align 4
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %22, align 4
  br label %263

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %169, %105
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %19, align 4
  %111 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %17, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @_A_SUBDIR, align 4
  %114 = and i32 %112, %113
  %115 = xor i32 %110, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %109, %106
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %168

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %17, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @_A_SUBDIR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %168

126:                                              ; preds = %120, %109
  %127 = load i8*, i8** %8, align 8
  %128 = load i8, i8* %127, align 1
  %129 = icmp ne i8 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %17, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strlen(i8* %132)
  %134 = load i32, i32* %21, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %151, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %17, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %17, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @strlen(i8* %140)
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %138, i64 %142
  %144 = load i32, i32* %21, align 4
  %145 = sext i32 %144 to i64
  %146 = sub i64 0, %145
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = load i8*, i8** %8, align 8
  %149 = call i64 @Q_stricmp(i8* %147, i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %136, %130
  br label %169

152:                                              ; preds = %136
  br label %153

153:                                              ; preds = %152, %126
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @MAX_FOUND_FILES, align 4
  %156 = sub nsw i32 %155, 1
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %173

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %17, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i8* @CopyString(i8* %161)
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %30, i64 %164
  store i8* %162, i8** %165, align 8
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %159, %120, %117
  br label %169

169:                                              ; preds = %168, %151
  %170 = load i64, i64* %18, align 8
  %171 = call i32 @_findnext(i64 %170, %struct._finddata_t* %17)
  %172 = icmp ne i32 %171, -1
  br i1 %172, label %106, label %173

173:                                              ; preds = %169, %158
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %30, i64 %175
  store i8* null, i8** %176, align 8
  %177 = load i64, i64* %18, align 8
  %178 = call i32 @_findclose(i64 %177)
  %179 = load i32, i32* %14, align 4
  %180 = load i32*, i32** %10, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %173
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %22, align 4
  br label %263

184:                                              ; preds = %173
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 8
  %189 = trunc i64 %188 to i32
  %190 = call i8** @Z_Malloc(i32 %189)
  store i8** %190, i8*** %15, align 8
  store i32 0, i32* %20, align 4
  br label %191

191:                                              ; preds = %204, %184
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %191
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %30, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = load i8**, i8*** %15, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  store i8* %199, i8** %203, align 8
  br label %204

204:                                              ; preds = %195
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  br label %191

207:                                              ; preds = %191
  %208 = load i8**, i8*** %15, align 8
  %209 = load i32, i32* %20, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  store i8* null, i8** %211, align 8
  br label %212

212:                                              ; preds = %258, %207
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %213

213:                                              ; preds = %254, %212
  %214 = load i32, i32* %20, align 4
  %215 = load i32, i32* %14, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %257

217:                                              ; preds = %213
  %218 = load i8**, i8*** %15, align 8
  %219 = load i32, i32* %20, align 4
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %218, i64 %221
  %223 = load i8*, i8** %222, align 8
  %224 = load i8**, i8*** %15, align 8
  %225 = load i32, i32* %20, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = call i64 @strgtr(i8* %223, i8* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %253

231:                                              ; preds = %217
  %232 = load i8**, i8*** %15, align 8
  %233 = load i32, i32* %20, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %232, i64 %234
  %236 = load i8*, i8** %235, align 8
  store i8* %236, i8** %23, align 8
  %237 = load i8**, i8*** %15, align 8
  %238 = load i32, i32* %20, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %237, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = load i8**, i8*** %15, align 8
  %244 = load i32, i32* %20, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %243, i64 %245
  store i8* %242, i8** %246, align 8
  %247 = load i8*, i8** %23, align 8
  %248 = load i8**, i8*** %15, align 8
  %249 = load i32, i32* %20, align 4
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %248, i64 %251
  store i8* %247, i8** %252, align 8
  store i32 1, i32* %19, align 4
  br label %253

253:                                              ; preds = %231, %217
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %20, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %20, align 4
  br label %213

257:                                              ; preds = %213
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %19, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %212, label %261

261:                                              ; preds = %258
  %262 = load i8**, i8*** %15, align 8
  store i8** %262, i8*** %6, align 8
  store i32 1, i32* %22, align 4
  br label %263

263:                                              ; preds = %261, %183, %103, %68, %44
  %264 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %264)
  %265 = load i8**, i8*** %6, align 8
  ret i8** %265
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Sys_ListFilteredFiles(i8*, i8*, i8*, i8**, i32*) #2

declare dso_local i8** @Z_Malloc(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @_findfirst(i8*, %struct._finddata_t*) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i8* @CopyString(i8*) #2

declare dso_local i32 @_findnext(i64, %struct._finddata_t*) #2

declare dso_local i32 @_findclose(i64) #2

declare dso_local i64 @strgtr(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
