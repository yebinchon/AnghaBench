; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_fwrite_sha1_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_fwrite_sha1_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i8*, i32)* }
%struct.http_object_request = type { i64, %struct.TYPE_4__, i32, i32, %struct.active_request_slot* }
%struct.TYPE_4__ = type { i64, i8*, i32, i8* }
%struct.active_request_slot = type { i32, i32 }

@CURLINFO_HTTP_CODE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"curl_easy_getinfo for HTTP code failed: %s\00", align 1
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_3__* null, align 8
@Z_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @fwrite_sha1_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fwrite_sha1_file(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.http_object_request*, align 8
  %14 = alloca %struct.active_request_slot*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = mul i64 %17, %18
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.http_object_request*
  store %struct.http_object_request* %21, %struct.http_object_request** %13, align 8
  %22 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %23 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %22, i32 0, i32 4
  %24 = load %struct.active_request_slot*, %struct.active_request_slot** %23, align 8
  store %struct.active_request_slot* %24, %struct.active_request_slot** %14, align 8
  %25 = load %struct.active_request_slot*, %struct.active_request_slot** %14, align 8
  %26 = icmp ne %struct.active_request_slot* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %4
  %28 = load %struct.active_request_slot*, %struct.active_request_slot** %14, align 8
  %29 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CURLINFO_HTTP_CODE, align 4
  %32 = load %struct.active_request_slot*, %struct.active_request_slot** %14, align 8
  %33 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %32, i32 0, i32 0
  %34 = call i64 @curl_easy_getinfo(i32 %30, i32 %31, i32* %33)
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* @CURLE_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i64, i64* %15, align 8
  %40 = call i32 @curl_easy_strerror(i64 %39)
  %41 = call i32 @BUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %27
  %43 = load %struct.active_request_slot*, %struct.active_request_slot** %14, align 8
  %44 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 300
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %5, align 8
  br label %135

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %4
  br label %51

51:                                               ; preds = %77, %50
  %52 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %53 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i64, i64* %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %59, %61
  %63 = call i64 @xwrite(i32 %54, i8* %58, i64 %62)
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* %16, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %7, align 8
  %70 = udiv i64 %68, %69
  store i64 %70, i64* %5, align 8
  br label %135

71:                                               ; preds = %51
  %72 = load i64, i64* %16, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %11, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %51, label %82

82:                                               ; preds = %77
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %85 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %89 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i8* %87, i8** %90, align 8
  br label %91

91:                                               ; preds = %131, %82
  %92 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %93 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %94 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i8* %92, i8** %95, align 8
  %96 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %97 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i32 4096, i32* %98, align 8
  %99 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %100 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %99, i32 0, i32 1
  %101 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %102 = call i64 @git_inflate(%struct.TYPE_4__* %100, i32 %101)
  %103 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %104 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_hash_algo, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %106, align 8
  %108 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %109 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %108, i32 0, i32 2
  %110 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %111 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %112 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = sub i64 4096, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 %107(i32* %109, i8* %110, i32 %117)
  br label %119

119:                                              ; preds = %91
  %120 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %121 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load %struct.http_object_request*, %struct.http_object_request** %13, align 8
  %127 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @Z_OK, align 8
  %130 = icmp eq i64 %128, %129
  br label %131

131:                                              ; preds = %125, %119
  %132 = phi i1 [ false, %119 ], [ %130, %125 ]
  br i1 %132, label %91, label %133

133:                                              ; preds = %131
  %134 = load i64, i64* %8, align 8
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %133, %66, %47
  %136 = load i64, i64* %5, align 8
  ret i64 %136
}

declare dso_local i64 @curl_easy_getinfo(i32, i32, i32*) #1

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local i32 @curl_easy_strerror(i64) #1

declare dso_local i64 @xwrite(i32, i8*, i64) #1

declare dso_local i64 @git_inflate(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
