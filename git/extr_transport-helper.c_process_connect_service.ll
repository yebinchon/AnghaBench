; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_process_connect_service.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_process_connect_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.transport = type { i32, %struct.helper_data* }
%struct.helper_data = type { i64, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"servpath\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"setting remote service path not supported by protocol\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid remote service path\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"connect %s\0A\00", align 1
@protocol_v2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"git-upload-pack\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"stateless-connect %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, i8*, i8*)* @process_connect_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_connect_service(%struct.transport* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.transport*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.helper_data*, align 8
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.transport*, %struct.transport** %4, align 8
  %12 = getelementptr inbounds %struct.transport, %struct.transport* %11, i32 0, i32 1
  %13 = load %struct.helper_data*, %struct.helper_data** %12, align 8
  store %struct.helper_data* %13, %struct.helper_data** %7, align 8
  %14 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strcmp(i8* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load %struct.transport*, %struct.transport** %4, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @set_helper_option(%struct.transport* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @warning(i32 %26)
  br label %35

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @warning(i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %25
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %38 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = load %struct.transport*, %struct.transport** %4, align 8
  %45 = call i32 @run_connect(%struct.transport* %44, %struct.strbuf* %8)
  store i32 %45, i32* %9, align 4
  br label %71

46:                                               ; preds = %36
  %47 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %48 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = call i64 (...) @get_protocol_version_config()
  %53 = load i64, i64* @protocol_v2, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  %62 = load %struct.transport*, %struct.transport** %4, align 8
  %63 = call i32 @run_connect(%struct.transport* %62, %struct.strbuf* %8)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.transport*, %struct.transport** %4, align 8
  %68 = getelementptr inbounds %struct.transport, %struct.transport* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %59
  br label %70

70:                                               ; preds = %69, %55, %51, %46
  br label %71

71:                                               ; preds = %70, %41
  %72 = call i32 @strbuf_release(%struct.strbuf* %8)
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @set_helper_option(%struct.transport*, i8*, i8*) #2

declare dso_local i32 @warning(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @run_connect(%struct.transport*, %struct.strbuf*) #2

declare dso_local i64 @get_protocol_version_config(...) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
