; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-spawn.c_spawn.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-spawn.c_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8**, i32, %struct.TYPE_6__*, i32, i8* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@process_open = common dso_local global i32 0, align 4
@pipe_open = common dso_local global i32 0, align 4
@exepath = common dso_local global i8* null, align 8
@args = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [13 x i8] c"spawn_helper\00", align 1
@options = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@exit_cb = common dso_local global i32 0, align 4
@loop = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@UV_IGNORE = common dso_local global i32 0, align 4
@UV_CREATE_PIPE = common dso_local global i32 0, align 4
@UV_WRITABLE_PIPE = common dso_local global i32 0, align 4
@process = common dso_local global i32 0, align 4
@output_used = common dso_local global i64 0, align 8
@on_alloc = common dso_local global i32 0, align 4
@on_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @spawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spawn() #0 {
  %1 = alloca [2 x %struct.TYPE_6__], align 16
  %2 = alloca i32, align 4
  %3 = load i32, i32* @process_open, align 4
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @ASSERT(i32 %5)
  %7 = load i32, i32* @pipe_open, align 4
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i8*, i8** @exepath, align 8
  %12 = load i8**, i8*** @args, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  store i8* %11, i8** %13, align 8
  %14 = load i8**, i8*** @args, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load i8**, i8*** @args, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 2
  store i8* null, i8** %17, align 8
  %18 = load i8*, i8** @exepath, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 4), align 8
  %19 = load i8**, i8*** @args, align 8
  store i8** %19, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 0), align 8
  %20 = load i32, i32* @exit_cb, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 3), align 8
  %21 = load i32, i32* @loop, align 4
  %22 = call i32 @uv_pipe_init(i32 %21, i32* @out, i32 0)
  %23 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %1, i64 0, i64 0
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 1), align 8
  %24 = load i32, i32* @UV_IGNORE, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 2), align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @UV_CREATE_PIPE, align 4
  %29 = load i32, i32* @UV_WRITABLE_PIPE, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 2), align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @options, i32 0, i32 2), align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32* @out, i32** %37, align 8
  %38 = load i32, i32* @loop, align 4
  %39 = call i32 @uv_spawn(i32 %38, i32* @process, %struct.TYPE_7__* @options)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  store i32 1, i32* @process_open, align 4
  store i32 1, i32* @pipe_open, align 4
  store i64 0, i64* @output_used, align 8
  %44 = load i32, i32* @on_alloc, align 4
  %45 = load i32, i32* @on_read, align 4
  %46 = call i32 @uv_read_start(i32* @out, i32 %44, i32 %45)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @uv_spawn(i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @uv_read_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
