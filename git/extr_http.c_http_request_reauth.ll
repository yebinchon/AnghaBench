; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_http_request_reauth.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_http_request_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_get_options = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }

@HTTP_OK = common dso_local global i32 0, align 4
@HTTP_REAUTH = common dso_local global i32 0, align 4
@http_auth = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unable to flush a file\00", align 1
@HTTP_START_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to truncate a file\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unknown http_request target\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, %struct.http_get_options*)* @http_request_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_request_reauth(i8* %0, i8* %1, i32 %2, %struct.http_get_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.http_get_options*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.http_get_options* %3, %struct.http_get_options** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.http_get_options*, %struct.http_get_options** %9, align 8
  %15 = call i32 @http_request(i8* %11, i8* %12, i32 %13, %struct.http_get_options* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @HTTP_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @HTTP_REAUTH, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %99

25:                                               ; preds = %19, %4
  %26 = load %struct.http_get_options*, %struct.http_get_options** %9, align 8
  %27 = icmp ne %struct.http_get_options* %26, null
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = load %struct.http_get_options*, %struct.http_get_options** %9, align 8
  %30 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load %struct.http_get_options*, %struct.http_get_options** %9, align 8
  %35 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load %struct.http_get_options*, %struct.http_get_options** %9, align 8
  %40 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.http_get_options*, %struct.http_get_options** %9, align 8
  %44 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i64 @update_url_from_redirect(%struct.TYPE_3__* %41, i8* %42, %struct.TYPE_4__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %38
  %49 = load %struct.http_get_options*, %struct.http_get_options** %9, align 8
  %50 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @credential_from_url(i32* @http_auth, i32 %53)
  %55 = load %struct.http_get_options*, %struct.http_get_options** %9, align 8
  %56 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %48, %38
  br label %61

61:                                               ; preds = %60, %33, %28, %25
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @HTTP_REAUTH, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %99

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  switch i32 %68, label %90 [
    i32 128, label %69
    i32 129, label %72
  ]

69:                                               ; preds = %67
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @strbuf_reset(i8* %70)
  br label %92

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @fflush(i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = call i32 @error_errno(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @HTTP_START_FAILED, align 4
  store i32 %78, i32* %5, align 4
  br label %99

79:                                               ; preds = %72
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @rewind(i8* %80)
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @fileno(i8* %82)
  %84 = call i32 @ftruncate(i32 %83, i32 0)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = call i32 @error_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @HTTP_START_FAILED, align 4
  store i32 %88, i32* %5, align 4
  br label %99

89:                                               ; preds = %79
  br label %92

90:                                               ; preds = %67
  %91 = call i32 @BUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %89, %69
  %93 = call i32 @credential_fill(i32* @http_auth)
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.http_get_options*, %struct.http_get_options** %9, align 8
  %98 = call i32 @http_request(i8* %94, i8* %95, i32 %96, %struct.http_get_options* %97)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %92, %86, %76, %65, %23
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @http_request(i8*, i8*, i32, %struct.http_get_options*) #1

declare dso_local i64 @update_url_from_redirect(%struct.TYPE_3__*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @credential_from_url(i32*, i32) #1

declare dso_local i32 @strbuf_reset(i8*) #1

declare dso_local i32 @fflush(i8*) #1

declare dso_local i32 @error_errno(i8*) #1

declare dso_local i32 @rewind(i8*) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @fileno(i8*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @credential_fill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
