; ModuleID = '/home/carl/AnghaBench/h2o/examples/libh2o/extr_simple.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/examples/libh2o/extr_simple.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@H2O_LOGCONF_ESCAPE_APACHE = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"/post-test\00", align 1
@post_test = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"/chunked-test\00", align 1
@chunked_test = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"/reproxy-test\00", align 1
@reproxy_test = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"examples/doc_root\00", align 1
@ctx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@USE_MEMCACHED = common dso_local global i64 0, align 8
@libmemcached_receiver = common dso_local global i32 0, align 4
@h2o_memcached_receiver = common dso_local global i32 0, align 4
@USE_HTTPS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"examples/h2o/server.crt\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"examples/h2o/server.key\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"DEFAULT:!MD5:!DSS:!DES:!RC4:!RC2:!SEED:!IDEA:!NULL:!ADH:!EXP:!SRP:!PSK\00", align 1
@accept_ctx = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"failed to listen to 127.0.0.1:7890:%s\0A\00", align 1
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
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @H2O_LOGCONF_ESCAPE_APACHE, align 4
  %10 = call i32* @h2o_access_log_open_handle(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* @SIGPIPE, align 4
  %12 = load i32, i32* @SIG_IGN, align 4
  %13 = call i32 @signal(i32 %11, i32 %12)
  %14 = call i32 @h2o_config_init(%struct.TYPE_9__* @config)
  %15 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @h2o_iovec_init(i32 %15)
  %17 = call i32* @h2o_config_register_host(%struct.TYPE_9__* @config, i32 %16, i32 65535)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @post_test, align 4
  %20 = call i32* @register_handler(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @h2o_access_log_register(i32* %24, i32* %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @chunked_test, align 4
  %30 = call i32* @register_handler(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @h2o_access_log_register(i32* %34, i32* %35)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @reproxy_test, align 4
  %40 = call i32* @register_handler(i32* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @h2o_reproxy_register(i32* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @h2o_access_log_register(i32* %46, i32* %47)
  br label %49

49:                                               ; preds = %45, %37
  %50 = load i32*, i32** %6, align 8
  %51 = call i32* @h2o_config_register_path(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @h2o_file_register(i32* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null, i32 0)
  %54 = load i32*, i32** %7, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @h2o_access_log_register(i32* %57, i32* %58)
  br label %60

60:                                               ; preds = %56, %49
  %61 = call i32* (...) @h2o_evloop_create()
  %62 = call i32 @h2o_context_init(%struct.TYPE_8__* @ctx, i32* %61, %struct.TYPE_9__* @config)
  %63 = load i64, i64* @USE_MEMCACHED, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 1), align 4
  %67 = load i32, i32* @h2o_memcached_receiver, align 4
  %68 = call i32 @h2o_multithread_register_receiver(i32 %66, i32* @libmemcached_receiver, i32 %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i64, i64* @USE_HTTPS, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = call i64 @setup_ssl(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %93

76:                                               ; preds = %72, %69
  store %struct.TYPE_8__* @ctx, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @accept_ctx, i32 0, i32 1), align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 0), align 4
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @accept_ctx, i32 0, i32 0), align 8
  %78 = call i64 (...) @create_listener()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* @errno, align 4
  %83 = call i8* @strerror(i32 %82)
  %84 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %83)
  br label %93

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %91, %85
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ctx, i32 0, i32 0), align 4
  %88 = load i32, i32* @INT32_MAX, align 4
  %89 = call i64 @h2o_evloop_run(i32 %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %86

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %80, %75
  ret i32 1
}

declare dso_local i32* @h2o_access_log_open_handle(i8*, i32*, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @h2o_config_init(%struct.TYPE_9__*) #1

declare dso_local i32* @h2o_config_register_host(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32* @register_handler(i32*, i8*, i32) #1

declare dso_local i32 @h2o_access_log_register(i32*, i32*) #1

declare dso_local i32 @h2o_reproxy_register(i32*) #1

declare dso_local i32* @h2o_config_register_path(i32*, i8*, i32) #1

declare dso_local i32 @h2o_file_register(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @h2o_context_init(%struct.TYPE_8__*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32* @h2o_evloop_create(...) #1

declare dso_local i32 @h2o_multithread_register_receiver(i32, i32*, i32) #1

declare dso_local i64 @setup_ssl(i8*, i8*, i8*) #1

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
