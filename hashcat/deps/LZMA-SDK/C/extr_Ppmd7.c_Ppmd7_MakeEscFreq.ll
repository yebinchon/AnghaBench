; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Ppmd7.c_Ppmd7_MakeEscFreq.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Ppmd7.c_Ppmd7_MakeEscFreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_10__*, i64*, %struct.TYPE_7__** }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @Ppmd7_MakeEscFreq(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 256
  br i1 %22, label %23, label %105

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %26, i64 %36
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = call %struct.TYPE_9__* @SUFFIX(%struct.TYPE_10__* %42)
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %46, %51
  %53 = icmp ult i32 %39, %52
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul i32 11, %66
  %68 = icmp ult i32 %61, %67
  %69 = zext i1 %68 to i32
  %70 = mul i32 2, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %71
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ugt i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = mul i32 4, %76
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %83
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %7, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = lshr i32 %87, %90
  store i32 %91, i32* %9, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sub i32 %94, %95
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = add i32 %99, %102
  %104 = load i32*, i32** %6, align 8
  store i32 %103, i32* %104, align 4
  br label %109

105:                                              ; preds = %3
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %7, align 8
  %108 = load i32*, i32** %6, align 8
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %23
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %110
}

declare dso_local %struct.TYPE_9__* @SUFFIX(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
