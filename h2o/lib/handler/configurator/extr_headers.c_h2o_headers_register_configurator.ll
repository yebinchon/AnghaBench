; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers.c_h2o_headers_register_configurator.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers.c_h2o_headers_register_configurator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.headers_configurator_t = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@on_config_enter = common dso_local global i32 0, align 4
@on_config_exit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"header\00", align 1
@get_headers_commands = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_headers_register_configurator(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.headers_configurator_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @h2o_configurator_create(i32* %4, i32 16)
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.headers_configurator_t*
  store %struct.headers_configurator_t* %7, %struct.headers_configurator_t** %3, align 8
  %8 = load i32, i32* @on_config_enter, align 4
  %9 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %3, align 8
  %10 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @on_config_exit, align 4
  %13 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %3, align 8
  %14 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %3, align 8
  %18 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %17, i32 0, i32 2
  %19 = load i32, i32* @get_headers_commands, align 4
  %20 = call i32 @h2o_configurator_define_headers_commands(i32* %16, %struct.TYPE_2__* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %3, align 8
  %22 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.headers_configurator_t*, %struct.headers_configurator_t** %3, align 8
  %25 = getelementptr inbounds %struct.headers_configurator_t, %struct.headers_configurator_t* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i64 @h2o_configurator_create(i32*, i32) #1

declare dso_local i32 @h2o_configurator_define_headers_commands(i32*, %struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
