; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_compress.c_h2o_compress_register_configurator.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_compress.c_h2o_compress_register_configurator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compress_configurator_t = type { %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@on_config_enter = common dso_local global i32 0, align 4
@on_config_exit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@H2O_CONFIGURATOR_FLAG_ALL_LEVELS = common dso_local global i32 0, align 4
@on_config_compress = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"compress-minimum-size\00", align 1
@H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR = common dso_local global i32 0, align 4
@on_config_compress_min_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@on_config_gzip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_compress_register_configurator(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.compress_configurator_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @h2o_configurator_create(i32* %4, i32 24)
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.compress_configurator_t*
  store %struct.compress_configurator_t* %7, %struct.compress_configurator_t** %3, align 8
  %8 = load i32, i32* @on_config_enter, align 4
  %9 = load %struct.compress_configurator_t*, %struct.compress_configurator_t** %3, align 8
  %10 = getelementptr inbounds %struct.compress_configurator_t, %struct.compress_configurator_t* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @on_config_exit, align 4
  %13 = load %struct.compress_configurator_t*, %struct.compress_configurator_t** %3, align 8
  %14 = getelementptr inbounds %struct.compress_configurator_t, %struct.compress_configurator_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.compress_configurator_t*, %struct.compress_configurator_t** %3, align 8
  %17 = getelementptr inbounds %struct.compress_configurator_t, %struct.compress_configurator_t* %16, i32 0, i32 2
  %18 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %19 = load i32, i32* @on_config_compress, align 4
  %20 = call i32 @h2o_configurator_define_command(%struct.TYPE_8__* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.compress_configurator_t*, %struct.compress_configurator_t** %3, align 8
  %22 = getelementptr inbounds %struct.compress_configurator_t, %struct.compress_configurator_t* %21, i32 0, i32 2
  %23 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %24 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @on_config_compress_min_size, align 4
  %27 = call i32 @h2o_configurator_define_command(%struct.TYPE_8__* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.compress_configurator_t*, %struct.compress_configurator_t** %3, align 8
  %29 = getelementptr inbounds %struct.compress_configurator_t, %struct.compress_configurator_t* %28, i32 0, i32 2
  %30 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %31 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @on_config_gzip, align 4
  %34 = call i32 @h2o_configurator_define_command(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.compress_configurator_t*, %struct.compress_configurator_t** %3, align 8
  %36 = getelementptr inbounds %struct.compress_configurator_t, %struct.compress_configurator_t* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.compress_configurator_t*, %struct.compress_configurator_t** %3, align 8
  %39 = getelementptr inbounds %struct.compress_configurator_t, %struct.compress_configurator_t* %38, i32 0, i32 0
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.compress_configurator_t*, %struct.compress_configurator_t** %3, align 8
  %41 = getelementptr inbounds %struct.compress_configurator_t, %struct.compress_configurator_t* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 4
  %45 = load %struct.compress_configurator_t*, %struct.compress_configurator_t** %3, align 8
  %46 = getelementptr inbounds %struct.compress_configurator_t, %struct.compress_configurator_t* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 4
  ret void
}

declare dso_local i64 @h2o_configurator_create(i32*, i32) #1

declare dso_local i32 @h2o_configurator_define_command(%struct.TYPE_8__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
