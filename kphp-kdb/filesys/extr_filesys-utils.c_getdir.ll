; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_getdir.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_getdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.dirent = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"opendir (%s) returns NULL.\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"getdir (%s) failed. %m\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Skip %s in %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Skipping too long filename (%s/%s).\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"lstat (%s) fail. %m\0A\00", align 1
@cmp_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getdir(i8* %0, %struct.TYPE_5__** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.dirent*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_5__**, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %23, align 8
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32, i32* @PATH_MAX, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @snprintf(i8* %27, i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @PATH_MAX, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp sge i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %220

36:                                               ; preds = %4
  %37 = load i32, i32* @PATH_MAX, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32* @opendir(i8* %41)
  store i32* %42, i32** %18, align 8
  %43 = load i32*, i32** %18, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %220

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %122, %118, %98, %85, %75, %48
  br label %50

50:                                               ; preds = %49
  store i64 0, i64* @errno, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = call %struct.dirent* @readdir(i32* %51)
  store %struct.dirent* %52, %struct.dirent** %19, align 8
  %53 = load %struct.dirent*, %struct.dirent** %19, align 8
  %54 = icmp eq %struct.dirent* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i64, i64* @errno, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @kprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = call i32 @exit(i32 1) #4
  unreachable

62:                                               ; preds = %55
  br label %135

63:                                               ; preds = %50
  %64 = load %struct.dirent*, %struct.dirent** %19, align 8
  %65 = getelementptr inbounds %struct.dirent, %struct.dirent* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.dirent*, %struct.dirent** %19, align 8
  %71 = getelementptr inbounds %struct.dirent, %struct.dirent* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69, %63
  br label %49

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %76
  %80 = load %struct.dirent*, %struct.dirent** %19, align 8
  %81 = getelementptr inbounds %struct.dirent, %struct.dirent* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strncmp(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.dirent*, %struct.dirent** %19, align 8
  %87 = getelementptr inbounds %struct.dirent, %struct.dirent* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %88, i8* %89)
  br label %49

91:                                               ; preds = %79, %76
  %92 = load %struct.dirent*, %struct.dirent** %19, align 8
  %93 = getelementptr inbounds %struct.dirent, %struct.dirent* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = load i32, i32* %14, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.dirent*, %struct.dirent** %19, align 8
  %101 = getelementptr inbounds %struct.dirent, %struct.dirent* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %99, i8* %102)
  br label %49

104:                                              ; preds = %91
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %27, i64 %106
  %108 = load %struct.dirent*, %struct.dirent** %19, align 8
  %109 = getelementptr inbounds %struct.dirent, %struct.dirent* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strcpy(i8* %107, i8* %110)
  %112 = call i8* @zmalloc(i32 16)
  %113 = bitcast i8* %112 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %17, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = call i64 @lstat(i8* %27, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %104
  %119 = call i32 @kprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %27)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %121 = call i32 @zfree(%struct.TYPE_5__* %120, i32 16)
  br label %49

122:                                              ; preds = %104
  %123 = load %struct.dirent*, %struct.dirent** %19, align 8
  %124 = getelementptr inbounds %struct.dirent, %struct.dirent* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @zstrdup(i8* %125)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %131, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %132, %struct.TYPE_5__** %16, align 8
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  br label %49

135:                                              ; preds = %62
  %136 = load i32*, i32** %18, align 8
  %137 = call i32 @closedir(i32* %136)
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %142 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %141, %struct.TYPE_5__** %142, align 8
  br label %218

143:                                              ; preds = %135
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %217

146:                                              ; preds = %143
  %147 = load i32, i32* %21, align 4
  %148 = call i32 @dyn_mark(i32 %147)
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 8
  %152 = trunc i64 %151 to i32
  %153 = call i8* @zmalloc(i32 %152)
  %154 = bitcast i8* %153 to %struct.TYPE_5__**
  store %struct.TYPE_5__** %154, %struct.TYPE_5__*** %22, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %155, %struct.TYPE_5__** %17, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sub nsw i32 %156, 1
  store i32 %157, i32* %20, align 4
  br label %158

158:                                              ; preds = %170, %146
  %159 = load i32, i32* %20, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %158
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %163 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %163, i64 %165
  store %struct.TYPE_5__* %162, %struct.TYPE_5__** %166, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  store %struct.TYPE_5__* %169, %struct.TYPE_5__** %17, align 8
  br label %170

170:                                              ; preds = %161
  %171 = load i32, i32* %20, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %20, align 4
  br label %158

173:                                              ; preds = %158
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %175 = icmp eq %struct.TYPE_5__* %174, null
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @cmp_file, align 4
  %181 = call i32 @qsort(%struct.TYPE_5__** %178, i32 %179, i32 8, i32 %180)
  %182 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %182, i64 %185
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %188, align 8
  store i32 0, i32* %20, align 4
  br label %189

189:                                              ; preds = %207, %173
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* %15, align 4
  %192 = sub nsw i32 %191, 1
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %189
  %195 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %195, i64 %198
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %202 = load i32, i32* %20, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %201, i64 %203
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  store %struct.TYPE_5__* %200, %struct.TYPE_5__** %206, align 8
  br label %207

207:                                              ; preds = %194
  %208 = load i32, i32* %20, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %20, align 4
  br label %189

210:                                              ; preds = %189
  %211 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %211, i64 0
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %213, %struct.TYPE_5__** %214, align 8
  %215 = load i32, i32* %21, align 4
  %216 = call i32 @dyn_release(i32 %215)
  br label %217

217:                                              ; preds = %210, %143
  br label %218

218:                                              ; preds = %217, %140
  %219 = load i32, i32* %15, align 4
  store i32 %219, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %220

220:                                              ; preds = %218, %45, %35
  %221 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @vkprintf(i32, i8*, i8*, ...) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @kprintf(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @zmalloc(i32) #2

declare dso_local i64 @lstat(i8*, i32*) #2

declare dso_local i32 @zfree(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @zstrdup(i8*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @dyn_mark(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @qsort(%struct.TYPE_5__**, i32, i32, i32) #2

declare dso_local i32 @dyn_release(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
