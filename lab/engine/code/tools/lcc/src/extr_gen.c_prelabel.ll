; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_prelabel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_prelabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_19__*)*, %struct.TYPE_20__* (i64)* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_20__**, %struct.TYPE_19__** }
%struct.TYPE_20__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@NeedsReg = common dso_local global i64* null, align 8
@IR = common dso_local global %struct.TYPE_14__* null, align 8
@REGISTER = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@P = common dso_local global i64 0, align 8
@F = common dso_local global i32 0, align 4
@LOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @prelabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prelabel(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %3 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %4 = icmp eq %struct.TYPE_19__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %149

6:                                                ; preds = %1
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %9, i64 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  call void @prelabel(%struct.TYPE_19__* %11)
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %14, i64 1
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  call void @prelabel(%struct.TYPE_19__* %16)
  %17 = load i64*, i64** @NeedsReg, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @opindex(i64 %20)
  %22 = getelementptr inbounds i64, i64* %17, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %6
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_20__* (i64)*, %struct.TYPE_20__* (i64)** %29, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @opkind(i64 %33)
  %35 = call %struct.TYPE_20__* %30(i64 %34)
  %36 = call i32 @setreg(%struct.TYPE_19__* %26, %struct.TYPE_20__* %35)
  br label %37

37:                                               ; preds = %25, %6
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @generic(i64 %40)
  switch i32 %41, label %142 [
    i32 134, label %42
    i32 133, label %42
    i32 128, label %59
    i32 132, label %84
    i32 131, label %109
    i32 129, label %109
    i32 130, label %109
  ]

42:                                               ; preds = %37, %37
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %45, i64 0
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @REGISTER, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load i64, i64* @VREG, align 8
  %54 = load i64, i64* @P, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %42
  br label %142

59:                                               ; preds = %37
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %62, i64 0
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VREG, align 8
  %68 = load i64, i64* @P, align 8
  %69 = add nsw i64 %67, %68
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %59
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %75, i64 0
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %79, i64 0
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = call i32 @setreg(%struct.TYPE_19__* %72, %struct.TYPE_20__* %81)
  br label %83

83:                                               ; preds = %71, %59
  br label %142

84:                                               ; preds = %37
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %87, i64 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @VREG, align 8
  %93 = load i64, i64* @P, align 8
  %94 = add nsw i64 %92, %93
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %84
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %100, i64 0
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %104, i64 0
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = call i32 @rtarget(%struct.TYPE_19__* %97, i32 1, %struct.TYPE_20__* %106)
  br label %108

108:                                              ; preds = %96, %84
  br label %142

109:                                              ; preds = %37, %37, %37
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @optype(i64 %112)
  %114 = load i32, i32* @F, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %109
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @opsize(i64 %119)
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %123, i64 0
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp sle i32 %120, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %116
  %133 = load i64, i64* @LOAD, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @opkind(i64 %136)
  %138 = add nsw i64 %133, %137
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %132, %116, %109
  br label %142

142:                                              ; preds = %37, %141, %108, %83, %58
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** @IR, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %145, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %148 = call i32 %146(%struct.TYPE_19__* %147)
  br label %149

149:                                              ; preds = %142, %5
  ret void
}

declare dso_local i64 @opindex(i64) #1

declare dso_local i32 @setreg(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i64 @opkind(i64) #1

declare dso_local i32 @generic(i64) #1

declare dso_local i32 @rtarget(%struct.TYPE_19__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @optype(i64) #1

declare dso_local i32 @opsize(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
