; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_handle_message.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_handle_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.st_ptls_raw_message_emitter_t = type { i64*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32* }
%struct.st_ptls_record_t = type { i64, i8*, i32, i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@PTLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@PTLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@handle_handshake_message = common dso_local global i32 0, align 4
@begin_raw_message = common dso_local global i32 0, align 4
@commit_raw_message = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptls_handle_message(%struct.TYPE_10__* %0, i32* %1, i64* %2, i64 %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.st_ptls_raw_message_emitter_t, align 8
  %17 = alloca %struct.st_ptls_record_t, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %16, i32 0, i32 0
  %19 = load i32*, i32** %10, align 8
  %20 = bitcast i32* %19 to i64*
  store i64* %20, i64** %18, align 8
  %21 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %16, i32 0, i32 1
  %22 = load i32, i32* @SIZE_MAX, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %16, i32 0, i32 2
  %24 = load i64*, i64** %11, align 8
  %25 = ptrtoint i64* %24 to i32
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %16, i32 0, i32 3
  %27 = bitcast %struct.TYPE_8__* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 32, i1 false)
  %28 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %17, i32 0, i32 0
  %29 = load i32, i32* @PTLS_CONTENT_TYPE_HANDSHAKE, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %28, align 8
  %31 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %17, i32 0, i32 1
  store i8* null, i8** %31, align 8
  %32 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %17, i32 0, i32 2
  %33 = load i64, i64* %14, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %32, align 8
  %35 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %17, i32 0, i32 3
  %36 = load i8*, i8** %13, align 8
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %35, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %7
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %16, i32 0, i32 1
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @send_client_hello(%struct.TYPE_10__* %41, i32* %42, i32* %43, i32* null)
  store i32 %44, i32* %8, align 4
  br label %58

45:                                               ; preds = %7
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = call i64 @ptls_get_read_epoch(%struct.TYPE_10__* %46)
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %51, i32* %8, align 4
  br label %58

52:                                               ; preds = %45
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = load i32, i32* @handle_handshake_message, align 4
  %55 = getelementptr inbounds %struct.st_ptls_raw_message_emitter_t, %struct.st_ptls_raw_message_emitter_t* %16, i32 0, i32 1
  %56 = load i32*, i32** %15, align 8
  %57 = call i32 @handle_handshake_record(%struct.TYPE_10__* %53, i32 %54, i32* %55, %struct.st_ptls_record_t* %17, i32* %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %52, %50, %40
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @send_client_hello(%struct.TYPE_10__*, i32*, i32*, i32*) #2

declare dso_local i64 @ptls_get_read_epoch(%struct.TYPE_10__*) #2

declare dso_local i32 @handle_handshake_record(%struct.TYPE_10__*, i32, i32*, %struct.st_ptls_record_t*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
