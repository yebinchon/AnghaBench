; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_unlock_remote.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_unlock_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.remote_lock* }
%struct.remote_lock = type { %struct.remote_lock*, %struct.remote_lock*, %struct.remote_lock*, %struct.remote_lock* }
%struct.active_request_slot = type { i32, %struct.slot_results* }
%struct.slot_results = type { i64, i32 }
%struct.curl_slist = type { i32 }

@repo = common dso_local global %struct.TYPE_2__* null, align 8
@DAV_HEADER_LOCK = common dso_local global i32 0, align 4
@DAV_UNLOCK = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"UNLOCK HTTP error %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to start UNLOCK request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.remote_lock*)* @unlock_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlock_remote(%struct.remote_lock* %0) #0 {
  %2 = alloca %struct.remote_lock*, align 8
  %3 = alloca %struct.active_request_slot*, align 8
  %4 = alloca %struct.slot_results, align 8
  %5 = alloca %struct.remote_lock*, align 8
  %6 = alloca %struct.curl_slist*, align 8
  %7 = alloca i32, align 4
  store %struct.remote_lock* %0, %struct.remote_lock** %2, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.remote_lock*, %struct.remote_lock** %9, align 8
  store %struct.remote_lock* %10, %struct.remote_lock** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %12 = load i32, i32* @DAV_HEADER_LOCK, align 4
  %13 = call %struct.curl_slist* @get_dav_token_headers(%struct.remote_lock* %11, i32 %12)
  store %struct.curl_slist* %13, %struct.curl_slist** %6, align 8
  %14 = call %struct.active_request_slot* (...) @get_active_slot()
  store %struct.active_request_slot* %14, %struct.active_request_slot** %3, align 8
  %15 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %16 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %15, i32 0, i32 1
  store %struct.slot_results* %4, %struct.slot_results** %16, align 8
  %17 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %18 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %21 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %20, i32 0, i32 1
  %22 = load %struct.remote_lock*, %struct.remote_lock** %21, align 8
  %23 = load i32, i32* @DAV_UNLOCK, align 4
  %24 = call i32 @curl_setup_http_get(i32 %19, %struct.remote_lock* %22, i32 %23)
  %25 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %26 = getelementptr inbounds %struct.active_request_slot, %struct.active_request_slot* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %29 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %30 = call i32 @curl_easy_setopt(i32 %27, i32 %28, %struct.curl_slist* %29)
  %31 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %32 = call i64 @start_active_slot(%struct.active_request_slot* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %1
  %35 = load %struct.active_request_slot*, %struct.active_request_slot** %3, align 8
  %36 = call i32 @run_active_slot(%struct.active_request_slot* %35)
  %37 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CURLE_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %47

42:                                               ; preds = %34
  %43 = load i32, i32* @stderr, align 4
  %44 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %4, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %41
  br label %51

48:                                               ; preds = %1
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %47
  %52 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %53 = call i32 @curl_slist_free_all(%struct.curl_slist* %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.remote_lock*, %struct.remote_lock** %55, align 8
  %57 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %58 = icmp eq %struct.remote_lock* %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %61 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %60, i32 0, i32 3
  %62 = load %struct.remote_lock*, %struct.remote_lock** %61, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.remote_lock* %62, %struct.remote_lock** %64, align 8
  br label %91

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %77, %65
  %67 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %68 = icmp ne %struct.remote_lock* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %71 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %70, i32 0, i32 3
  %72 = load %struct.remote_lock*, %struct.remote_lock** %71, align 8
  %73 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %74 = icmp ne %struct.remote_lock* %72, %73
  br label %75

75:                                               ; preds = %69, %66
  %76 = phi i1 [ false, %66 ], [ %74, %69 ]
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %79 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %78, i32 0, i32 3
  %80 = load %struct.remote_lock*, %struct.remote_lock** %79, align 8
  store %struct.remote_lock* %80, %struct.remote_lock** %5, align 8
  br label %66

81:                                               ; preds = %75
  %82 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %83 = icmp ne %struct.remote_lock* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %86 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %85, i32 0, i32 3
  %87 = load %struct.remote_lock*, %struct.remote_lock** %86, align 8
  %88 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %89 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %88, i32 0, i32 3
  store %struct.remote_lock* %87, %struct.remote_lock** %89, align 8
  br label %90

90:                                               ; preds = %84, %81
  br label %91

91:                                               ; preds = %90, %59
  %92 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %93 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %92, i32 0, i32 2
  %94 = load %struct.remote_lock*, %struct.remote_lock** %93, align 8
  %95 = call i32 @free(%struct.remote_lock* %94)
  %96 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %97 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %96, i32 0, i32 1
  %98 = load %struct.remote_lock*, %struct.remote_lock** %97, align 8
  %99 = call i32 @free(%struct.remote_lock* %98)
  %100 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %101 = getelementptr inbounds %struct.remote_lock, %struct.remote_lock* %100, i32 0, i32 0
  %102 = load %struct.remote_lock*, %struct.remote_lock** %101, align 8
  %103 = call i32 @free(%struct.remote_lock* %102)
  %104 = load %struct.remote_lock*, %struct.remote_lock** %2, align 8
  %105 = call i32 @free(%struct.remote_lock* %104)
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local %struct.curl_slist* @get_dav_token_headers(%struct.remote_lock*, i32) #1

declare dso_local %struct.active_request_slot* @get_active_slot(...) #1

declare dso_local i32 @curl_setup_http_get(i32, %struct.remote_lock*, i32) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, %struct.curl_slist*) #1

declare dso_local i64 @start_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @run_active_slot(%struct.active_request_slot*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local i32 @free(%struct.remote_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
