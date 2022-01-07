; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_huffman.c_increment.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_huffman.c_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_11__**, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*)* @increment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @increment(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %7 = icmp ne %struct.TYPE_11__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %148

9:                                                ; preds = %2
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %9
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %14
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %5, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = icmp ne %struct.TYPE_11__* %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = call i32 @swap(i32* %35, %struct.TYPE_11__* %36, %struct.TYPE_11__* %37)
  br label %39

39:                                               ; preds = %34, %24
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = call i32 @swaplist(%struct.TYPE_11__* %40, %struct.TYPE_11__* %41)
  br label %43

43:                                               ; preds = %39, %14, %9
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %63, align 8
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %64, align 8
  br label %74

65:                                               ; preds = %48, %43
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %67, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %68, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %71, align 8
  %73 = call i32 @free_ppnode(i32* %69, %struct.TYPE_11__** %72)
  br label %74

74:                                               ; preds = %65, %58
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = icmp ne %struct.TYPE_10__* %81, null
  br i1 %82, label %83, label %101

83:                                               ; preds = %74
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %97, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  store %struct.TYPE_11__** %98, %struct.TYPE_11__*** %100, align 8
  br label %110

101:                                              ; preds = %83, %74
  %102 = load i32*, i32** %3, align 8
  %103 = call %struct.TYPE_11__** @get_ppnode(i32* %102)
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  store %struct.TYPE_11__** %103, %struct.TYPE_11__*** %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %108, align 8
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %109, align 8
  br label %110

110:                                              ; preds = %101, %93
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = icmp ne %struct.TYPE_11__* %113, null
  br i1 %114, label %115, label %148

115:                                              ; preds = %110
  %116 = load i32*, i32** %3, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  call void @increment(i32* %116, %struct.TYPE_11__* %119)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = icmp eq %struct.TYPE_11__* %122, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %115
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = call i32 @swaplist(%struct.TYPE_11__* %128, %struct.TYPE_11__* %131)
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %134, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = icmp eq %struct.TYPE_11__* %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %127
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %144, align 8
  store %struct.TYPE_11__* %142, %struct.TYPE_11__** %145, align 8
  br label %146

146:                                              ; preds = %139, %127
  br label %147

147:                                              ; preds = %146, %115
  br label %148

148:                                              ; preds = %8, %147, %110
  ret void
}

declare dso_local i32 @swap(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @swaplist(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @free_ppnode(i32*, %struct.TYPE_11__**) #1

declare dso_local %struct.TYPE_11__** @get_ppnode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
