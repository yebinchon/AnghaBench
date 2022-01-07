; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_object_set_value.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_object_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__**, i32* }
%struct.TYPE_12__ = type { i32* }

@JSONFailure = common dso_local global i32 0, align 4
@JSONSuccess = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_value(%struct.TYPE_13__* %0, i8* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = icmp eq %struct.TYPE_13__* %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %15, %12, %3
  %24 = load i32, i32* @JSONFailure, align 4
  store i32 %24, i32* %4, align 4
  br label %71

25:                                               ; preds = %18
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call %struct.TYPE_12__* @json_object_get_value(%struct.TYPE_13__* %26, i8* %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %9, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = icmp ne %struct.TYPE_12__* %29, null
  br i1 %30, label %31, label %66

31:                                               ; preds = %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = call i32 @json_value_free(%struct.TYPE_12__* %32)
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %62, %31
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = call i64 @json_object_get_count(%struct.TYPE_13__* %36)
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strcmp(i32 %45, i8* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = call i32* @json_object_get_wrapping_value(%struct.TYPE_13__* %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %57, i64 %58
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %59, align 8
  %60 = load i32, i32* @JSONSuccess, align 4
  store i32 %60, i32* %4, align 4
  br label %71

61:                                               ; preds = %39
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %8, align 8
  br label %34

65:                                               ; preds = %34
  br label %66

66:                                               ; preds = %65, %25
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = call i32 @json_object_add(%struct.TYPE_13__* %67, i8* %68, %struct.TYPE_12__* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %49, %23
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_12__* @json_object_get_value(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @json_value_free(%struct.TYPE_12__*) #1

declare dso_local i64 @json_object_get_count(%struct.TYPE_13__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @json_object_get_wrapping_value(%struct.TYPE_13__*) #1

declare dso_local i32 @json_object_add(%struct.TYPE_13__*, i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
