; ModuleID = '/home/carl/AnghaBench/h2o/deps/yoml/extr_yoml-parser.h_yoml__parse_node.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yoml/extr_yoml-parser.h_yoml__parse_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8*, i8* }
%struct.TYPE_25__ = type { i32 (i32, i8, i32)*, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32*, i32* }
%struct.TYPE_20__ = type { i32 }

@YAML_NO_EVENT = common dso_local global i32 0, align 4
@YAML_STREAM_START_EVENT = common dso_local global i32 0, align 4
@YAML_DOCUMENT_START_EVENT = common dso_local global i32 0, align 4
@YOML__TYPE_UNRESOLVED_ALIAS = common dso_local global i32 0, align 4
@YOML_TYPE_SCALAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (i32*, i32*, %struct.TYPE_25__*)* @yoml__parse_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @yoml__parse_node(i32* %0, i32* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_26__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @YAML_NO_EVENT, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %12, %3
  br label %16

16:                                               ; preds = %15, %32
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @yaml_parser_parse(i32* %17, %struct.TYPE_26__* %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %111

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @YAML_STREAM_START_EVENT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @YAML_DOCUMENT_START_EVENT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %34

32:                                               ; preds = %26, %21
  %33 = call i32 @yaml_event_delete(%struct.TYPE_26__* %9)
  br label %16

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %100 [
    i32 131, label %37
    i32 129, label %51
    i32 128, label %92
    i32 130, label %96
  ]

37:                                               ; preds = %34
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @YOML__TYPE_UNRESOLVED_ALIAS, align 4
  %42 = call %struct.TYPE_24__* @yoml__new_node(i32 %40, i32 %41, i32 16, i32* null, i32* null, %struct.TYPE_26__* %9)
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @yoml__strdup(i32 %46)
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  br label %108

51:                                               ; preds = %34
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @YOML_TYPE_SCALAR, align 4
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call %struct.TYPE_24__* @yoml__new_node(i32 %54, i32 %55, i32 16, i32* %59, i32* %63, %struct.TYPE_26__* %9)
  store %struct.TYPE_24__* %64, %struct.TYPE_24__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @yoml__strdup(i32 %68)
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i32 (i32, i8, i32)*, i32 (i32, i8, i32)** %74, align 8
  %76 = icmp ne i32 (i32, i8, i32)* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %51
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = load i32 (i32, i8, i32)*, i32 (i32, i8, i32)** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = call i32 %80(i32 %84, i8 signext 65, i32 %89)
  br label %91

91:                                               ; preds = %77, %51
  br label %108

92:                                               ; preds = %34
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %95 = call %struct.TYPE_24__* @yoml__parse_sequence(i32* %93, %struct.TYPE_26__* %9, %struct.TYPE_25__* %94)
  store %struct.TYPE_24__* %95, %struct.TYPE_24__** %8, align 8
  br label %108

96:                                               ; preds = %34
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %99 = call %struct.TYPE_24__* @yoml__parse_mapping(i32* %97, %struct.TYPE_26__* %9, %struct.TYPE_25__* %98)
  store %struct.TYPE_24__* %99, %struct.TYPE_24__** %8, align 8
  br label %108

100:                                              ; preds = %34
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %8, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %9, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %6, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %100
  br label %108

108:                                              ; preds = %107, %96, %92, %91, %37
  %109 = call i32 @yaml_event_delete(%struct.TYPE_26__* %9)
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %4, align 8
  br label %111

111:                                              ; preds = %108, %20
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %112
}

declare dso_local i32 @yaml_parser_parse(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @yaml_event_delete(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_24__* @yoml__new_node(i32, i32, i32, i32*, i32*, %struct.TYPE_26__*) #1

declare dso_local i8* @yoml__strdup(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_24__* @yoml__parse_sequence(i32*, %struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @yoml__parse_mapping(i32*, %struct.TYPE_26__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
