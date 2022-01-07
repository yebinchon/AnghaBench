; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_client_setup_esni.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_client_setup_esni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 (i32, i32)* }
%struct.TYPE_21__ = type { %struct.TYPE_19__, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_23__*, i32, %struct.TYPE_24__*, i32 }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, i32*, i32*, i64)*, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }

@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__**, i64, i8**, i32*)* @client_setup_esni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_setup_esni(%struct.TYPE_22__* %0, %struct.TYPE_21__** %1, i64 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_20__, align 4
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_20__* %7 to i64*
  store i64 %2, i64* %14, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_21__** %1, %struct.TYPE_21__*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = call %struct.TYPE_21__* @malloc(i32 56)
  %16 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %16, align 8
  %17 = icmp eq %struct.TYPE_21__* %15, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %19, i32* %6, align 4
  br label %145

20:                                               ; preds = %5
  %21 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %23 = call i32 @memset(%struct.TYPE_21__* %22, i32 0, i32 56)
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %25 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 4
  %40 = load i8**, i8*** %10, align 8
  %41 = bitcast %struct.TYPE_20__* %7 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = call i64 @parse_esni_keys(%struct.TYPE_22__* %24, i32* %27, %struct.TYPE_23__** %31, %struct.TYPE_24__** %35, %struct.TYPE_20__* %12, i32* %39, i8** %40, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %20
  %46 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = call i32 @free(%struct.TYPE_21__* %47)
  %49 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %49, align 8
  store i32 0, i32* %6, align 4
  br label %145

50:                                               ; preds = %20
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %53(i32 %57, i32 4)
  %59 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ptls_calc_hash(i32 %65, i32 %70, i32 %72, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %50
  br label %137

78:                                               ; preds = %50
  %79 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_23__*, i32*, i32*, i64)*, i32 (%struct.TYPE_23__*, i32*, i32*, i64)** %84, align 8
  %86 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = bitcast %struct.TYPE_20__* %12 to i64*
  %99 = load i64, i64* %98, align 4
  %100 = call i32 %85(%struct.TYPE_23__* %90, i32* %94, i32* %97, i64 %99)
  store i32 %100, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %78
  br label %137

103:                                              ; preds = %78
  %104 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 @build_esni_contents_hash(i32 %110, i32 %114, i32 %119, i32 %126, i32 %131, i32* %132)
  store i32 %133, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %103
  br label %137

136:                                              ; preds = %103
  store i32 0, i32* %13, align 4
  br label %137

137:                                              ; preds = %136, %135, %102, %77
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %142 = call i32 @free_esni_secret(%struct.TYPE_21__** %141, i32 0)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %45, %18
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_21__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @parse_esni_keys(%struct.TYPE_22__*, i32*, %struct.TYPE_23__**, %struct.TYPE_24__**, %struct.TYPE_20__*, i32*, i8**, i64) #1

declare dso_local i32 @free(%struct.TYPE_21__*) #1

declare dso_local i32 @ptls_calc_hash(i32, i32, i32, i32) #1

declare dso_local i32 @build_esni_contents_hash(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @free_esni_secret(%struct.TYPE_21__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
