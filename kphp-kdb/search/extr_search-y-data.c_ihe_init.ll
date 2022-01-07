; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ihe_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ihe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32, %struct.TYPE_14__**, i32, %struct.TYPE_13__, i32*, i32 }
%struct.TYPE_13__ = type { i64 }

@Root = common dso_local global %struct.TYPE_14__* null, align 8
@IndexItems = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @ihe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ihe_init(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = call i32 @memset(%struct.TYPE_12__* %10, i32 0, i32 56)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Root, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %18, i64 0
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 -1, i32* %23, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @init_ilist_decoder(%struct.TYPE_12__* %24, %struct.TYPE_13__* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 4
  %33 = call i64 @adv_ilist(%struct.TYPE_13__* %32)
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i64, i64* @IndexItems, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  %42 = inttoptr i64 %41 to i32*
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %35, %30
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** @Root, align 8
  %48 = icmp ne %struct.TYPE_14__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %85

50:                                               ; preds = %46
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = call i32 @ihe_dive(%struct.TYPE_12__* %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %50
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %58
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %77, i64 %79
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = call i32 @ihe_sgn(%struct.TYPE_14__* %81, %struct.TYPE_12__* %82)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %67, %58, %50
  br label %85

85:                                               ; preds = %84, %49
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i32 -1, i32* %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  store i32 0, i32* %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = call i32 @ihe_load(%struct.TYPE_12__* %93)
  store i32 %94, i32* %2, align 4
  br label %112

95:                                               ; preds = %85
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %101, i64 %103
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = call i32 @ihe_load(%struct.TYPE_12__* %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %95, %88
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @init_ilist_decoder(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @adv_ilist(%struct.TYPE_13__*) #1

declare dso_local i32 @ihe_dive(%struct.TYPE_12__*) #1

declare dso_local i32 @ihe_sgn(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ihe_load(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
