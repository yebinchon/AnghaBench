; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_get_suggestions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_get_suggestions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@MAX_CNT = common dso_local global i32 0, align 4
@NOAIO = common dso_local global i32 0, align 4
@heap_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_suggestions(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.TYPE_12__* @conv_uid(i32 %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @local_uid(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MAX_CNT, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @MAX_CNT, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = icmp eq %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 0, i32* %28, align 4
  store i32 0, i32* %5, align 4
  br label %116

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %30, 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 4, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @NOAIO, align 4
  %39 = call i32 @load_user_metafile(%struct.TYPE_12__* %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = call i32 @user_loaded(%struct.TYPE_12__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i32 -2, i32* %5, align 4
  br label %116

44:                                               ; preds = %35
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = call i32 @del_user_used(%struct.TYPE_12__* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = call i32 @add_user_used(%struct.TYPE_12__* %47)
  %49 = call i32 (...) @heap_init()
  store i32 0, i32* %12, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @heap_add(i32 %53)
  br label %55

55:                                               ; preds = %103, %44
  %56 = load i64, i64* @heap_size, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i1 [ false, %55 ], [ %60, %58 ]
  br i1 %62, label %63, label %112

63:                                               ; preds = %61
  %64 = call %struct.TYPE_13__* (...) @heap_get()
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %13, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 16
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %112

72:                                               ; preds = %63
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @user_has_exception(%struct.TYPE_12__* %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %103, label %79

79:                                               ; preds = %72
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %12, align 4
  %85 = mul nsw i32 %84, 2
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 16
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %12, align 4
  %95 = mul nsw i32 %94, 2
  %96 = add nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %79, %72
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @heap_add(i32 %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @heap_add(i32 %110)
  br label %55

112:                                              ; preds = %71, %61
  %113 = load i32, i32* %12, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 %113, i32* %115, align 4
  store i32 1, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %43, %26
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_12__* @conv_uid(i32) #1

declare dso_local i32 @local_uid(i32) #1

declare dso_local i32 @load_user_metafile(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_12__*) #1

declare dso_local i32 @del_user_used(%struct.TYPE_12__*) #1

declare dso_local i32 @add_user_used(%struct.TYPE_12__*) #1

declare dso_local i32 @heap_init(...) #1

declare dso_local i32 @heap_add(i32) #1

declare dso_local %struct.TYPE_13__* @heap_get(...) #1

declare dso_local i32 @user_has_exception(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
