; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_fastcgi.c_h2o_fastcgi_register_configurator.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_fastcgi.c_h2o_fastcgi_register_configurator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fastcgi_configurator_t = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@H2O_DEFAULT_FASTCGI_IO_TIMEOUT = common dso_local global i32 0, align 4
@on_config_enter = common dso_local global i32 0, align 4
@on_config_exit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fastcgi.connect\00", align 1
@H2O_CONFIGURATOR_FLAG_PATH = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_EXTENSION = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_DEFERRED = common dso_local global i32 0, align 4
@on_config_connect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"fastcgi.spawn\00", align 1
@on_config_spawn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"fastcgi.timeout.io\00", align 1
@H2O_CONFIGURATOR_FLAG_ALL_LEVELS = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR = common dso_local global i32 0, align 4
@on_config_timeout_io = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"fastcgi.timeout.keepalive\00", align 1
@on_config_timeout_keepalive = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"fastcgi.document_root\00", align 1
@on_config_document_root = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"fastcgi.send-delegated-uri\00", align 1
@on_config_send_delegated_uri = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_fastcgi_register_configurator(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.fastcgi_configurator_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @h2o_configurator_create(i32* %4, i32 24)
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.fastcgi_configurator_t*
  store %struct.fastcgi_configurator_t* %7, %struct.fastcgi_configurator_t** %3, align 8
  %8 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %9 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %12 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %11, i32 0, i32 1
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %12, align 8
  %13 = load i32, i32* @H2O_DEFAULT_FASTCGI_IO_TIMEOUT, align 4
  %14 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %15 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 8
  %18 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %19 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @on_config_enter, align 4
  %23 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %24 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @on_config_exit, align 4
  %27 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %28 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %31 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %30, i32 0, i32 0
  %32 = load i32, i32* @H2O_CONFIGURATOR_FLAG_PATH, align 4
  %33 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXTENSION, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @H2O_CONFIGURATOR_FLAG_DEFERRED, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @on_config_connect, align 4
  %38 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %40 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %39, i32 0, i32 0
  %41 = load i32, i32* @H2O_CONFIGURATOR_FLAG_PATH, align 4
  %42 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXTENSION, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @H2O_CONFIGURATOR_FLAG_DEFERRED, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @on_config_spawn, align 4
  %47 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %49 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %48, i32 0, i32 0
  %50 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %51 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @on_config_timeout_io, align 4
  %54 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %56 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %55, i32 0, i32 0
  %57 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %58 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @on_config_timeout_keepalive, align 4
  %61 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %63 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %62, i32 0, i32 0
  %64 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %65 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @on_config_document_root, align 4
  %68 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %3, align 8
  %70 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %69, i32 0, i32 0
  %71 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %72 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @on_config_send_delegated_uri, align 4
  %75 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %73, i32 %74)
  ret void
}

declare dso_local i64 @h2o_configurator_create(i32*, i32) #1

declare dso_local i32 @h2o_configurator_define_command(%struct.TYPE_4__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
