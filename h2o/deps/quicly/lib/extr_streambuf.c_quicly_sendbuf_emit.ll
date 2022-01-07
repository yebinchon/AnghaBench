; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_streambuf.c_quicly_sendbuf_emit.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_streambuf.c_quicly_sendbuf_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i8*, i64, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicly_sendbuf_emit(i32* %0, %struct.TYPE_10__* %1, i64 %2, i8* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i64*, i64** %12, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %15, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %10, align 8
  store i64 0, i64* %14, align 8
  br label %27

27:                                               ; preds = %96, %6
  %28 = load i64, i64* %15, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br label %37

37:                                               ; preds = %30, %27
  %38 = phi i1 [ false, %27 ], [ %36, %30 ]
  br i1 %38, label %39, label %99

39:                                               ; preds = %37
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %44
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %17, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %39
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %54, %55
  store i64 %56, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %18, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i64, i64* %15, align 8
  store i64 %61, i64* %18, align 8
  store i32 1, i32* %19, align 4
  br label %62

62:                                               ; preds = %60, %51
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_9__*, i8*, i64, i64)*, i32 (%struct.TYPE_9__*, i8*, i64, i64)** %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %18, align 8
  %72 = call i32 %67(%struct.TYPE_9__* %68, i8* %69, i64 %70, i64 %71)
  store i32 %72, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %7, align 4
  br label %119

76:                                               ; preds = %62
  %77 = load i8*, i8** %11, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i64, i64* %18, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = bitcast i32* %80 to i8*
  store i8* %81, i8** %11, align 8
  %82 = load i64, i64* %18, align 8
  %83 = load i64, i64* %15, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %15, align 8
  store i64 0, i64* %10, align 8
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %99

88:                                               ; preds = %76
  br label %95

89:                                               ; preds = %39
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %89, %88
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %14, align 8
  br label %27

99:                                               ; preds = %87, %37
  %100 = load i64, i64* %15, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i64, i64* %14, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %103, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32*, i32** %13, align 8
  store i32 0, i32* %110, align 4
  br label %118

111:                                              ; preds = %102, %99
  %112 = load i64*, i64** %12, align 8
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %15, align 8
  %115 = sub i64 %113, %114
  %116 = load i64*, i64** %12, align 8
  store i64 %115, i64* %116, align 8
  %117 = load i32*, i32** %13, align 8
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %109
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %74
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
