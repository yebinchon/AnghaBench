; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-stdio-over-pipes.c_stdio_over_pipes_helper.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-stdio-over-pipes.c_stdio_over_pipes_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"he\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"o \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wo\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rl\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.stdio_over_pipes_helper.buffers = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)], align 16
@UV_NAMED_PIPE = common dso_local global i64 0, align 8
@stdin_pipe = common dso_local global i32 0, align 4
@stdout_pipe = common dso_local global i32 0, align 4
@after_pipe_write = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@after_write_called = common dso_local global i32 0, align 4
@on_pipe_read_called = common dso_local global i32 0, align 4
@close_cb_called = common dso_local global i32 0, align 4
@on_read_alloc = common dso_local global i32 0, align 4
@on_pipe_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stdio_over_pipes_helper() #0 {
  %1 = alloca [7 x i8*], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = bitcast [7 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([7 x i8*]* @__const.stdio_over_pipes_helper.buffers to i8*), i64 56, i1 false)
  %9 = getelementptr inbounds [7 x i8*], [7 x i8*]* %1, i64 0, i64 0
  %10 = call i32 @ARRAY_SIZE(i8** %9)
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %2, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  %14 = getelementptr inbounds [7 x i8*], [7 x i8*]* %1, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(i8** %14)
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %18 = call i32* (...) @uv_default_loop()
  store i32* %18, i32** %7, align 8
  %19 = load i64, i64* @UV_NAMED_PIPE, align 8
  %20 = call i64 @uv_guess_handle(i32 0)
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i64, i64* @UV_NAMED_PIPE, align 8
  %25 = call i64 @uv_guess_handle(i32 1)
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @uv_pipe_init(i32* %29, i32* @stdin_pipe, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @uv_pipe_init(i32* %35, i32* @stdout_pipe, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = call i32 @uv_pipe_open(i32* @stdin_pipe, i32 0)
  %42 = call i32 @uv_pipe_open(i32* @stdout_pipe, i32 1)
  %43 = call i32 @uv_unref(i32* @stdin_pipe)
  %44 = call i32 @uv_unref(i32* @stdout_pipe)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %64, %0
  %46 = load i32, i32* %5, align 4
  %47 = getelementptr inbounds [7 x i8*], [7 x i8*]* %1, i64 0, i64 0
  %48 = call i32 @ARRAY_SIZE(i8** %47)
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [7 x i8*], [7 x i8*]* %1, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [7 x i8*], [7 x i8*]* %1, i64 0, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = call i32 @uv_buf_init(i8* %54, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %17, i64 %62
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %5, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %45

67:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %5, align 4
  %70 = getelementptr inbounds [7 x i8*], [7 x i8*]* %1, i64 0, i64 0
  %71 = call i32 @ARRAY_SIZE(i8** %70)
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %13, i64 %75
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %17, i64 %78
  %80 = load i32, i32* @after_pipe_write, align 4
  %81 = call i32 @uv_write(i32* %76, i32* @stdout_pipe, i32* %79, i32 1, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84)
  br label %86

86:                                               ; preds = %73
  %87 = load i32, i32* %5, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %68

89:                                               ; preds = %68
  %90 = call i32 (...) @notify_parent_process()
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %93 = call i32 @uv_run(i32* %91, i32 %92)
  %94 = load i32, i32* @after_write_called, align 4
  %95 = icmp eq i32 %94, 7
  %96 = zext i1 %95 to i32
  %97 = call i32 @ASSERT(i32 %96)
  %98 = load i32, i32* @on_pipe_read_called, align 4
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @ASSERT(i32 %100)
  %102 = load i32, i32* @close_cb_called, align 4
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @ASSERT(i32 %104)
  %106 = call i32 @uv_ref(i32* @stdout_pipe)
  %107 = call i32 @uv_ref(i32* @stdin_pipe)
  %108 = load i32, i32* @on_read_alloc, align 4
  %109 = load i32, i32* @on_pipe_read, align 4
  %110 = call i32 @uv_read_start(i32* @stdin_pipe, i32 %108, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @ASSERT(i32 %113)
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %117 = call i32 @uv_run(i32* %115, i32 %116)
  %118 = load i32, i32* @after_write_called, align 4
  %119 = icmp eq i32 %118, 7
  %120 = zext i1 %119 to i32
  %121 = call i32 @ASSERT(i32 %120)
  %122 = load i32, i32* @on_pipe_read_called, align 4
  %123 = icmp eq i32 %122, 1
  %124 = zext i1 %123 to i32
  %125 = call i32 @ASSERT(i32 %124)
  %126 = load i32, i32* @close_cb_called, align 4
  %127 = icmp eq i32 %126, 2
  %128 = zext i1 %127 to i32
  %129 = call i32 @ASSERT(i32 %128)
  %130 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  %131 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %131)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32* @uv_default_loop(...) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i64 @uv_guess_handle(i32) #2

declare dso_local i32 @uv_pipe_init(i32*, i32*, i32) #2

declare dso_local i32 @uv_pipe_open(i32*, i32) #2

declare dso_local i32 @uv_unref(i32*) #2

declare dso_local i32 @uv_buf_init(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @uv_write(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @notify_parent_process(...) #2

declare dso_local i32 @uv_run(i32*, i32) #2

declare dso_local i32 @uv_ref(i32*) #2

declare dso_local i32 @uv_read_start(i32*, i32, i32) #2

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
