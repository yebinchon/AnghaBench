; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_append_msgs_to_imap.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_append_msgs_to_imap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.imap_server_conf = type { i64, i32 }
%struct.imap_store = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to open store\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"sending %d message%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%4u%% (%d/%d) done\0D\00", align 1
@DRV_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imap_server_conf*, %struct.strbuf*, i32)* @append_msgs_to_imap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_msgs_to_imap(%struct.imap_server_conf* %0, %struct.strbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imap_server_conf*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.imap_store*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.imap_server_conf* %0, %struct.imap_server_conf** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store %struct.imap_store* null, %struct.imap_store** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.imap_server_conf*, %struct.imap_server_conf** %5, align 8
  %16 = load %struct.imap_server_conf*, %struct.imap_server_conf** %5, align 8
  %17 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.imap_store* @imap_open_store(%struct.imap_server_conf* %15, i32 %18)
  store %struct.imap_store* %19, %struct.imap_store** %9, align 8
  %20 = load %struct.imap_store*, %struct.imap_store** %9, align 8
  %21 = icmp ne %struct.imap_store* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %74

25:                                               ; preds = %3
  %26 = load %struct.imap_server_conf*, %struct.imap_server_conf** %5, align 8
  %27 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.imap_store*, %struct.imap_store** %9, align 8
  %30 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 1
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %36)
  br label %38

38:                                               ; preds = %25, %66
  %39 = load i32, i32* %12, align 4
  %40 = mul nsw i32 %39, 100
  %41 = load i32, i32* %7, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %44, i32 %45, i32 %46)
  %48 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %49 = call i32 @split_msg(%struct.strbuf* %48, %struct.strbuf* %8, i32* %10)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %38
  br label %69

52:                                               ; preds = %38
  %53 = load %struct.imap_server_conf*, %struct.imap_server_conf** %5, align 8
  %54 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @wrap_in_html(%struct.strbuf* %8)
  br label %59

59:                                               ; preds = %57, %52
  %60 = load %struct.imap_store*, %struct.imap_store** %9, align 8
  %61 = call i32 @imap_store_msg(%struct.imap_store* %60, %struct.strbuf* %8)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @DRV_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %38

69:                                               ; preds = %65, %51
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %72 = load %struct.imap_store*, %struct.imap_store** %9, align 8
  %73 = call i32 @imap_close_store(%struct.imap_store* %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %22
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.imap_store* @imap_open_store(%struct.imap_server_conf*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @split_msg(%struct.strbuf*, %struct.strbuf*, i32*) #2

declare dso_local i32 @wrap_in_html(%struct.strbuf*) #2

declare dso_local i32 @imap_store_msg(%struct.imap_store*, %struct.strbuf*) #2

declare dso_local i32 @imap_close_store(%struct.imap_store*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
