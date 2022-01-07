; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_prepare_pack.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_prepare_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_10__*, i32, i32 (i32, i32, i64, i32)* }
%struct.TYPE_10__ = type { i32 }

@GIT_PACKBUILDER_DELTAFICATION = common dso_local global i32 0, align 4
@type_size_sort = common dso_local global i32 0, align 4
@GIT_PACK_WINDOW = common dso_local global i64 0, align 8
@GIT_PACK_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @prepare_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_pack(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %107

18:                                               ; preds = %12
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  %21 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** %20, align 8
  %22 = icmp ne i32 (i32, i32, i64, i32)* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 5
  %26 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** %25, align 8
  %27 = load i32, i32* @GIT_PACKBUILDER_DELTAFICATION, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %26(i32 %27, i32 0, i64 %30, i32 %33)
  br label %35

35:                                               ; preds = %23, %18
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.TYPE_10__** @git__mallocarray(i64 %38, i32 8)
  store %struct.TYPE_10__** %39, %struct.TYPE_10__*** %4, align 8
  %40 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %41 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_10__** %40)
  store i64 0, i64* %5, align 8
  br label %42

42:                                               ; preds = %73, %35
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %52
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %7, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 50
  br i1 %57, label %66, label %58

58:                                               ; preds = %48
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %48
  br label %73

67:                                               ; preds = %58
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %69, i64 %70
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %72, align 8
  br label %73

73:                                               ; preds = %67, %66
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %5, align 8
  br label %42

76:                                               ; preds = %42
  %77 = load i64, i64* %6, align 8
  %78 = icmp ugt i64 %77, 1
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %81 = bitcast %struct.TYPE_10__** %80 to i8**
  %82 = load i64, i64* %6, align 8
  %83 = load i32, i32* @type_size_sort, align 4
  %84 = call i32 @git__tsort(i8** %81, i64 %82, i32 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @GIT_PACK_WINDOW, align 8
  %89 = add nsw i64 %88, 1
  %90 = load i32, i32* @GIT_PACK_DEPTH, align 4
  %91 = call i64 @ll_find_deltas(%struct.TYPE_11__* %85, %struct.TYPE_10__** %86, i64 %87, i64 %89, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %95 = call i32 @git__free(%struct.TYPE_10__** %94)
  store i32 -1, i32* %2, align 4
  br label %107

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96, %76
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @report_delta_progress(%struct.TYPE_11__* %98, i64 %101, i32 1)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  store i32 1, i32* %104, align 8
  %105 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %106 = call i32 @git__free(%struct.TYPE_10__** %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %97, %93, %17
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_10__** @git__mallocarray(i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_10__**) #1

declare dso_local i32 @git__tsort(i8**, i64, i32) #1

declare dso_local i64 @ll_find_deltas(%struct.TYPE_11__*, %struct.TYPE_10__**, i64, i64, i32) #1

declare dso_local i32 @git__free(%struct.TYPE_10__**) #1

declare dso_local i32 @report_delta_progress(%struct.TYPE_11__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
