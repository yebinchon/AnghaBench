; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_walk_rec.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_walk_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i8** }

@walk_path = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"opendir (%s) fail (depth = %d). %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"stat (%s) fail. %m\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@split_modulo = common dso_local global i32 0, align 4
@split_rem = common dso_local global i32 0, align 4
@walk_prefix_len = common dso_local global i32 0, align 4
@MAX_DIRS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32, i8*)* @walk_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_rec(i32** %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dirent*, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i64*, i64** @walk_path, align 8
  %16 = call i32 @strlen(i64* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i64*, i64** @walk_path, align 8
  %18 = call i32* @opendir(i64* %17)
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  store i32* %18, i32** %22, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i64*, i64** @walk_path, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i8*, i64*, ...) @kprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64* %30, i32 %31)
  store i32 -1, i32* %5, align 4
  br label %193

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %181, %127, %90, %67, %54, %33
  %35 = load i32**, i32*** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call %struct.dirent* @readdir(i32* %39)
  store %struct.dirent* %40, %struct.dirent** %11, align 8
  %41 = icmp ne %struct.dirent* %40, null
  br i1 %41, label %42, label %182

42:                                               ; preds = %34
  %43 = load %struct.dirent*, %struct.dirent** %11, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.dirent*, %struct.dirent** %11, align 8
  %50 = getelementptr inbounds %struct.dirent, %struct.dirent* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48, %42
  br label %34

55:                                               ; preds = %48
  %56 = load i64*, i64** @walk_path, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load %struct.dirent*, %struct.dirent** %11, align 8
  %61 = getelementptr inbounds %struct.dirent, %struct.dirent* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @sprintf(i64* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = load i64*, i64** @walk_path, align 8
  %65 = call i64 @stat(i64* %64, %struct.stat* %12)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i64*, i64** @walk_path, align 8
  %69 = call i32 (i8*, i64*, ...) @kprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64* %68)
  br label %34

70:                                               ; preds = %55
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @S_ISDIR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %135

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %135

78:                                               ; preds = %75
  store i64 0, i64* @errno, align 8
  %79 = load %struct.dirent*, %struct.dirent** %11, align 8
  %80 = getelementptr inbounds %struct.dirent, %struct.dirent* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strtol(i8* %81, i32* null, i32 10)
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load i64, i64* @errno, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %34

91:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  %92 = load i32, i32* %8, align 4
  switch i32 %92, label %124 [
    i32 0, label %93
    i32 1, label %101
    i32 2, label %114
  ]

93:                                               ; preds = %91
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @check_depth0(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  store i32 1, i32* %13, align 4
  br label %100

100:                                              ; preds = %99, %93
  br label %124

101:                                              ; preds = %91
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 100
  %109 = add nsw i32 %104, %108
  %110 = call i32 @check_depth1(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %101
  store i32 1, i32* %13, align 4
  br label %113

113:                                              ; preds = %112, %101
  br label %124

114:                                              ; preds = %91
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @split_modulo, align 4
  %119 = srem i32 %117, %118
  %120 = load i32, i32* @split_rem, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 1, i32* %13, align 4
  br label %123

123:                                              ; preds = %122, %114
  br label %124

124:                                              ; preds = %91, %123, %113, %100
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %34

128:                                              ; preds = %124
  %129 = load i32**, i32*** %6, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @walk_rec(i32** %129, i32* %130, i32 %132, i8* %133)
  br label %181

135:                                              ; preds = %75, %70
  %136 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @S_ISREG(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %180

140:                                              ; preds = %135
  %141 = load i32, i32* %8, align 4
  %142 = icmp sge i32 %141, 3
  br i1 %142, label %143, label %180

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = icmp sle i32 %144, 4
  br i1 %145, label %146, label %180

146:                                              ; preds = %143
  %147 = load i64*, i64** @walk_path, align 8
  %148 = load i32, i32* @walk_prefix_len, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = call %struct.TYPE_3__* @get_str_f(i64* %150, i32 1)
  store %struct.TYPE_3__* %151, %struct.TYPE_3__** %14, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MAX_DIRS, align 8
  %156 = icmp slt i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %146
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %165, %146
  %171 = load i8*, i8** %9, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i8**, i8*** %173, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %176, align 8
  %179 = getelementptr inbounds i8*, i8** %174, i64 %177
  store i8* %171, i8** %179, align 8
  br label %180

180:                                              ; preds = %170, %143, %140, %135
  br label %181

181:                                              ; preds = %180, %128
  br label %34

182:                                              ; preds = %34
  %183 = load i64*, i64** @walk_path, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  store i64 0, i64* %186, align 8
  %187 = load i32**, i32*** %6, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @closedir(i32* %191)
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %182, %29
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32* @opendir(i64*) #1

declare dso_local i32 @kprintf(i8*, i64*, ...) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sprintf(i64*, i8*, i8*) #1

declare dso_local i64 @stat(i64*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @check_depth0(i32) #1

declare dso_local i32 @check_depth1(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_3__* @get_str_f(i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
