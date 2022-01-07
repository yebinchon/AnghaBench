; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_finish_http_object_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_finish_http_object_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, i32*)* }
%struct.http_object_request = type { i32, i32, i64, i64, i32, %struct.TYPE_4__, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.stat = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [59 x i8] c"requested range invalid; we may already have all the data.\00", align 1
@CURLE_OK = common dso_local global i64 0, align 8
@the_hash_algo = common dso_local global %struct.TYPE_5__* null, align 8
@Z_STREAM_END = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finish_http_object_request(%struct.http_object_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.http_object_request*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.strbuf, align 4
  store %struct.http_object_request* %0, %struct.http_object_request** %3, align 8
  %6 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %8 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @close(i32 %9)
  %11 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %12 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %14 = call i32 @process_http_object_request(%struct.http_object_request* %13)
  %15 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %16 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 416
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %47

21:                                               ; preds = %1
  %22 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %23 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CURLE_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %29 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @stat(i32 %31, %struct.stat* %4)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %40 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @unlink_or_warn(i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  br label %45

45:                                               ; preds = %44, %27
  store i32 -1, i32* %2, align 4
  br label %103

46:                                               ; preds = %21
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %49 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %48, i32 0, i32 9
  %50 = call i32 @git_inflate_end(i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_hash_algo, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32*)*, i32 (i32, i32*)** %52, align 8
  %54 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %55 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %59 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %58, i32 0, i32 8
  %60 = call i32 %53(i32 %57, i32* %59)
  %61 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %62 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @Z_STREAM_END, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %47
  %67 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %68 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @unlink_or_warn(i32 %70)
  store i32 -1, i32* %2, align 4
  br label %103

72:                                               ; preds = %47
  %73 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %74 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %73, i32 0, i32 6
  %75 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %76 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %75, i32 0, i32 7
  %77 = call i32 @oideq(i32* %74, %struct.TYPE_6__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %81 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @unlink_or_warn(i32 %83)
  store i32 -1, i32* %2, align 4
  br label %103

85:                                               ; preds = %72
  %86 = load i32, i32* @the_repository, align 4
  %87 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %88 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %87, i32 0, i32 6
  %89 = call i32 @loose_object_path(i32 %86, %struct.strbuf* %5, i32* %88)
  %90 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %91 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @finalize_object_file(i32 %93, i32 %95)
  %97 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %98 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = call i32 @strbuf_release(%struct.strbuf* %5)
  %100 = load %struct.http_object_request*, %struct.http_object_request** %3, align 8
  %101 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %85, %79, %66, %45
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @close(i32) #2

declare dso_local i32 @process_http_object_request(%struct.http_object_request*) #2

declare dso_local i32 @warning(i8*) #2

declare dso_local i64 @stat(i32, %struct.stat*) #2

declare dso_local i32 @unlink_or_warn(i32) #2

declare dso_local i32 @git_inflate_end(i32*) #2

declare dso_local i32 @oideq(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @loose_object_path(i32, %struct.strbuf*, i32*) #2

declare dso_local i32 @finalize_object_file(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
