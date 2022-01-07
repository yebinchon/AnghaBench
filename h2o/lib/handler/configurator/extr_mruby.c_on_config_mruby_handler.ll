; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_mruby.c_on_config_mruby_handler.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_mruby.c_on_config_mruby_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.mruby_configurator_t = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ruby compile error:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*)* @on_config_mruby_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_mruby_handler(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.mruby_configurator_t*, align 8
  %9 = alloca [1024 x i8], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.mruby_configurator_t*
  store %struct.mruby_configurator_t* %14, %struct.mruby_configurator_t** %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SIZE_MAX, align 4
  %20 = call i32 @h2o_strdup(i32* null, i32 %18, i32 %19)
  %21 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %8, align 8
  %22 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  store i32 %20, i32* %24, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %8, align 8
  %29 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = add nsw i32 %35, 1
  %37 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %8, align 8
  %38 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %37, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %8, align 8
  %42 = call i32 @get_mrb(%struct.mruby_configurator_t* %41)
  %43 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %8, align 8
  %44 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %47 = call i32 @compile_test(i32 %42, %struct.TYPE_16__* %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %3
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %53 = call i32 @h2o_configurator_errprintf(%struct.TYPE_15__* %50, %struct.TYPE_13__* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %52)
  store i32 -1, i32* %4, align 4
  br label %62

54:                                               ; preds = %3
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %8, align 8
  %59 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %58, i32 0, i32 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = call i32 @h2o_mruby_register(i32 %57, %struct.TYPE_16__* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %49
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @h2o_strdup(i32*, i32, i32) #1

declare dso_local i32 @compile_test(i32, %struct.TYPE_16__*, i8*) #1

declare dso_local i32 @get_mrb(%struct.mruby_configurator_t*) #1

declare dso_local i32 @h2o_configurator_errprintf(%struct.TYPE_15__*, %struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i32 @h2o_mruby_register(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
