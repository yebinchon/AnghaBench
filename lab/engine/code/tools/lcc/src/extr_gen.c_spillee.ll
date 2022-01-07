; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_spillee.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_spillee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, i64, %struct.TYPE_14__** }
%struct.TYPE_15__ = type { i32, i64, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }

@tmask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_14__*, i32*, %struct.TYPE_16__*)* @spillee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @spillee(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32 -1, i32* %8, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = call i32 @assert(%struct.TYPE_14__* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %18, align 8
  %20 = icmp ne %struct.TYPE_14__** %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %7, align 8
  br label %113

23:                                               ; preds = %3
  store i32 31, i32* %9, align 4
  br label %24

24:                                               ; preds = %109, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %112

27:                                               ; preds = %24
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %31, i64 %33
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %10, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %108

38:                                               ; preds = %27
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %108

44:                                               ; preds = %38
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** @tmask, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %51, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %50, %59
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %61, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %60, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %44
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %11, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %92, %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %80 = icmp ne %struct.TYPE_16__* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %84 = call i32 @uses(%struct.TYPE_16__* %82, %struct.TYPE_15__* %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %81, %78
  %88 = phi i1 [ false, %78 ], [ %86, %81 ]
  br i1 %88, label %89, label %97

89:                                               ; preds = %87
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %89
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  store %struct.TYPE_16__* %96, %struct.TYPE_16__** %12, align 8
  br label %78

97:                                               ; preds = %87
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %99 = icmp ne %struct.TYPE_16__* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %8, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %7, align 8
  br label %107

107:                                              ; preds = %104, %100, %97
  br label %108

108:                                              ; preds = %107, %44, %38, %27
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %9, align 4
  br label %24

112:                                              ; preds = %24
  br label %113

113:                                              ; preds = %112, %21
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = call i32 @assert(%struct.TYPE_14__* %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  %123 = zext i1 %122 to i32
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to %struct.TYPE_14__*
  %126 = call i32 @assert(%struct.TYPE_14__* %125)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  ret %struct.TYPE_14__* %127
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @uses(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
