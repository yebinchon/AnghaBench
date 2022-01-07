; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_visflow.c_RecursiveLeafBitFlow.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_visflow.c_RecursiveLeafBitFlow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i64, i64 }

@MAX_PORTALS = common dso_local global i32 0, align 4
@leafs = common dso_local global %struct.TYPE_6__* null, align 8
@portals = common dso_local global %struct.TYPE_5__* null, align 8
@portallongs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RecursiveLeafBitFlow(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* @MAX_PORTALS, align 4
  %16 = sdiv i32 %15, 8
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @leafs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %125, %3
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %128

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %33, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %7, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %125

43:                                               ; preds = %30
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @portals, align 8
  %46 = ptrtoint %struct.TYPE_5__* %44 to i64
  %47 = ptrtoint %struct.TYPE_5__* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 24
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %12, align 4
  %53 = ashr i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %57, 7
  %59 = shl i32 1, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %43
  br label %125

63:                                               ; preds = %43
  store i64 0, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %103, %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @portallongs, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = bitcast i32* %69 to i64*
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i64*
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = and i64 %74, %82
  %84 = bitcast i32* %19 to i64*
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %83, i64* %87, align 8
  %88 = bitcast i32* %19 to i64*
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = bitcast i32* %93 to i64*
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = xor i64 %98, -1
  %100 = and i64 %92, %99
  %101 = load i64, i64* %11, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %11, align 8
  br label %103

103:                                              ; preds = %68
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %64

106:                                              ; preds = %64
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  br label %125

110:                                              ; preds = %106
  %111 = load i32, i32* %12, align 4
  %112 = and i32 %111, 7
  %113 = shl i32 1, %112
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %12, align 4
  %116 = ashr i32 %115, 3
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %113
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %6, align 8
  call void @RecursiveLeafBitFlow(i32 %123, i32* %19, i32* %124)
  br label %125

125:                                              ; preds = %110, %109, %62, %42
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %24

128:                                              ; preds = %24
  %129 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %129)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
