; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_get_dav_token_headers.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_get_dav_token_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.curl_slist = type { i32 }
%struct.remote_lock = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@DAV_HEADER_IF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"If: (<%s>)\00", align 1
@DAV_HEADER_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Lock-Token: <%s>\00", align 1
@DAV_HEADER_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Timeout: Second-%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.curl_slist* (%struct.remote_lock*, i32)* @get_dav_token_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.curl_slist* @get_dav_token_headers(%struct.remote_lock* %0, i32 %1) #0 {
  %3 = alloca %struct.remote_lock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca %struct.curl_slist*, align 8
  store %struct.remote_lock* %0, %struct.remote_lock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = call %struct.curl_slist* (...) @http_copy_default_headers()
  store %struct.curl_slist* %8, %struct.curl_slist** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DAV_HEADER_IF, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.remote_lock*, %struct.remote_lock** %3, align 8
  %15 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %18, i32 %20)
  store %struct.curl_slist* %21, %struct.curl_slist** %6, align 8
  %22 = call i32 @strbuf_reset(%struct.strbuf* %5)
  br label %23

23:                                               ; preds = %13, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DAV_HEADER_LOCK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.remote_lock*, %struct.remote_lock** %3, align 8
  %30 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %33, i32 %35)
  store %struct.curl_slist* %36, %struct.curl_slist** %6, align 8
  %37 = call i32 @strbuf_reset(%struct.strbuf* %5)
  br label %38

38:                                               ; preds = %28, %23
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @DAV_HEADER_TIMEOUT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.remote_lock*, %struct.remote_lock** %3, align 8
  %45 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %48, i32 %50)
  store %struct.curl_slist* %51, %struct.curl_slist** %6, align 8
  %52 = call i32 @strbuf_reset(%struct.strbuf* %5)
  br label %53

53:                                               ; preds = %43, %38
  %54 = call i32 @strbuf_release(%struct.strbuf* %5)
  %55 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  ret %struct.curl_slist* %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.curl_slist* @http_copy_default_headers(...) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
