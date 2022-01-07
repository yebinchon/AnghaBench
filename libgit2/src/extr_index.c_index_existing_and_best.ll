; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_index_existing_and_best.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_index_existing_and_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i8* }

@GIT_INDEX_STAGE_ANCESTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__**, i64*, %struct.TYPE_11__**, %struct.TYPE_12__*, %struct.TYPE_11__*)* @index_existing_and_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @index_existing_and_best(%struct.TYPE_11__** %0, i64* %1, %struct.TYPE_11__** %2, %struct.TYPE_12__* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (i8*, i8*)*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %20 = call i64 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_11__* %19)
  %21 = call i32 @index_find(i64* %12, %struct.TYPE_12__* %15, i8* %18, i32 0, i64 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %5
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %28, i64 %29
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %32, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %38, i64 %39
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %42, align 8
  br label %97

43:                                               ; preds = %5
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %44, align 8
  %45 = load i64*, i64** %7, align 8
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = call i64 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_11__* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %93, %50
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %51
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 (i8*, i8*)* @git__strcasecmp, i32 (i8*, i8*)* @git__strcmp
  store i32 (i8*, i8*)* %64, i32 (i8*, i8*)** %14, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %68, i64 %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %11, align 8
  %72 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %14, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 %72(i8* %75, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %58
  br label %96

82:                                               ; preds = %58
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %84 = call i64 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_11__* %83)
  %85 = load i64, i64* @GIT_INDEX_STAGE_ANCESTOR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %89, align 8
  br label %93

90:                                               ; preds = %82
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %92 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %92, align 8
  br label %96

93:                                               ; preds = %87
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %12, align 8
  br label %51

96:                                               ; preds = %90, %81, %51
  br label %97

97:                                               ; preds = %24, %96, %43
  ret void
}

declare dso_local i32 @index_find(i64*, %struct.TYPE_12__*, i8*, i32, i64) #1

declare dso_local i64 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_11__*) #1

declare dso_local i32 @git__strcasecmp(i8*, i8*) #1

declare dso_local i32 @git__strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
