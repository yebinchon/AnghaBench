; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hashes.c_hash_encode.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hashes.c_hash_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i8*, i32**, i8*, i8*, i8*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, i8*, %struct.TYPE_12__*, i8*, i8*, i32*, i8*, i32)* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_encode(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2, i8* %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32**, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_15__*, i8*, %struct.TYPE_12__*, i8*, i8*, i32*, i8*, i32)*, i32 (%struct.TYPE_15__*, i8*, %struct.TYPE_12__*, i8*, i8*, i32*, i8*, i32)** %28, align 8
  %30 = icmp eq i32 (%struct.TYPE_15__*, i8*, %struct.TYPE_12__*, i8*, i8*, i32*, i8*, i32)* %29, @MODULE_DEFAULT
  br i1 %30, label %31, label %38

31:                                               ; preds = %7
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %36)
  store i32 %37, i32* %8, align 4
  br label %107

38:                                               ; preds = %7
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %16, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %42
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %16, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %15, align 8
  %49 = add i64 %47, %48
  store i64 %49, i64* %17, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %18, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %19, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %20, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32**, i32*** %60, align 8
  store i32** %61, i32*** %21, align 8
  %62 = load i8*, i8** %18, align 8
  store i8* %62, i8** %22, align 8
  %63 = load i8*, i8** %19, align 8
  store i8* %63, i8** %23, align 8
  %64 = load i8*, i8** %20, align 8
  store i8* %64, i8** %24, align 8
  store i32* null, i32** %25, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = mul i64 %65, %68
  %70 = load i8*, i8** %22, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %22, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = mul i64 %72, %75
  %77 = load i8*, i8** %23, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %23, align 8
  %79 = load i64, i64* %17, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = mul i64 %79, %82
  %84 = load i8*, i8** %24, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8* %85, i8** %24, align 8
  %86 = load i32**, i32*** %21, align 8
  %87 = icmp ne i32** %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %38
  %89 = load i32**, i32*** %21, align 8
  %90 = load i64, i64* %17, align 8
  %91 = getelementptr inbounds i32*, i32** %89, i64 %90
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %25, align 8
  br label %93

93:                                               ; preds = %88, %38
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_15__*, i8*, %struct.TYPE_12__*, i8*, i8*, i32*, i8*, i32)*, i32 (%struct.TYPE_15__*, i8*, %struct.TYPE_12__*, i8*, i8*, i32*, i8*, i32)** %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %98 = load i8*, i8** %22, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %100 = load i8*, i8** %23, align 8
  %101 = load i8*, i8** %24, align 8
  %102 = load i32*, i32** %25, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 %96(%struct.TYPE_15__* %97, i8* %98, %struct.TYPE_12__* %99, i8* %100, i8* %101, i32* %102, i8* %103, i32 %104)
  store i32 %105, i32* %26, align 4
  %106 = load i32, i32* %26, align 4
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %93, %31
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local i32 @MODULE_DEFAULT(%struct.TYPE_15__*, i8*, %struct.TYPE_12__*, i8*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
