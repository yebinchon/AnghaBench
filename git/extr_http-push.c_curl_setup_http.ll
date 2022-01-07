; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_curl_setup_http.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_curl_setup_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CURLOPT_PUT = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_INFILE = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@fread_buffer = common dso_local global i32 0, align 4
@CURLOPT_IOCTLFUNCTION = common dso_local global i32 0, align 4
@ioctl_buffer = common dso_local global i32 0, align 4
@CURLOPT_IOCTLDATA = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@CURLOPT_NOBODY = common dso_local global i32 0, align 4
@CURLOPT_CUSTOMREQUEST = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, %struct.buffer*, i32)* @curl_setup_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @curl_setup_http(i32* %0, i8* %1, i8* %2, %struct.buffer* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.buffer*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.buffer* %3, %struct.buffer** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @CURLOPT_PUT, align 4
  %13 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %11, i32 %12, i32 1)
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @CURLOPT_URL, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %14, i32 %15, i8* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @CURLOPT_INFILE, align 4
  %20 = load %struct.buffer*, %struct.buffer** %9, align 8
  %21 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %18, i32 %19, %struct.buffer* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @CURLOPT_INFILESIZE, align 4
  %24 = load %struct.buffer*, %struct.buffer** %9, align 8
  %25 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %22, i32 %23, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %31 = load i32, i32* @fread_buffer, align 4
  %32 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %29, i32 %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @CURLOPT_IOCTLFUNCTION, align 4
  %35 = load i32, i32* @ioctl_buffer, align 4
  %36 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @CURLOPT_IOCTLDATA, align 4
  %39 = load %struct.buffer*, %struct.buffer** %9, align 8
  %40 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %37, i32 %38, %struct.buffer* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %41, i32 %42, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @CURLOPT_NOBODY, align 4
  %47 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %45, i32 %46, i32 0)
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @CURLOPT_CUSTOMREQUEST, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %48, i32 %49, i8* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %54 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %52, i32 %53, i32 1)
  ret void
}

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
