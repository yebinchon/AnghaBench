; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_pm_ase.c__ase_submit_triangles.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_pm_ase.c__ase_submit_triangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64*, i64, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@white = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32)* @_ase_submit_triangles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ase_submit_triangles(i32* %0, i32* %1, %struct.TYPE_12__* %2, %struct.TYPE_13__* %3, %struct.TYPE_16__* %4, %struct.TYPE_15__* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca [3 x i32*], align 16
  %19 = alloca [3 x i32*], align 16
  %20 = alloca [3 x i32*], align 16
  %21 = alloca [3 x i32*], align 16
  %22 = alloca [3 x i64], align 16
  %23 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %15, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i64 %27
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %16, align 8
  br label %29

29:                                               ; preds = %156, %7
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %32 = icmp ne %struct.TYPE_15__* %30, %31
  br i1 %32, label %33, label %159

33:                                               ; preds = %29
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_14__* @_ase_get_submaterial_or_default(i32* %34, i32 %37, i32 %40)
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %17, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %43 = icmp eq %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %159

45:                                               ; preds = %33
  store i32 0, i32* %23, align 4
  br label %46

46:                                               ; preds = %142, %45
  %47 = load i32, i32* %23, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %145

49:                                               ; preds = %46
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %23, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i32, i32* %23, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 %61
  store i32* %59, i32** %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %23, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %23, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 %74
  store i32* %72, i32** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %23, align 4
  %81 = add nsw i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %23, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i32*], [3 x i32*]* %20, i64 0, i64 %88
  store i32* %86, i32** %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %91 = icmp ne %struct.TYPE_16__* %90, null
  br i1 %91, label %92, label %117

92:                                               ; preds = %49
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %23, align 4
  %97 = add nsw i32 %96, 6
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp uge i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %92
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %23, align 4
  %108 = add nsw i32 %107, 6
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %23, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 %115
  store i32* %113, i32** %116, align 8
  br label %121

117:                                              ; preds = %92, %49
  %118 = load i32, i32* %23, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 %119
  store i32* @white, i32** %120, align 8
  br label %121

121:                                              ; preds = %117, %102
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %23, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %132, 65536
  %134 = sext i32 %133 to i64
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = load i32, i32* %23, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 %140
  store i64 %138, i64* %141, align 8
  br label %142

142:                                              ; preds = %121
  %143 = load i32, i32* %23, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %23, align 4
  br label %46

145:                                              ; preds = %46
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %148 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  %149 = getelementptr inbounds [3 x i32*], [3 x i32*]* %20, i64 0, i64 0
  %150 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 0
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 0
  %155 = call i32 @PicoAddTriangleToModel(i32* %146, i32** %147, i32** %148, i32 1, i32** %149, i32 1, i32** %150, i32 %153, i64* %154)
  br label %156

156:                                              ; preds = %145
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 1
  store %struct.TYPE_15__* %158, %struct.TYPE_15__** %15, align 8
  br label %29

159:                                              ; preds = %44, %29
  ret void
}

declare dso_local %struct.TYPE_14__* @_ase_get_submaterial_or_default(i32*, i32, i32) #1

declare dso_local i32 @PicoAddTriangleToModel(i32*, i32**, i32**, i32, i32**, i32, i32**, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
