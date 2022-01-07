; ModuleID = '/home/carl/AnghaBench/h2o/examples/libh2o/extr_websocket.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/examples/libh2o/extr_websocket.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }

@config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@on_req = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@accept_ctx = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to listen to 127.0.0.1:7890:%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @h2o_config_init(%struct.TYPE_11__* @config)
  %9 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @h2o_iovec_init(i32 %9)
  %11 = call i32* @h2o_config_register_host(%struct.TYPE_11__* @config, i32 %10, i32 65535)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32* @h2o_config_register_path(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* @on_req, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.TYPE_9__* @h2o_create_handler(i32* %15, i32 4)
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = call i32* (...) @h2o_evloop_create()
  %19 = call i32 @h2o_context_init(%struct.TYPE_10__* @ctx, i32* %18, %struct.TYPE_11__* @config)
  store %struct.TYPE_10__* @ctx, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @accept_ctx, i32 0, i32 1), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @accept_ctx, i32 0, i32 0), align 8
  %21 = call i64 (...) @create_listener()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i8* @strerror(i32 %25)
  %27 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %36

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %34, %28
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctx, i32 0, i32 0), align 4
  %31 = load i32, i32* @INT32_MAX, align 4
  %32 = call i64 @h2o_evloop_run(i32 %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %29

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %23
  ret i32 1
}

declare dso_local i32 @h2o_config_init(%struct.TYPE_11__*) #1

declare dso_local i32* @h2o_config_register_host(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32* @h2o_config_register_path(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @h2o_create_handler(i32*, i32) #1

declare dso_local i32 @h2o_context_init(%struct.TYPE_10__*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32* @h2o_evloop_create(...) #1

declare dso_local i64 @create_listener(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @h2o_evloop_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
