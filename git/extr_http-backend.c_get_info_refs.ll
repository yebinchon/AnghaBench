; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_get_info_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_get_info_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rpc_service = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"service\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"--stateless-rpc\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"--advertise-refs\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"application/x-git-%s-advertisement\00", align 1
@content_type = common dso_local global i32 0, align 4
@protocol_v2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"# service=git-%s\0A\00", align 1
@show_text_ref = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @get_info_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_info_refs(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca [5 x i8*], align 16
  %8 = alloca %struct.rpc_service*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i8* @get_parameter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %5, align 8
  %10 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %12 = call i32 @hdr_nocache(%struct.strbuf* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %2
  %16 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false)
  %17 = bitcast i8* %16 to [5 x i8*]*
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8** %18, align 8
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8** %19, align 16
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %20, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call %struct.rpc_service* @select_service(%struct.strbuf* %21, i8* %22)
  store %struct.rpc_service* %23, %struct.rpc_service** %8, align 8
  %24 = load %struct.rpc_service*, %struct.rpc_service** %8, align 8
  %25 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  %28 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %29 = load i32, i32* @content_type, align 4
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @hdr_str(%struct.strbuf* %28, i32 %29, i32 %31)
  %33 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %34 = call i32 @end_headers(%struct.strbuf* %33)
  %35 = call i64 (...) @determine_protocol_version_server()
  %36 = load i64, i64* @protocol_v2, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %15
  %39 = load %struct.rpc_service*, %struct.rpc_service** %8, align 8
  %40 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @packet_write_fmt(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = call i32 @packet_flush(i32 1)
  br label %44

44:                                               ; preds = %38, %15
  %45 = load %struct.rpc_service*, %struct.rpc_service** %8, align 8
  %46 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  store i8* %47, i8** %48, align 16
  %49 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %50 = call i32 @run_service(i8** %49, i32 0)
  br label %58

51:                                               ; preds = %2
  %52 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %53 = call i32 @select_getanyfile(%struct.strbuf* %52)
  %54 = load i32, i32* @show_text_ref, align 4
  %55 = call i32 @for_each_namespaced_ref(i32 %54, %struct.strbuf* %6)
  %56 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %57 = call i32 @send_strbuf(%struct.strbuf* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %struct.strbuf* %6)
  br label %58

58:                                               ; preds = %51, %44
  %59 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

declare dso_local i8* @get_parameter(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hdr_nocache(%struct.strbuf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.rpc_service* @select_service(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @hdr_str(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @end_headers(%struct.strbuf*) #1

declare dso_local i64 @determine_protocol_version_server(...) #1

declare dso_local i32 @packet_write_fmt(i32, i8*, i8*) #1

declare dso_local i32 @packet_flush(i32) #1

declare dso_local i32 @run_service(i8**, i32) #1

declare dso_local i32 @select_getanyfile(%struct.strbuf*) #1

declare dso_local i32 @for_each_namespaced_ref(i32, %struct.strbuf*) #1

declare dso_local i32 @send_strbuf(%struct.strbuf*, i8*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
