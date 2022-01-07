; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_settings.c_set_default_static_files.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_settings.c_set_default_static_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8** }

@.str = private unnamed_addr constant [5 x i8] c".css\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".js \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".gif\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".ico\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".jpeg\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".pdf\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".csv\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c".mpeg\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".mpg\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c".swf\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c".woff\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c".woff2\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c".xls\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c".xlsx\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c".doc \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c".docx\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c".ppt \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c".pptx\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c".mp4\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".exe\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c".iso \00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c".gz  \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c".rar \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c".svg \00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c".bmp \00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c".tar \00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c".tgz \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c".tiff\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c".tif \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c".ttf \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c".flv \00", align 1
@__const.set_default_static_files.exts = private unnamed_addr constant [36 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)], align 16
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_default_static_files() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [36 x i8*], align 16
  %3 = bitcast [36 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([36 x i8*]* @__const.set_default_static_files.exts to i8*), i64 288, i1 false)
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %36

7:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %8

8:                                                ; preds = %33, %7
  %9 = load i64, i64* %1, align 8
  %10 = getelementptr inbounds [36 x i8*], [36 x i8*]* %2, i64 0, i64 0
  %11 = call i64 @ARRAY_SIZE(i8** %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %15 = load i64, i64* %1, align 8
  %16 = getelementptr inbounds [36 x i8*], [36 x i8*]* %2, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = icmp slt i64 %14, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i64, i64* %1, align 8
  %22 = getelementptr inbounds [36 x i8*], [36 x i8*]* %2, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i64, i64* %1, align 8
  %27 = getelementptr inbounds [36 x i8*], [36 x i8*]* %2, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %32 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8* %28, i8** %32, align 8
  br label %33

33:                                               ; preds = %25
  %34 = load i64, i64* %1, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %1, align 8
  br label %8

36:                                               ; preds = %6, %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
