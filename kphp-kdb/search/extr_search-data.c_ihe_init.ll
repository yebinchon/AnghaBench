; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_ihe_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_ihe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32, i32, %struct.TYPE_18__**, %struct.TYPE_17__, i32, i32*, i32*, i32 }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@Root = common dso_local global %struct.TYPE_18__* null, align 8
@ihe_skip_advance1_slow = common dso_local global i32 0, align 4
@le_interpolative_ext = common dso_local global i64 0, align 8
@ihe_skip_advance1_fast = common dso_local global i32 0, align 4
@IndexItems = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32, i32)* @ihe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ihe_init(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = call i32 @memset(%struct.TYPE_16__* %12, i32 0, i32 88)
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** @Root, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %26, i64 0
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 -1, i32* %31, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 9
  store i32* @ihe_skip_advance1_slow, i32** %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 6
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @init_ilist_decoder(%struct.TYPE_17__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @le_interpolative_ext, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 9
  store i32* @ihe_skip_advance1_fast, i32** %51, align 8
  br label %52

52:                                               ; preds = %49, %39
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 6
  %55 = call i64 @adv_ilist(%struct.TYPE_17__* %54)
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load i64, i64* @IndexItems, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  %64 = inttoptr i64 %63 to i32*
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 8
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %57, %52
  br label %74

74:                                               ; preds = %73, %4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** @Root, align 8
  %76 = icmp ne %struct.TYPE_18__* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 1, i32* %10, align 4
  br label %113

78:                                               ; preds = %74
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = call i32 @ihe_dive(%struct.TYPE_16__* %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %78
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %86
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %105, i64 %107
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = call i32 @ihe_sgn(%struct.TYPE_18__* %109, %struct.TYPE_16__* %110)
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %95, %86, %78
  br label %113

113:                                              ; preds = %112, %77
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 3
  store i32 -1, i32* %118, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 4
  store i32 0, i32* %120, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = call i32 @ihe_load(%struct.TYPE_16__* %121)
  store i32 %122, i32* %5, align 4
  br label %149

123:                                              ; preds = %113
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %129, i64 %131
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @ITEM_DELETED(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %123
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %145 = call i32 @ihe_advance0(%struct.TYPE_16__* %144)
  br label %146

146:                                              ; preds = %143, %123
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = call i32 @ihe_load(%struct.TYPE_16__* %147)
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %146, %116
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @init_ilist_decoder(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @adv_ilist(%struct.TYPE_17__*) #1

declare dso_local i32 @ihe_dive(%struct.TYPE_16__*) #1

declare dso_local i32 @ihe_sgn(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ihe_load(%struct.TYPE_16__*) #1

declare dso_local i64 @ITEM_DELETED(i32) #1

declare dso_local i32 @ihe_advance0(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
