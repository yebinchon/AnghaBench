; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_unix.c_Sys_ListFiles.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_unix.c_Sys_ListFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAX_OSPATH = common dso_local global i32 0, align 4
@MAX_FOUND_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@qtrue = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @Sys_ListFiles(i8* %0, i8* %1, i8* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dirent*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.stat, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i32, i32* @MAX_OSPATH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = load i32, i32* @MAX_FOUND_FILES, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8*, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %75

34:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @Sys_ListFilteredFiles(i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %36, i8** %31, i32* %17)
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %31, i64 %39
  store i8* null, i8** %40, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %23, align 4
  br label %221

46:                                               ; preds = %34
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i8** @Z_Malloc(i32 %51)
  store i8** %52, i8*** %18, align 8
  store i32 0, i32* %20, align 4
  br label %53

53:                                               ; preds = %66, %46
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i32, i32* %20, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %31, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %18, align 8
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %61, i8** %65, align 8
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %20, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %20, align 4
  br label %53

69:                                               ; preds = %53
  %70 = load i8**, i8*** %18, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* null, i8** %73, align 8
  %74 = load i8**, i8*** %18, align 8
  store i8** %74, i8*** %6, align 8
  store i32 1, i32* %23, align 4
  br label %221

75:                                               ; preds = %5
  %76 = load i8*, i8** %8, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 47
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %92 = load i64, i64* @qtrue, align 8
  store i64 %92, i64* %14, align 8
  br label %93

93:                                               ; preds = %91, %85, %79
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @strlen(i8* %94)
  store i32 %95, i32* %22, align 4
  store i32 0, i32* %17, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = call i32* @opendir(i8* %96)
  store i32* %97, i32** %13, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32*, i32** %10, align 8
  store i32 0, i32* %100, align 4
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %23, align 4
  br label %221

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %171, %163, %134, %115, %101
  %103 = load i32*, i32** %13, align 8
  %104 = call %struct.dirent* @readdir(i32* %103)
  store %struct.dirent* %104, %struct.dirent** %12, align 8
  %105 = icmp ne %struct.dirent* %104, null
  br i1 %105, label %106, label %181

106:                                              ; preds = %102
  %107 = trunc i64 %26 to i32
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.dirent*, %struct.dirent** %12, align 8
  %110 = getelementptr inbounds %struct.dirent, %struct.dirent* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @Com_sprintf(i8* %28, i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %108, i8* %111)
  %113 = call i32 @stat(i8* %28, %struct.stat* %21)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %102

116:                                              ; preds = %106
  %117 = load i64, i64* %14, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @S_IFDIR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %119, %116
  %126 = load i64, i64* %14, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @S_IFDIR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128, %119
  br label %102

135:                                              ; preds = %128, %125
  %136 = load i8*, i8** %8, align 8
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %165

139:                                              ; preds = %135
  %140 = load %struct.dirent*, %struct.dirent** %12, align 8
  %141 = getelementptr inbounds %struct.dirent, %struct.dirent* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strlen(i8* %142)
  %144 = load i32, i32* %22, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %163, label %146

146:                                              ; preds = %139
  %147 = load %struct.dirent*, %struct.dirent** %12, align 8
  %148 = getelementptr inbounds %struct.dirent, %struct.dirent* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.dirent*, %struct.dirent** %12, align 8
  %151 = getelementptr inbounds %struct.dirent, %struct.dirent* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @strlen(i8* %152)
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %149, i64 %154
  %156 = load i32, i32* %22, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 0, %157
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = load i8*, i8** %8, align 8
  %161 = call i64 @Q_stricmp(i8* %159, i8* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %146, %139
  br label %102

164:                                              ; preds = %146
  br label %165

165:                                              ; preds = %164, %135
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* @MAX_FOUND_FILES, align 4
  %168 = sub nsw i32 %167, 1
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %181

171:                                              ; preds = %165
  %172 = load %struct.dirent*, %struct.dirent** %12, align 8
  %173 = getelementptr inbounds %struct.dirent, %struct.dirent* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @CopyString(i8* %174)
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %31, i64 %177
  store i8* %175, i8** %178, align 8
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %17, align 4
  br label %102

181:                                              ; preds = %170, %102
  %182 = load i32, i32* %17, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %31, i64 %183
  store i8* null, i8** %184, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = call i32 @closedir(i32* %185)
  %187 = load i32, i32* %17, align 4
  %188 = load i32*, i32** %10, align 8
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %181
  store i8** null, i8*** %6, align 8
  store i32 1, i32* %23, align 4
  br label %221

192:                                              ; preds = %181
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 8
  %197 = trunc i64 %196 to i32
  %198 = call i8** @Z_Malloc(i32 %197)
  store i8** %198, i8*** %18, align 8
  store i32 0, i32* %20, align 4
  br label %199

199:                                              ; preds = %212, %192
  %200 = load i32, i32* %20, align 4
  %201 = load i32, i32* %17, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %199
  %204 = load i32, i32* %20, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %31, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = load i8**, i8*** %18, align 8
  %209 = load i32, i32* %20, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  store i8* %207, i8** %211, align 8
  br label %212

212:                                              ; preds = %203
  %213 = load i32, i32* %20, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %20, align 4
  br label %199

215:                                              ; preds = %199
  %216 = load i8**, i8*** %18, align 8
  %217 = load i32, i32* %20, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  store i8* null, i8** %219, align 8
  %220 = load i8**, i8*** %18, align 8
  store i8** %220, i8*** %6, align 8
  store i32 1, i32* %23, align 4
  br label %221

221:                                              ; preds = %215, %191, %99, %69, %45
  %222 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i8**, i8*** %6, align 8
  ret i8** %223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Sys_ListFilteredFiles(i8*, i8*, i8*, i8**, i32*) #2

declare dso_local i8** @Z_Malloc(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i8* @CopyString(i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
