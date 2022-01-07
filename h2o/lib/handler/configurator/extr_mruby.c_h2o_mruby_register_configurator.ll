; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_mruby.c_h2o_mruby_register_configurator.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_mruby.c_h2o_mruby_register_configurator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mruby_configurator_t = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@on_config_enter = common dso_local global i32 0, align 4
@on_config_exit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mruby.handler\00", align 1
@H2O_CONFIGURATOR_FLAG_PATH = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_DEFERRED = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR = common dso_local global i32 0, align 4
@on_config_mruby_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"mruby.handler-file\00", align 1
@on_config_mruby_handler_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"mruby.handler_path\00", align 1
@on_config_mruby_handler_path = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mruby_register_configurator(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mruby_configurator_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @h2o_configurator_create(i32* %4, i32 16)
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.mruby_configurator_t*
  store %struct.mruby_configurator_t* %7, %struct.mruby_configurator_t** %3, align 8
  %8 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %3, align 8
  %9 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %3, align 8
  %12 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @on_config_enter, align 4
  %14 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %3, align 8
  %15 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @on_config_exit, align 4
  %18 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %3, align 8
  %19 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %3, align 8
  %22 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %21, i32 0, i32 0
  %23 = load i32, i32* @H2O_CONFIGURATOR_FLAG_PATH, align 4
  %24 = load i32, i32* @H2O_CONFIGURATOR_FLAG_DEFERRED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @on_config_mruby_handler, align 4
  %29 = call i32 @h2o_configurator_define_command(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %3, align 8
  %31 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %30, i32 0, i32 0
  %32 = load i32, i32* @H2O_CONFIGURATOR_FLAG_PATH, align 4
  %33 = load i32, i32* @H2O_CONFIGURATOR_FLAG_DEFERRED, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @on_config_mruby_handler_file, align 4
  %38 = call i32 @h2o_configurator_define_command(%struct.TYPE_2__* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %3, align 8
  %40 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %39, i32 0, i32 0
  %41 = load i32, i32* @H2O_CONFIGURATOR_FLAG_PATH, align 4
  %42 = load i32, i32* @H2O_CONFIGURATOR_FLAG_DEFERRED, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @on_config_mruby_handler_path, align 4
  %45 = call i32 @h2o_configurator_define_command(%struct.TYPE_2__* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  ret void
}

declare dso_local i64 @h2o_configurator_create(i32*, i32) #1

declare dso_local i32 @h2o_configurator_define_command(%struct.TYPE_2__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
