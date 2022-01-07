; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_service_rpc.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_service_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rpc_service = type { i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"--stateless-rpc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__const.service_rpc.argv = private unnamed_addr constant [4 x i8*] [i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"application/x-git-%s-request\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"application/x-git-%s-result\00", align 1
@content_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @service_rpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_rpc(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i8*], align 16
  %6 = alloca %struct.rpc_service*, align 8
  %7 = alloca %struct.strbuf, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast [4 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i8*]* @__const.service_rpc.argv to i8*), i64 32, i1 false)
  %9 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.rpc_service* @select_service(%struct.strbuf* %9, i8* %10)
  store %struct.rpc_service* %11, %struct.rpc_service** %6, align 8
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = call i32 @strbuf_reset(%struct.strbuf* %7)
  %14 = load %struct.rpc_service*, %struct.rpc_service** %6, align 8
  %15 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @check_content_type(%struct.strbuf* %18, i32 %20)
  %22 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %23 = call i32 @hdr_nocache(%struct.strbuf* %22)
  %24 = call i32 @strbuf_reset(%struct.strbuf* %7)
  %25 = load %struct.rpc_service*, %struct.rpc_service** %6, align 8
  %26 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  %29 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %30 = load i32, i32* @content_type, align 4
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hdr_str(%struct.strbuf* %29, i32 %30, i32 %32)
  %34 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %35 = call i32 @end_headers(%struct.strbuf* %34)
  %36 = load %struct.rpc_service*, %struct.rpc_service** %6, align 8
  %37 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  store i8* %38, i8** %39, align 16
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %41 = load %struct.rpc_service*, %struct.rpc_service** %6, align 8
  %42 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @run_service(i8** %40, i32 %43)
  %45 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.rpc_service* @select_service(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @check_content_type(%struct.strbuf*, i32) #2

declare dso_local i32 @hdr_nocache(%struct.strbuf*) #2

declare dso_local i32 @hdr_str(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @end_headers(%struct.strbuf*) #2

declare dso_local i32 @run_service(i8**, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
