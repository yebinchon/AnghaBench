; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_access_log.c_h2o_access_log_register_configurator.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_access_log.c_h2o_access_log_register_configurator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_access_log_configurator_t = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@on_config_enter = common dso_local global i32 0, align 4
@on_config_exit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"access-log\00", align 1
@H2O_CONFIGURATOR_FLAG_ALL_LEVELS = common dso_local global i32 0, align 4
@on_config = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_access_log_register_configurator(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_h2o_access_log_configurator_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @h2o_configurator_create(i32* %4, i32 16)
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.st_h2o_access_log_configurator_t*
  store %struct.st_h2o_access_log_configurator_t* %7, %struct.st_h2o_access_log_configurator_t** %3, align 8
  %8 = load i32, i32* @on_config_enter, align 4
  %9 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %3, align 8
  %10 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @on_config_exit, align 4
  %13 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %3, align 8
  %14 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %3, align 8
  %17 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %3, align 8
  %20 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %3, align 8
  %22 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %21, i32 0, i32 0
  %23 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %24 = load i32, i32* @on_config, align 4
  %25 = call i32 @h2o_configurator_define_command(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
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
