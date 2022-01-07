; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_setenv.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_setenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }

@YOML_TYPE_SCALAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"key must be a scalar\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"value must be a scalar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_13__*)* @on_config_setenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_setenv(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = call i32 @inherit_env_if_necessary(%struct.TYPE_14__* %11)
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %72, %3
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %13
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %9, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %10, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @YOML_TYPE_SCALAR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %21
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = call i32 @h2o_configurator_errprintf(i32* %46, %struct.TYPE_13__* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %76

49:                                               ; preds = %21
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @YOML_TYPE_SCALAR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = call i32 @h2o_configurator_errprintf(i32* %56, %struct.TYPE_13__* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %76

59:                                               ; preds = %49
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @h2o_config_setenv(i32 %62, i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %59
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %13

75:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %55, %45
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @inherit_env_if_necessary(%struct.TYPE_14__*) #1

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @h2o_config_setenv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
