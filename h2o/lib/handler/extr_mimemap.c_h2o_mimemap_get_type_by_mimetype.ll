; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mimemap.c_h2o_mimemap_get_type_by_mimetype.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mimemap.c_h2o_mimemap_get_type_by_mimetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i8* }
%struct.TYPE_12__ = type { i32 }

@H2O_MIMEMAP_TYPE_MIMETYPE = common dso_local global i32 0, align 4
@typeset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @h2o_mimemap_get_type_by_mimetype(%struct.TYPE_12__* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = bitcast %struct.TYPE_13__* %6 to { i64, i8* }*
  %13 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %12, i32 0, i32 0
  store i64 %1, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %12, i32 0, i32 1
  store i8* %2, i8** %14, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* @H2O_MIMEMAP_TYPE_MIMETYPE, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = bitcast %struct.TYPE_13__* %23 to i8*
  %25 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = load i32, i32* @typeset, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kh_get(i32 %26, i32 %29, %struct.TYPE_11__* %9)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kh_end(i32 %33)
  %35 = icmp ne i32 %30, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.TYPE_11__* @kh_key(i32 %39, i32 %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %5, align 8
  br label %96

42:                                               ; preds = %4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %73, label %45

45:                                               ; preds = %42
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 59
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 32
  br i1 %66, label %67, label %68

67:                                               ; preds = %59, %51
  br label %74

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %11, align 8
  br label %46

72:                                               ; preds = %46
  br label %73

73:                                               ; preds = %72, %42
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %96

74:                                               ; preds = %67
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load i32, i32* @typeset, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @kh_get(i32 %79, i32 %82, %struct.TYPE_11__* %9)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @kh_end(i32 %86)
  %88 = icmp ne i32 %83, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %74
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call %struct.TYPE_11__* @kh_key(i32 %92, i32 %93)
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %5, align 8
  br label %96

95:                                               ; preds = %74
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %96

96:                                               ; preds = %95, %89, %73, %36
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @kh_get(i32, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @kh_end(i32) #2

declare dso_local %struct.TYPE_11__* @kh_key(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
