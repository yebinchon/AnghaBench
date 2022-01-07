; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_vfs.c_vfsLoadFile.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_vfs.c_vfsLoadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@g_numDirs = common dso_local global i32 0, align 4
@g_strDirs = common dso_local global i8** null, align 8
@R_OK = common dso_local global i32 0, align 4
@g_pakFiles = common dso_local global %struct.TYPE_7__* null, align 8
@UNZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfsLoadFile(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @NAME_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @NAME_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %67

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = call i32* @fopen(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %32, i32** %16, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

36:                                               ; preds = %30
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* @SEEK_END, align 4
  %39 = call i32 @fseek(i32* %37, i32 0, i32 %38)
  %40 = load i32*, i32** %16, align 8
  %41 = call i64 @ftell(i32* %40)
  store i64 %41, i64* %15, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @rewind(i32* %42)
  %44 = load i64, i64* %15, align 8
  %45 = add nsw i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i8* @safe_malloc(i32 %46)
  %48 = load i8**, i8*** %6, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

53:                                               ; preds = %36
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @fread(i8* %55, i32 1, i64 %56, i32* %57)
  %59 = load i32*, i32** %16, align 8
  %60 = call i32 @fclose(i32* %59)
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i64, i64* %15, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

67:                                               ; preds = %3
  %68 = load i8**, i8*** %6, align 8
  store i8* null, i8** %68, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @strcpy(i8* %27, i8* %69)
  %71 = call i32 @vfsFixDOSName(i8* %27)
  %72 = call i8* @g_ascii_strdown(i8* %27, i32 -1)
  store i8* %72, i8** %13, align 8
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %133, %67
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @g_numDirs, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %136

77:                                               ; preds = %73
  %78 = load i8**, i8*** @g_strDirs, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strcpy(i8* %24, i8* %82)
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @strcat(i8* %24, i8* %84)
  %86 = load i32, i32* @R_OK, align 4
  %87 = call i64 @access(i8* %24, i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %132

89:                                               ; preds = %77
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %129

93:                                               ; preds = %89
  %94 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %94, i32** %19, align 8
  %95 = load i32*, i32** %19, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

98:                                               ; preds = %93
  %99 = load i32*, i32** %19, align 8
  %100 = load i32, i32* @SEEK_END, align 4
  %101 = call i32 @fseek(i32* %99, i32 0, i32 %100)
  %102 = load i32*, i32** %19, align 8
  %103 = call i64 @ftell(i32* %102)
  store i64 %103, i64* %18, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = call i32 @rewind(i32* %104)
  %106 = load i64, i64* %18, align 8
  %107 = add nsw i64 %106, 1
  %108 = trunc i64 %107 to i32
  %109 = call i8* @safe_malloc(i32 %108)
  %110 = load i8**, i8*** %6, align 8
  store i8* %109, i8** %110, align 8
  %111 = load i8**, i8*** %6, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %98
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

115:                                              ; preds = %98
  %116 = load i8**, i8*** %6, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = load i64, i64* %18, align 8
  %119 = load i32*, i32** %19, align 8
  %120 = call i32 @fread(i8* %117, i32 1, i64 %118, i32* %119)
  %121 = load i32*, i32** %19, align 8
  %122 = call i32 @fclose(i32* %121)
  %123 = load i8**, i8*** %6, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load i64, i64* %18, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load i64, i64* %18, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

129:                                              ; preds = %89
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %129, %77
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %73

136:                                              ; preds = %73
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pakFiles, align 8
  store %struct.TYPE_7__* %137, %struct.TYPE_7__** %14, align 8
  br label %138

138:                                              ; preds = %211, %136
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %140 = icmp ne %struct.TYPE_7__* %139, null
  br i1 %140, label %141, label %214

141:                                              ; preds = %138
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %145, %struct.TYPE_6__** %20, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i8*, i8** %13, align 8
  %150 = call i64 @strcmp(i32 %148, i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  br label %211

153:                                              ; preds = %141
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %208

157:                                              ; preds = %153
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = call i32 @memcpy(i32 %160, i32* %162, i32 4)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @unzOpenCurrentFile(i32 %166)
  %168 = load i64, i64* @UNZ_OK, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %157
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

171:                                              ; preds = %157
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  %176 = call i8* @safe_malloc(i32 %175)
  %177 = load i8**, i8*** %6, align 8
  store i8* %176, i8** %177, align 8
  %178 = load i8**, i8*** %6, align 8
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %179, i64 %183
  store i8 0, i8* %184, align 1
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i8**, i8*** %6, align 8
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = call i32 @unzReadCurrentFile(i32 %187, i8* %189, i64 %193)
  store i32 %194, i32* %8, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @unzCloseCurrentFile(i32 %197)
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %171
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

202:                                              ; preds = %171
  %203 = load i8*, i8** %13, align 8
  %204 = call i32 @g_free(i8* %203)
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

208:                                              ; preds = %153
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %208, %152
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %213 = call %struct.TYPE_7__* @g_slist_next(%struct.TYPE_7__* %212)
  store %struct.TYPE_7__* %213, %struct.TYPE_7__** %14, align 8
  br label %138

214:                                              ; preds = %138
  %215 = load i8*, i8** %13, align 8
  %216 = call i32 @g_free(i8* %215)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

217:                                              ; preds = %214, %202, %201, %170, %115, %114, %97, %53, %52, %35
  %218 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %218)
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i64 @ftell(i32*) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i8* @safe_malloc(i32) #2

declare dso_local i32 @fread(i8*, i32, i64, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @vfsFixDOSName(i8*) #2

declare dso_local i8* @g_ascii_strdown(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i64 @unzOpenCurrentFile(i32) #2

declare dso_local i32 @unzReadCurrentFile(i32, i8*, i64) #2

declare dso_local i32 @unzCloseCurrentFile(i32) #2

declare dso_local i32 @g_free(i8*) #2

declare dso_local %struct.TYPE_7__* @g_slist_next(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
