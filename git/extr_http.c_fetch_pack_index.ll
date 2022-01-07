; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_fetch_pack_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_fetch_pack_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@http_is_verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Getting index for pack %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"objects/pack/pack-%s.idx\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s.temp\00", align 1
@HTTP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Unable to get pack index %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @fetch_pack_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fetch_pack_index(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load i64, i64* @http_is_verbose, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @hash_to_hex(i8* %13)
  %15 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @end_url_with_slash(%struct.strbuf* %7, i8* %17)
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @hash_to_hex(i8* %19)
  %21 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = call i8* @strbuf_detach(%struct.strbuf* %7, i32* null)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @sha1_pack_index_name(i8* %23)
  %25 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = call i8* @strbuf_detach(%struct.strbuf* %7, i32* null)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @http_get_file(i8* %27, i8* %28, i32* null)
  %30 = load i64, i64* @HTTP_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %16
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @FREE_AND_NULL(i8* %35)
  br label %37

37:                                               ; preds = %32, %16
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i8*, i8** %6, align 8
  ret i8* %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @hash_to_hex(i8*) #2

declare dso_local i32 @end_url_with_slash(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i8* @sha1_pack_index_name(i8*) #2

declare dso_local i64 @http_get_file(i8*, i8*, i32*) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i32 @FREE_AND_NULL(i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
