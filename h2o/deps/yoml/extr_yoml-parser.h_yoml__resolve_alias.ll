; ModuleID = '/home/carl/AnghaBench/h2o/deps/yoml/extr_yoml-parser.h_yoml__resolve_alias.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yoml/extr_yoml-parser.h_yoml__resolve_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_23__ = type { i8*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"could not resolve the alias\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__**, %struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_22__*)* @yoml__resolve_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yoml__resolve_alias(%struct.TYPE_21__** %0, %struct.TYPE_21__* %1, %struct.TYPE_23__* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__**, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  %12 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %140 [
    i32 130, label %16
    i32 129, label %17
    i32 131, label %49
    i32 128, label %96
  ]

16:                                               ; preds = %4
  br label %140

17:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %19, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %18
  %28 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %34, %35
  %37 = inttoptr i64 %36 to %struct.TYPE_21__**
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %41 = call i32 @yoml__resolve_alias(%struct.TYPE_21__** %37, %struct.TYPE_21__* %38, %struct.TYPE_23__* %39, %struct.TYPE_22__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %141

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %18

48:                                               ; preds = %18
  br label %140

49:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %92, %49
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %51, %57
  br i1 %58, label %59, label %95

59:                                               ; preds = %50
  %60 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %72 = call i32 @yoml__resolve_alias(%struct.TYPE_21__** %68, %struct.TYPE_21__* %69, %struct.TYPE_23__* %70, %struct.TYPE_22__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %141

75:                                               ; preds = %59
  %76 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %88 = call i32 @yoml__resolve_alias(%struct.TYPE_21__** %84, %struct.TYPE_21__* %85, %struct.TYPE_23__* %86, %struct.TYPE_22__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %75
  store i32 -1, i32* %5, align 4
  br label %141

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %10, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %10, align 8
  br label %50

95:                                               ; preds = %50
  br label %140

96:                                               ; preds = %4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %98 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.TYPE_21__* @yoml_find_anchor(%struct.TYPE_21__* %97, i32 %102)
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %11, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %105 = icmp eq %struct.TYPE_21__* %104, null
  br i1 %105, label %106, label %127

106:                                              ; preds = %96
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %108 = icmp ne %struct.TYPE_23__* %107, null
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %111, align 8
  %112 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  br label %126

126:                                              ; preds = %109, %106
  store i32 -1, i32* %5, align 4
  br label %141

127:                                              ; preds = %96
  %128 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @yoml_free(%struct.TYPE_21__* %129, i32 %132)
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %135 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  store %struct.TYPE_21__* %134, %struct.TYPE_21__** %135, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %4, %127, %95, %48, %16
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %126, %90, %74, %43
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.TYPE_21__* @yoml_find_anchor(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @yoml_free(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
