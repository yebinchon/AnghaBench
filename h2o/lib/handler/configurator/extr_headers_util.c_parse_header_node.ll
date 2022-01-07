; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers_util.c_parse_header_node.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers_util.c_parse_header_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__** }

@YOML_TYPE_SCALAR = common dso_local global i64 0, align 8
@H2O_HEADERS_CMD_WHEN_FINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"header:sa\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"when:*\00", align 1
@YOML_TYPE_SEQUENCE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"final,early,all\00", align 1
@H2O_HEADERS_CMD_WHEN_EARLY = common dso_local global i32 0, align 4
@H2O_HEADERS_CMD_WHEN_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__**, %struct.TYPE_12__***, i64*, i32*)* @parse_header_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_header_node(i32* %0, %struct.TYPE_12__** %1, %struct.TYPE_12__*** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca %struct.TYPE_12__***, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__**, align 8
  %13 = alloca %struct.TYPE_12__**, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__*** %2, %struct.TYPE_12__**** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @YOML_TYPE_SCALAR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %22 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %9, align 8
  store %struct.TYPE_12__** %21, %struct.TYPE_12__*** %22, align 8
  %23 = load i64*, i64** %10, align 8
  store i64 1, i64* %23, align 8
  %24 = load i32, i32* @H2O_HEADERS_CMD_WHEN_FINAL, align 4
  %25 = load i32*, i32** %11, align 8
  store i32 %24, i32* %25, align 4
  br label %82

26:                                               ; preds = %5
  store %struct.TYPE_12__** null, %struct.TYPE_12__*** %13, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = call i64 @h2o_configurator_parse_mapping(i32* %27, %struct.TYPE_12__* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__*** %12, %struct.TYPE_12__*** %13)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %83

33:                                               ; preds = %26
  %34 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @YOML_TYPE_SEQUENCE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %45, align 8
  %47 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %9, align 8
  store %struct.TYPE_12__** %46, %struct.TYPE_12__*** %47, align 8
  %48 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %10, align 8
  store i64 %53, i64* %54, align 8
  br label %59

55:                                               ; preds = %33
  %56 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %12, align 8
  %57 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %9, align 8
  store %struct.TYPE_12__** %56, %struct.TYPE_12__*** %57, align 8
  %58 = load i64*, i64** %10, align 8
  store i64 1, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %40
  %60 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %61 = icmp eq %struct.TYPE_12__** %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @H2O_HEADERS_CMD_WHEN_FINAL, align 4
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  br label %81

65:                                               ; preds = %59
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = call i32 @h2o_configurator_get_one_of(i32* %66, %struct.TYPE_12__* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  switch i32 %69, label %79 [
    i32 0, label %70
    i32 1, label %73
    i32 2, label %76
  ]

70:                                               ; preds = %65
  %71 = load i32, i32* @H2O_HEADERS_CMD_WHEN_FINAL, align 4
  %72 = load i32*, i32** %11, align 8
  store i32 %71, i32* %72, align 4
  br label %80

73:                                               ; preds = %65
  %74 = load i32, i32* @H2O_HEADERS_CMD_WHEN_EARLY, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  br label %80

76:                                               ; preds = %65
  %77 = load i32, i32* @H2O_HEADERS_CMD_WHEN_ALL, align 4
  %78 = load i32*, i32** %11, align 8
  store i32 %77, i32* %78, align 4
  br label %80

79:                                               ; preds = %65
  store i32 -1, i32* %6, align 4
  br label %83

80:                                               ; preds = %76, %73, %70
  br label %81

81:                                               ; preds = %80, %62
  br label %82

82:                                               ; preds = %81, %20
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %79, %32
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i64 @h2o_configurator_parse_mapping(i32*, %struct.TYPE_12__*, i8*, i8*, %struct.TYPE_12__***, %struct.TYPE_12__***) #1

declare dso_local i32 @h2o_configurator_get_one_of(i32*, %struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
