; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_http_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_http_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.rpc_service = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"http.getanyfile\00", align 1
@getanyfile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"http.maxrequestbuffer\00", align 1
@max_request_buffer = common dso_local global i32 0, align 4
@rpc_service = common dso_local global %struct.rpc_service* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"http.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @http_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.strbuf, align 8
  %4 = alloca %struct.rpc_service*, align 8
  store i32 0, i32* %2, align 4
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %6 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* @getanyfile)
  %7 = call i32 @git_config_get_ulong(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* @max_request_buffer)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %32, %0
  %9 = load i32, i32* %1, align 4
  %10 = load %struct.rpc_service*, %struct.rpc_service** @rpc_service, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.rpc_service* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = load %struct.rpc_service*, %struct.rpc_service** @rpc_service, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %14, i64 %16
  store %struct.rpc_service* %17, %struct.rpc_service** %4, align 8
  %18 = load %struct.rpc_service*, %struct.rpc_service** %4, align 8
  %19 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @git_config_get_bool(i8* %23, i32* %2)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %2, align 4
  %28 = load %struct.rpc_service*, %struct.rpc_service** %4, align 8
  %29 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %13
  %31 = call i32 @strbuf_reset(%struct.strbuf* %3)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %8

35:                                               ; preds = %8
  %36 = call i32 @strbuf_release(%struct.strbuf* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_config_get_bool(i8*, i32*) #2

declare dso_local i32 @git_config_get_ulong(i8*, i32*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.rpc_service*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
