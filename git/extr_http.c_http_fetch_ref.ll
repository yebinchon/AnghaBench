; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_http_fetch_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_http_fetch_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.ref = type { i32, i32, i32 }
%struct.http_get_options = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@HTTP_OK = common dso_local global i64 0, align 8
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"ref: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_fetch_ref(i8* %0, %struct.ref* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.http_get_options, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ref* %1, %struct.ref** %4, align 8
  %9 = bitcast %struct.http_get_options* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 -1, i32* %8, align 4
  %11 = getelementptr inbounds %struct.http_get_options, %struct.http_get_options* %5, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.ref*, %struct.ref** %4, align 8
  %14 = getelementptr inbounds %struct.ref, %struct.ref* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @quote_ref_url(i8* %12, i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @http_get_strbuf(i8* %17, %struct.strbuf* %7, %struct.http_get_options* %5)
  %19 = load i64, i64* @HTTP_OK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %2
  %22 = call i32 @strbuf_rtrim(%struct.strbuf* %7)
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ref*, %struct.ref** %4, align 8
  %33 = getelementptr inbounds %struct.ref, %struct.ref* %32, i32 0, i32 1
  %34 = call i32 @get_oid_hex(i64 %31, i32* %33)
  store i32 %34, i32* %8, align 4
  br label %48

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @starts_with(i64 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 5
  %44 = call i32 @xstrdup(i64 %43)
  %45 = load %struct.ref*, %struct.ref** %4, align 8
  %46 = getelementptr inbounds %struct.ref, %struct.ref* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %40, %35
  br label %48

48:                                               ; preds = %47, %29
  br label %49

49:                                               ; preds = %48, %2
  %50 = call i32 @strbuf_release(%struct.strbuf* %7)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @quote_ref_url(i8*, i32) #2

declare dso_local i64 @http_get_strbuf(i8*, %struct.strbuf*, %struct.http_get_options*) #2

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #2

declare dso_local i32 @get_oid_hex(i64, i32*) #2

declare dso_local i64 @starts_with(i64, i8*) #2

declare dso_local i32 @xstrdup(i64) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
