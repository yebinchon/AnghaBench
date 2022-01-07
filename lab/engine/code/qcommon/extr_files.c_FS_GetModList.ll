; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_GetModList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_GetModList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_12__ = type { i8* }

@MAX_INSTALL_PATH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@fs_basepath = common dso_local global %struct.TYPE_11__* null, align 8
@fs_homepath = common dso_local global %struct.TYPE_9__* null, align 8
@fs_steampath = common dso_local global %struct.TYPE_8__* null, align 8
@fs_gogpath = common dso_local global %struct.TYPE_10__* null, align 8
@fs_temporarypath = common dso_local global %struct.TYPE_7__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@com_basegame = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".pk3\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".pk3dir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_GetModList(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8**, align 8
  %25 = alloca i64, align 8
  %26 = alloca [5 x i8*], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8** null, i8*** %16, align 8
  store i8** null, i8*** %17, align 8
  store i8** null, i8*** %18, align 8
  %27 = load i32, i32* @MAX_INSTALL_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %21, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %22, align 8
  store i8** null, i8*** %24, align 8
  %31 = load i64, i64* @qfalse, align 8
  store i64 %31, i64* %25, align 8
  %32 = getelementptr inbounds [5 x i8*], [5 x i8*]* %26, i64 0, i64 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %32, align 8
  %36 = getelementptr inbounds i8*, i8** %32, i64 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_homepath, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %36, align 8
  %40 = getelementptr inbounds i8*, i8** %36, i64 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs_steampath, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %40, align 8
  %44 = getelementptr inbounds i8*, i8** %40, i64 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_gogpath, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %44, align 8
  %48 = getelementptr inbounds i8*, i8** %44, i64 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fs_temporarypath, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %48, align 8
  %52 = load i8*, i8** %3, align 8
  store i8 0, i8* %52, align 1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %68, %2
  %54 = load i32, i32* %6, align 4
  %55 = getelementptr inbounds [5 x i8*], [5 x i8*]* %26, i64 0, i64 0
  %56 = call i32 @ARRAY_LEN(i8** %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [5 x i8*], [5 x i8*]* %26, i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* @qtrue, align 8
  %64 = call i8** @Sys_ListFiles(i8* %62, i8* null, i32* null, i32* %23, i64 %63)
  store i8** %64, i8*** %24, align 8
  %65 = load i8**, i8*** %16, align 8
  %66 = load i8**, i8*** %24, align 8
  %67 = call i8** @Sys_ConcatenateFileLists(i8** %65, i8** %66)
  store i8** %67, i8*** %16, align 8
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %53

71:                                               ; preds = %53
  %72 = load i8**, i8*** %16, align 8
  %73 = call i32 @Sys_CountFileList(i8** %72)
  store i32 %73, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %230, %71
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %233

78:                                               ; preds = %74
  %79 = load i8**, i8*** %16, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %19, align 8
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %78
  %87 = load i64, i64* @qfalse, align 8
  store i64 %87, i64* %25, align 8
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %104, %86
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load i8**, i8*** %16, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %19, align 8
  %99 = call i64 @Q_stricmp(i8* %97, i8* %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i64, i64* @qtrue, align 8
  store i64 %102, i64* %25, align 8
  br label %107

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %88

107:                                              ; preds = %101, %88
  br label %108

108:                                              ; preds = %107, %78
  %109 = load i64, i64* %25, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %19, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_basegame, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @Q_stricmp(i8* %112, i8* %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %111
  %119 = load i8*, i8** %19, align 8
  %120 = call i64 @Q_stricmpn(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %111, %108
  br label %230

123:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %179, %123
  %125 = load i32, i32* %7, align 4
  %126 = getelementptr inbounds [5 x i8*], [5 x i8*]* %26, i64 0, i64 0
  %127 = call i32 @ARRAY_LEN(i8** %126)
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %182

129:                                              ; preds = %124
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [5 x i8*], [5 x i8*]* %26, i64 0, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** %19, align 8
  %135 = call i8* @FS_BuildOSPath(i8* %133, i8* %134, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %135, i8** %20, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %136 = load i8*, i8** %20, align 8
  %137 = load i64, i64* @qfalse, align 8
  %138 = call i8** @Sys_ListFiles(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %11, i64 %137)
  store i8** %138, i8*** %17, align 8
  %139 = load i8*, i8** %20, align 8
  %140 = load i64, i64* @qfalse, align 8
  %141 = call i8** @Sys_ListFiles(i8* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* %12, i64 %140)
  store i8** %141, i8*** %18, align 8
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %164, %129
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %142
  %147 = load i8**, i8*** %18, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = load i8**, i8*** %18, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @strlen(i8* %156)
  %158 = call i64 @FS_IsExt(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %146
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %163

163:                                              ; preds = %160, %146
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %142

167:                                              ; preds = %142
  %168 = load i8**, i8*** %17, align 8
  %169 = call i32 @Sys_FreeFileList(i8** %168)
  %170 = load i8**, i8*** %18, align 8
  %171 = call i32 @Sys_FreeFileList(i8** %170)
  %172 = load i32, i32* %11, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %13, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174, %167
  br label %182

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %124

182:                                              ; preds = %177, %124
  %183 = load i32, i32* %11, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %13, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %229

188:                                              ; preds = %185, %182
  %189 = load i8*, i8** %19, align 8
  %190 = call i32 @strlen(i8* %189)
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  %192 = load i8*, i8** %19, align 8
  %193 = trunc i64 %28 to i32
  %194 = call i32 @FS_GetModDescription(i8* %192, i8* %30, i32 %193)
  %195 = call i32 @strlen(i8* %30)
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %197, %198
  %200 = add nsw i32 %199, 1
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %200, %201
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* %4, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %227

206:                                              ; preds = %188
  %207 = load i8*, i8** %3, align 8
  %208 = load i8*, i8** %19, align 8
  %209 = call i32 @strcpy(i8* %207, i8* %208)
  %210 = load i32, i32* %10, align 4
  %211 = load i8*, i8** %3, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %3, align 8
  %214 = load i8*, i8** %3, align 8
  %215 = call i32 @strcpy(i8* %214, i8* %30)
  %216 = load i32, i32* %15, align 4
  %217 = load i8*, i8** %3, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %3, align 8
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %220, %221
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %5, align 4
  br label %228

227:                                              ; preds = %188
  br label %233

228:                                              ; preds = %206
  br label %229

229:                                              ; preds = %228, %185
  br label %230

230:                                              ; preds = %229, %122
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %6, align 4
  br label %74

233:                                              ; preds = %227, %74
  %234 = load i8**, i8*** %16, align 8
  %235 = call i32 @Sys_FreeFileList(i8** %234)
  %236 = load i32, i32* %5, align 4
  %237 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %237)
  ret i32 %236
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_LEN(i8**) #2

declare dso_local i8** @Sys_ListFiles(i8*, i8*, i32*, i32*, i64) #2

declare dso_local i8** @Sys_ConcatenateFileLists(i8**, i8**) #2

declare dso_local i32 @Sys_CountFileList(i8**) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i64 @Q_stricmpn(i8*, i8*, i32) #2

declare dso_local i8* @FS_BuildOSPath(i8*, i8*, i8*) #2

declare dso_local i64 @FS_IsExt(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Sys_FreeFileList(i8**) #2

declare dso_local i32 @FS_GetModDescription(i8*, i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
