; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_cpp.c_process.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_cpp.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@outbuf = common dso_local global i32 0, align 4
@outbufp = common dso_local global i32 0, align 4
@END = common dso_local global i64 0, align 8
@incdepth = common dso_local global i64 0, align 8
@cursource = common dso_local global %struct.TYPE_12__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unterminated conditional in #include\00", align 1
@ifdepth = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Unterminated #if/#ifdef/#ifndef\00", align 1
@SHARP = common dso_local global i64 0, align 8
@skipping = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %119, %50, %1
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = icmp uge %struct.TYPE_10__* %7, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %19, align 8
  %20 = load i32, i32* @outbuf, align 4
  store i32 %20, i32* @outbufp, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = call i32 @gettokens(%struct.TYPE_11__* %21, i32 1)
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %29, align 8
  br label %30

30:                                               ; preds = %12, %4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @END, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %30
  %39 = load i64, i64* @incdepth, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* @incdepth, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cursource, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @ERROR, align 4
  %49 = call i32 @error(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = call i32 (...) @unsetsource()
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cursource, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cursource, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %63, align 8
  %64 = call i32 (...) @genline()
  br label %4

65:                                               ; preds = %38
  %66 = load i64, i64* @ifdepth, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @ERROR, align 4
  %70 = call i32 @error(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %65
  br label %120

72:                                               ; preds = %30
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SHARP, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 1
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %82, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %86 = call i32 @control(%struct.TYPE_11__* %85)
  br label %97

87:                                               ; preds = %72
  %88 = load i64, i64* @skipping, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = call i32 @expandrow(%struct.TYPE_11__* %94, i32* null)
  br label %96

96:                                               ; preds = %93, %90, %87
  br label %97

97:                                               ; preds = %96, %80
  %98 = load i64, i64* @skipping, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %102 = call i32 @setempty(%struct.TYPE_11__* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %105 = call i32 @puttokens(%struct.TYPE_11__* %104)
  store i32 0, i32* %3, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cursource, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cursource, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cursource, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %103
  %118 = call i32 (...) @genline()
  br label %119

119:                                              ; preds = %117, %103
  br label %4

120:                                              ; preds = %71
  ret void
}

declare dso_local i32 @gettokens(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @unsetsource(...) #1

declare dso_local i32 @genline(...) #1

declare dso_local i32 @control(%struct.TYPE_11__*) #1

declare dso_local i32 @expandrow(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @setempty(%struct.TYPE_11__*) #1

declare dso_local i32 @puttokens(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
