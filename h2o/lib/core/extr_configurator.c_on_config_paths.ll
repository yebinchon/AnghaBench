; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_paths.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }

@YOML_TYPE_SCALAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"key (representing the virtual path) must be a string\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"key (representing the virtual path) must not be an empty string\00", align 1
@sort_from_longer_paths = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_18__*, %struct.TYPE_17__*)* @on_config_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_paths(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %53, %3
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %15, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %14
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %9, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @YOML_TYPE_SCALAR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = call i32 @h2o_configurator_errprintf(i32* %38, %struct.TYPE_17__* %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %131

41:                                               ; preds = %22
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @strlen(i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %51 = call i32 @h2o_configurator_errprintf(i32* %49, %struct.TYPE_17__* %50, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %131

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %14

56:                                               ; preds = %14
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @sort_from_longer_paths, align 8
  %68 = inttoptr i64 %67 to i32 (i8*, i8*)*
  %69 = call i32 @qsort(%struct.TYPE_19__* %61, i64 %66, i32 16, i32 (i8*, i8*)* %68)
  store i64 0, i64* %8, align 8
  br label %70

70:                                               ; preds = %121, %56
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %71, %76
  br i1 %77, label %78, label %124

78:                                               ; preds = %70
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  store %struct.TYPE_17__* %87, %struct.TYPE_17__** %10, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call %struct.TYPE_17__* @convert_path_config_node(i32* %88, i32 %97)
  store %struct.TYPE_17__* %98, %struct.TYPE_17__** %11, align 8
  %99 = icmp eq %struct.TYPE_17__* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %78
  store i32 -1, i32* %4, align 4
  br label %131

101:                                              ; preds = %78
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32* @h2o_config_register_path(%struct.TYPE_14__* %104, i32 %108, i32 0)
  store i32* %109, i32** %12, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %113 = call i32 @config_path(%struct.TYPE_18__* %110, i32* %111, %struct.TYPE_17__* %112)
  store i32 %113, i32* %13, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %115 = call i32 @yoml_free(%struct.TYPE_17__* %114, i32* null)
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %101
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %4, align 4
  br label %131

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %8, align 8
  br label %70

124:                                              ; preds = %70
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = call i32 @config_path(%struct.TYPE_18__* %125, i32* %129, %struct.TYPE_17__* null)
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %124, %118, %100, %48, %37
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_17__*, i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @qsort(%struct.TYPE_19__*, i64, i32, i32 (i8*, i8*)*) #1

declare dso_local %struct.TYPE_17__* @convert_path_config_node(i32*, i32) #1

declare dso_local i32* @h2o_config_register_path(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @config_path(%struct.TYPE_18__*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @yoml_free(%struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
