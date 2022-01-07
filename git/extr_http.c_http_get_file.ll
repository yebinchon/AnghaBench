; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_http_get_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_http_get_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.http_get_options = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s.temp\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to open local file %s\00", align 1
@HTTP_ERROR = common dso_local global i32 0, align 4
@HTTP_REQUEST_FILE = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.http_get_options*)* @http_get_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_get_file(i8* %0, i8* %1, %struct.http_get_options* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.http_get_options*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.http_get_options* %2, %struct.http_get_options** %6, align 8
  %10 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @fopen(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @HTTP_ERROR, align 4
  store i32 %22, i32* %7, align 4
  br label %43

23:                                               ; preds = %3
  %24 = load i8*, i8** %4, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* @HTTP_REQUEST_FILE, align 4
  %27 = load %struct.http_get_options*, %struct.http_get_options** %6, align 8
  %28 = call i32 @http_request_reauth(i8* %24, i32* %25, i32 %26, %struct.http_get_options* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @fclose(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @HTTP_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @finalize_object_file(i32 %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @HTTP_ERROR, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %34, %23
  br label %43

43:                                               ; preds = %42, %18
  %44 = call i32 @strbuf_release(%struct.strbuf* %8)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @http_request_reauth(i8*, i32*, i32, %struct.http_get_options*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @finalize_object_file(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
