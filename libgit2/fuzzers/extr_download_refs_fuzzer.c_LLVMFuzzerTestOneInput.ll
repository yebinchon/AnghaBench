; ModuleID = '/home/carl/AnghaBench/libgit2/fuzzers/extr_download_refs_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/libgit2/fuzzers/extr_download_refs_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.fuzzer_buffer*, i32 }
%struct.fuzzer_buffer = type { i8*, i64 }

@GIT_REMOTE_CALLBACKS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"fuzzer://remote-url\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"git_remote_create\00", align 1
@fuzzer_transport_cb = common dso_local global i32 0, align 4
@GIT_DIRECTION_FETCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fuzzer_buffer, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = getelementptr inbounds %struct.fuzzer_buffer, %struct.fuzzer_buffer* %5, i32 0, i32 0
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds %struct.fuzzer_buffer, %struct.fuzzer_buffer* %5, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %10, align 8
  %12 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_REMOTE_CALLBACKS_INIT to i8*), i64 16, i1 false)
  %13 = load i32, i32* @repo, align 4
  %14 = call i64 @git_remote_create_anonymous(i32** %7, i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @fuzzer_git_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* @fuzzer_transport_cb, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.fuzzer_buffer* %5, %struct.fuzzer_buffer** %21, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @GIT_DIRECTION_FETCH, align 4
  %24 = call i64 @git_remote_connect(i32* %22, i32 %23, %struct.TYPE_4__* %6, i32* null, i32* null)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %30

27:                                               ; preds = %18
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @git_remote_download(i32* %28, i32* null, i32* null)
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @git_remote_free(i32* %31)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_remote_create_anonymous(i32**, i32, i8*) #2

declare dso_local i32 @fuzzer_git_abort(i8*) #2

declare dso_local i64 @git_remote_connect(i32*, i32, %struct.TYPE_4__*, i32*, i32*) #2

declare dso_local i32 @git_remote_download(i32*, i32*, i32*) #2

declare dso_local i32 @git_remote_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
