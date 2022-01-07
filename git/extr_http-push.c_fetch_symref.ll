; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_fetch_symref.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_fetch_symref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i64, i8* }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@repo = common dso_local global %struct.TYPE_2__* null, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@HTTP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Couldn't get %s for remote symref\0A%s\00", align 1
@curl_errorstr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ref: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, %struct.object_id*)* @fetch_symref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_symref(i8* %0, i8** %1, %struct.object_id* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %13)
  store i8* %14, i8** %7, align 8
  %15 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @http_get_strbuf(i8* %16, %struct.strbuf* %8, i32* null)
  %18 = load i64, i64* @HTTP_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @curl_errorstr, align 4
  %23 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @FREE_AND_NULL(i8* %28)
  %30 = load %struct.object_id*, %struct.object_id** %6, align 8
  %31 = call i32 @oidclr(%struct.object_id* %30)
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %63

36:                                               ; preds = %24
  %37 = call i32 @strbuf_rtrim(%struct.strbuf* %8)
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @skip_prefix(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %46 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sub nsw i64 %45, %51
  %53 = trunc i64 %52 to i32
  %54 = call i8* @xmemdupz(i8* %43, i32 %53)
  %55 = load i8**, i8*** %5, align 8
  store i8* %54, i8** %55, align 8
  br label %61

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.object_id*, %struct.object_id** %6, align 8
  %60 = call i32 @get_oid_hex(i8* %58, %struct.object_id* %59)
  br label %61

61:                                               ; preds = %56, %42
  %62 = call i32 @strbuf_release(%struct.strbuf* %8)
  br label %63

63:                                               ; preds = %61, %35
  ret void
}

declare dso_local i8* @xstrfmt(i8*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @http_get_strbuf(i8*, %struct.strbuf*, i32*) #1

declare dso_local i32 @die(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FREE_AND_NULL(i8*) #1

declare dso_local i32 @oidclr(%struct.object_id*) #1

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local i32 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
