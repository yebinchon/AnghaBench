; ModuleID = '/home/carl/AnghaBench/git/extr_http-walker.c_fetch_alternates.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-walker.c_fetch_alternates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { %struct.strbuf* }
%struct.walker = type { i64, %struct.walker_data* }
%struct.walker_data = type { i32 }
%struct.active_request_slot = type { i32, %struct.alternates_request*, i32 }
%struct.alternates_request = type { i8*, i32, %struct.active_request_slot*, %struct.strbuf*, %struct.strbuf*, %struct.walker* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Getting alternates list for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s/objects/info/http-alternates\00", align 1
@process_alternates_response = common dso_local global i32 0, align 4
@CURLOPT_FILE = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@fwrite_buffer = common dso_local global %struct.strbuf* null, align 8
@CURLOPT_URL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.walker*, i8*)* @fetch_alternates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_alternates(%struct.walker* %0, i8* %1) #0 {
  %3 = alloca %struct.walker*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.active_request_slot*, align 8
  %8 = alloca %struct.alternates_request, align 8
  %9 = alloca %struct.walker_data*, align 8
  store %struct.walker* %0, %struct.walker** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = load %struct.walker*, %struct.walker** %3, align 8
  %13 = getelementptr inbounds %struct.walker, %struct.walker* %12, i32 0, i32 1
  %14 = load %struct.walker_data*, %struct.walker_data** %13, align 8
  store %struct.walker_data* %14, %struct.walker_data** %9, align 8
  %15 = load %struct.walker_data*, %struct.walker_data** %9, align 8
  %16 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %79

20:                                               ; preds = %2
  %21 = load %struct.walker_data*, %struct.walker_data** %9, align 8
  %22 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.walker*, %struct.walker** %3, align 8
  %24 = getelementptr inbounds %struct.walker, %struct.walker* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = call %struct.active_request_slot* (...) @get_active_slot()
  store %struct.active_request_slot* %34, %struct.active_request_slot** %7, align 8
  %35 = load i32, i32* @process_alternates_response, align 4
  %36 = load %struct.active_request_slot*, %struct.active_request_slot** %7, align 8
  %37 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.walker*, %struct.walker** %3, align 8
  %39 = getelementptr inbounds %struct.alternates_request, %struct.alternates_request* %8, i32 0, i32 5
  store %struct.walker* %38, %struct.walker** %39, align 8
  %40 = load %struct.active_request_slot*, %struct.active_request_slot** %7, align 8
  %41 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %40, i32 0, i32 1
  store %struct.alternates_request* %8, %struct.alternates_request** %41, align 8
  %42 = load %struct.active_request_slot*, %struct.active_request_slot** %7, align 8
  %43 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CURLOPT_FILE, align 4
  %46 = call i32 @curl_easy_setopt(i32 %44, i32 %45, %struct.strbuf* %5)
  %47 = load %struct.active_request_slot*, %struct.active_request_slot** %7, align 8
  %48 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %51 = load %struct.strbuf*, %struct.strbuf** @fwrite_buffer, align 8
  %52 = call i32 @curl_easy_setopt(i32 %49, i32 %50, %struct.strbuf* %51)
  %53 = load %struct.active_request_slot*, %struct.active_request_slot** %7, align 8
  %54 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CURLOPT_URL, align 4
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %58 = load %struct.strbuf*, %struct.strbuf** %57, align 8
  %59 = call i32 @curl_easy_setopt(i32 %55, i32 %56, %struct.strbuf* %58)
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds %struct.alternates_request, %struct.alternates_request* %8, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.alternates_request, %struct.alternates_request* %8, i32 0, i32 4
  store %struct.strbuf* %6, %struct.strbuf** %62, align 8
  %63 = getelementptr inbounds %struct.alternates_request, %struct.alternates_request* %8, i32 0, i32 3
  store %struct.strbuf* %5, %struct.strbuf** %63, align 8
  %64 = getelementptr inbounds %struct.alternates_request, %struct.alternates_request* %8, i32 0, i32 1
  store i32 1, i32* %64, align 8
  %65 = load %struct.active_request_slot*, %struct.active_request_slot** %7, align 8
  %66 = getelementptr inbounds %struct.alternates_request, %struct.alternates_request* %8, i32 0, i32 2
  store %struct.active_request_slot* %65, %struct.active_request_slot** %66, align 8
  %67 = load %struct.active_request_slot*, %struct.active_request_slot** %7, align 8
  %68 = call i64 @start_active_slot(%struct.active_request_slot* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %31
  %71 = load %struct.active_request_slot*, %struct.active_request_slot** %7, align 8
  %72 = call i32 @run_active_slot(%struct.active_request_slot* %71)
  br label %76

73:                                               ; preds = %31
  %74 = load %struct.walker_data*, %struct.walker_data** %9, align 8
  %75 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %74, i32 0, i32 0
  store i32 -1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = call i32 @strbuf_release(%struct.strbuf* %5)
  %78 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %79

79:                                               ; preds = %76, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local %struct.active_request_slot* @get_active_slot(...) #2

declare dso_local i32 @curl_easy_setopt(i32, i32, %struct.strbuf*) #2

declare dso_local i64 @start_active_slot(%struct.active_request_slot*) #2

declare dso_local i32 @run_active_slot(%struct.active_request_slot*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
