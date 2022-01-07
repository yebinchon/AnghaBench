; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/uvwget/extr_main.c_add_download.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/uvwget/extr_main.c_add_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%d.download\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Error opening %s\0A\00", align 1
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@curl_handle = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Added download %s -> %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_download(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [50 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %12 = call i8* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %18 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  br label %36

19:                                               ; preds = %2
  %20 = call i32* (...) @curl_easy_init()
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @curl_easy_setopt(i32* %21, i32 %22, i8* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @CURLOPT_URL, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @curl_easy_setopt(i32* %25, i32 %26, i8* %27)
  %29 = load i32, i32* @curl_handle, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @curl_multi_add_handle(i32 %29, i32* %30)
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %35 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @curl_multi_add_handle(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
