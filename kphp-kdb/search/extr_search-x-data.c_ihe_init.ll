; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_ihe_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_ihe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32*, i32, %struct.TYPE_13__**, i32, i32, i32, %struct.TYPE_12__, %struct.item*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.item = type { i32 }

@Root = common dso_local global %struct.TYPE_13__* null, align 8
@IndexItems = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @ihe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ihe_init(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = call i32 @memset(%struct.TYPE_11__* %8, i32 0, i32 64)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Root, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %16, i64 0
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 -1, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 6
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @init_ilist_decoder(%struct.TYPE_12__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 6
  %30 = call i64 @adv_ilist(%struct.TYPE_12__* %29)
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i64, i64* @IndexItems, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %33, %37
  %39 = inttoptr i64 %38 to %struct.item*
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 7
  store %struct.item* %39, %struct.item** %41, align 8
  br label %42

42:                                               ; preds = %32, %27
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Root, align 8
  %45 = icmp ne %struct.TYPE_13__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %82

47:                                               ; preds = %43
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = call i32 @ihe_dive(%struct.TYPE_11__* %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %47
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %55
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %74, i64 %76
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = call i32 @ihe_sgn(%struct.TYPE_13__* %78, %struct.TYPE_11__* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %64, %55, %47
  br label %82

82:                                               ; preds = %81, %46
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  store i32 -1, i32* %87, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 5
  store i32 0, i32* %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = call i32 @ihe_load(%struct.TYPE_11__* %90)
  store i32 %91, i32* %3, align 4
  br label %131

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %98, i64 %100
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %109, i64 %111
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %120, i64 %122
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = call i32 @ihe_load(%struct.TYPE_11__* %129)
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %92, %85
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @init_ilist_decoder(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @adv_ilist(%struct.TYPE_12__*) #1

declare dso_local i32 @ihe_dive(%struct.TYPE_11__*) #1

declare dso_local i32 @ihe_sgn(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ihe_load(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
