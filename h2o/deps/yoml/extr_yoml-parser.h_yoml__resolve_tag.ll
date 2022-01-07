; ModuleID = '/home/carl/AnghaBench/h2o/deps/yoml/extr_yoml-parser.h_yoml__resolve_tag.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yoml/extr_yoml-parser.h_yoml__resolve_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__, i32, i32, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_24__ = type { i8*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_22__* (i32*, %struct.TYPE_22__*, i32)* }

@.str = private unnamed_addr constant [22 x i8] c"tag resolution failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__**, %struct.TYPE_24__*, %struct.TYPE_23__*)* @yoml__resolve_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yoml__resolve_tag(%struct.TYPE_22__** %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__**, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_22__** %0, %struct.TYPE_22__*** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_22__* (i32*, %struct.TYPE_22__*, i32)*, %struct.TYPE_22__* (i32*, %struct.TYPE_22__*, i32)** %12, align 8
  %14 = icmp eq %struct.TYPE_22__* (i32*, %struct.TYPE_22__*, i32)* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %154

16:                                               ; preds = %3
  %17 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %70

22:                                               ; preds = %16
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_22__* (i32*, %struct.TYPE_22__*, i32)*, %struct.TYPE_22__* (i32*, %struct.TYPE_22__*, i32)** %25, align 8
  %27 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_22__* %26(i32* %30, %struct.TYPE_22__* %32, i32 %36)
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %9, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %39 = icmp eq %struct.TYPE_22__* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %22
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %42 = icmp ne %struct.TYPE_24__* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %45, align 8
  %46 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  br label %60

60:                                               ; preds = %43, %40
  store i32 -1, i32* %4, align 4
  br label %154

61:                                               ; preds = %22
  %62 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %62, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @yoml_free(%struct.TYPE_22__* %63, i32 %66)
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %69 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  store %struct.TYPE_22__* %68, %struct.TYPE_22__** %69, align 8
  br label %70

70:                                               ; preds = %61, %16
  %71 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %153 [
    i32 130, label %75
    i32 129, label %76
    i32 131, label %107
    i32 128, label %152
  ]

75:                                               ; preds = %70
  br label %153

76:                                               ; preds = %70
  store i64 0, i64* %8, align 8
  br label %77

77:                                               ; preds = %103, %76
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %78, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %77
  %87 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %93, %94
  %96 = inttoptr i64 %95 to %struct.TYPE_22__**
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %99 = call i32 @yoml__resolve_tag(%struct.TYPE_22__** %96, %struct.TYPE_24__* %97, %struct.TYPE_23__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  store i32 -1, i32* %4, align 4
  br label %154

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %8, align 8
  br label %77

106:                                              ; preds = %77
  br label %153

107:                                              ; preds = %70
  store i64 0, i64* %8, align 8
  br label %108

108:                                              ; preds = %148, %107
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %109, %115
  br i1 %116, label %117, label %151

117:                                              ; preds = %108
  %118 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %129 = call i32 @yoml__resolve_tag(%struct.TYPE_22__** %126, %struct.TYPE_24__* %127, %struct.TYPE_23__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %117
  store i32 -1, i32* %4, align 4
  br label %154

132:                                              ; preds = %117
  %133 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %5, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %137, align 8
  %139 = load i64, i64* %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %144 = call i32 @yoml__resolve_tag(%struct.TYPE_22__** %141, %struct.TYPE_24__* %142, %struct.TYPE_23__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %132
  store i32 -1, i32* %4, align 4
  br label %154

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %8, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %8, align 8
  br label %108

151:                                              ; preds = %108
  br label %153

152:                                              ; preds = %70
  br label %153

153:                                              ; preds = %70, %152, %151, %106, %75
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %146, %131, %101, %60, %15
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @yoml_free(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
