; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_curl_dump_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_curl_dump_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s, %10.10ld bytes (0x%8.8lx)\0A\00", align 1
@trace_curl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32)* @curl_dump_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @curl_dump_header(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca %struct.strbuf**, align 8
  %11 = alloca %struct.strbuf**, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %13, i64 %14, i64 %15)
  %17 = call i32 @trace_strbuf(i32* @trace_curl, %struct.strbuf* %9)
  %18 = call i32 @strbuf_reset(%struct.strbuf* %9)
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @strbuf_add(%struct.strbuf* %9, i8* %19, i64 %20)
  %22 = call %struct.strbuf** @strbuf_split_max(%struct.strbuf* %9, i8 signext 10, i32 0)
  store %struct.strbuf** %22, %struct.strbuf*** %10, align 8
  %23 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  store %struct.strbuf** %23, %struct.strbuf*** %11, align 8
  br label %24

24:                                               ; preds = %56, %4
  %25 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %26 = load %struct.strbuf*, %struct.strbuf** %25, align 8
  %27 = icmp ne %struct.strbuf* %26, null
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %33 = load %struct.strbuf*, %struct.strbuf** %32, align 8
  %34 = call i32 @redact_sensitive_header(%struct.strbuf* %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %37 = load %struct.strbuf*, %struct.strbuf** %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @strbuf_insert(%struct.strbuf* %37, i32 0, i8* %38, i32 %40)
  %42 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %43 = load %struct.strbuf*, %struct.strbuf** %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i32 @strbuf_insert(%struct.strbuf* %43, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %47 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %48 = load %struct.strbuf*, %struct.strbuf** %47, align 8
  %49 = call i32 @strbuf_rtrim(%struct.strbuf* %48)
  %50 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %51 = load %struct.strbuf*, %struct.strbuf** %50, align 8
  %52 = call i32 @strbuf_addch(%struct.strbuf* %51, i8 signext 10)
  %53 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %54 = load %struct.strbuf*, %struct.strbuf** %53, align 8
  %55 = call i32 @trace_strbuf(i32* @trace_curl, %struct.strbuf* %54)
  br label %56

56:                                               ; preds = %35
  %57 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %58 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %57, i32 1
  store %struct.strbuf** %58, %struct.strbuf*** %11, align 8
  br label %24

59:                                               ; preds = %24
  %60 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %61 = call i32 @strbuf_list_free(%struct.strbuf** %60)
  %62 = call i32 @strbuf_release(%struct.strbuf* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i64, i64) #2

declare dso_local i32 @trace_strbuf(i32*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #2

declare dso_local %struct.strbuf** @strbuf_split_max(%struct.strbuf*, i8 signext, i32) #2

declare dso_local i32 @redact_sensitive_header(%struct.strbuf*) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_list_free(%struct.strbuf**) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
