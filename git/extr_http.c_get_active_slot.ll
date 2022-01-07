; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_get_active_slot.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_get_active_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.active_request_slot = type { i32, i32*, i32*, i32*, i32*, i32*, %struct.active_request_slot* }
%struct.TYPE_2__ = type { i64 }

@active_queue_head = common dso_local global %struct.active_request_slot* null, align 8
@curl_default = common dso_local global i32 0, align 4
@curl_session_count = common dso_local global i32 0, align 4
@active_requests = common dso_local global i32 0, align 4
@CURLOPT_COOKIEFILE = common dso_local global i32 0, align 4
@curl_cookie_file = common dso_local global i32 0, align 4
@curl_save_cookies = common dso_local global i64 0, align 8
@CURLOPT_COOKIEJAR = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@pragma_header = common dso_local global i32 0, align 4
@CURLOPT_ERRORBUFFER = common dso_local global i32 0, align 4
@curl_errorstr = common dso_local global i32 0, align 4
@CURLOPT_CUSTOMREQUEST = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_HTTPGET = common dso_local global i32 0, align 4
@CURLOPT_FAILONERROR = common dso_local global i32 0, align 4
@CURLOPT_RANGE = common dso_local global i32 0, align 4
@http_follow_config = common dso_local global i64 0, align 8
@HTTP_FOLLOW_ALWAYS = common dso_local global i64 0, align 8
@CURLOPT_FOLLOWLOCATION = common dso_local global i32 0, align 4
@http_auth = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CURLOPT_HTTPAUTH = common dso_local global i32 0, align 4
@CURLOPT_IPRESOLVE = common dso_local global i32 0, align 4
@curlm = common dso_local global i32 0, align 4
@git_curl_ipresolve = common dso_local global i32 0, align 4
@http_auth_methods = common dso_local global i32 0, align 4
@max_requests = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.active_request_slot* @get_active_slot() #0 {
  %1 = alloca %struct.active_request_slot*, align 8
  %2 = alloca %struct.active_request_slot*, align 8
  %3 = load %struct.active_request_slot*, %struct.active_request_slot** @active_queue_head, align 8
  store %struct.active_request_slot* %3, %struct.active_request_slot** %1, align 8
  br label %4

4:                                                ; preds = %14, %0
  %5 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %6 = icmp ne %struct.active_request_slot* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %9 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi i1 [ false, %4 ], [ %11, %7 ]
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %16 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %15, i32 0, i32 6
  %17 = load %struct.active_request_slot*, %struct.active_request_slot** %16, align 8
  store %struct.active_request_slot* %17, %struct.active_request_slot** %1, align 8
  br label %4

18:                                               ; preds = %12
  %19 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %20 = icmp eq %struct.active_request_slot* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = call %struct.active_request_slot* @xmalloc(i32 56)
  store %struct.active_request_slot* %22, %struct.active_request_slot** %2, align 8
  %23 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %24 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %26 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %28 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %27, i32 0, i32 6
  store %struct.active_request_slot* null, %struct.active_request_slot** %28, align 8
  %29 = load %struct.active_request_slot*, %struct.active_request_slot** @active_queue_head, align 8
  store %struct.active_request_slot* %29, %struct.active_request_slot** %1, align 8
  %30 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %31 = icmp eq %struct.active_request_slot* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  store %struct.active_request_slot* %33, %struct.active_request_slot** @active_queue_head, align 8
  br label %48

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %40, %34
  %36 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %37 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %36, i32 0, i32 6
  %38 = load %struct.active_request_slot*, %struct.active_request_slot** %37, align 8
  %39 = icmp ne %struct.active_request_slot* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %42 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %41, i32 0, i32 6
  %43 = load %struct.active_request_slot*, %struct.active_request_slot** %42, align 8
  store %struct.active_request_slot* %43, %struct.active_request_slot** %1, align 8
  br label %35

44:                                               ; preds = %35
  %45 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  %46 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %47 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %46, i32 0, i32 6
  store %struct.active_request_slot* %45, %struct.active_request_slot** %47, align 8
  br label %48

48:                                               ; preds = %44, %32
  %49 = load %struct.active_request_slot*, %struct.active_request_slot** %2, align 8
  store %struct.active_request_slot* %49, %struct.active_request_slot** %1, align 8
  br label %50

50:                                               ; preds = %48, %18
  %51 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %52 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* @curl_default, align 4
  %57 = call i32* @curl_easy_duphandle(i32 %56)
  %58 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %59 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load i32, i32* @curl_session_count, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @curl_session_count, align 4
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32, i32* @active_requests, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @active_requests, align 4
  %65 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %66 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %68 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %67, i32 0, i32 5
  store i32* null, i32** %68, align 8
  %69 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %70 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %69, i32 0, i32 4
  store i32* null, i32** %70, align 8
  %71 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %72 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  %73 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %74 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %76 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @CURLOPT_COOKIEFILE, align 4
  %79 = load i32, i32* @curl_cookie_file, align 4
  %80 = call i32 @curl_easy_setopt(i32* %77, i32 %78, i32 %79)
  %81 = load i64, i64* @curl_save_cookies, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %62
  %84 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %85 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @CURLOPT_COOKIEJAR, align 4
  %88 = load i32, i32* @curl_cookie_file, align 4
  %89 = call i32 @curl_easy_setopt(i32* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %62
  %91 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %92 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %95 = load i32, i32* @pragma_header, align 4
  %96 = call i32 @curl_easy_setopt(i32* %93, i32 %94, i32 %95)
  %97 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %98 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @CURLOPT_ERRORBUFFER, align 4
  %101 = load i32, i32* @curl_errorstr, align 4
  %102 = call i32 @curl_easy_setopt(i32* %99, i32 %100, i32 %101)
  %103 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %104 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @CURLOPT_CUSTOMREQUEST, align 4
  %107 = call i32 @curl_easy_setopt(i32* %105, i32 %106, i32 0)
  %108 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %109 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %112 = call i32 @curl_easy_setopt(i32* %110, i32 %111, i32 0)
  %113 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %114 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %117 = call i32 @curl_easy_setopt(i32* %115, i32 %116, i32 0)
  %118 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %119 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %122 = call i32 @curl_easy_setopt(i32* %120, i32 %121, i32 0)
  %123 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %124 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %127 = call i32 @curl_easy_setopt(i32* %125, i32 %126, i32 0)
  %128 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %129 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @CURLOPT_HTTPGET, align 4
  %132 = call i32 @curl_easy_setopt(i32* %130, i32 %131, i32 1)
  %133 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %134 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @CURLOPT_FAILONERROR, align 4
  %137 = call i32 @curl_easy_setopt(i32* %135, i32 %136, i32 1)
  %138 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %139 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* @CURLOPT_RANGE, align 4
  %142 = call i32 @curl_easy_setopt(i32* %140, i32 %141, i32 0)
  %143 = load i64, i64* @http_follow_config, align 8
  %144 = load i64, i64* @HTTP_FOLLOW_ALWAYS, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %90
  %147 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %148 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* @CURLOPT_FOLLOWLOCATION, align 4
  %151 = call i32 @curl_easy_setopt(i32* %149, i32 %150, i32 1)
  br label %158

152:                                              ; preds = %90
  %153 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %154 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* @CURLOPT_FOLLOWLOCATION, align 4
  %157 = call i32 @curl_easy_setopt(i32* %155, i32 %156, i32 0)
  br label %158

158:                                              ; preds = %152, %146
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @http_auth, i32 0, i32 0), align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = call i64 (...) @curl_empty_auth_enabled()
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161, %158
  %165 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  %166 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @init_curl_http_auth(i32* %167)
  br label %169

169:                                              ; preds = %164, %161
  %170 = load %struct.active_request_slot*, %struct.active_request_slot** %1, align 8
  ret %struct.active_request_slot* %170
}

declare dso_local %struct.active_request_slot* @xmalloc(i32) #1

declare dso_local i32* @curl_easy_duphandle(i32) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i32) #1

declare dso_local i64 @curl_empty_auth_enabled(...) #1

declare dso_local i32 @init_curl_http_auth(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
