; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_input.c_CL_FinishMove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_input.c_CL_FinishMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8**, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 (i32)*, i32 (i32, double*, double*, i32*, i32*, i32*, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32 (...)*, i32 (...)* }

@frame_msec = common dso_local global i32 0, align 4
@cl = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_FinishMove(i64* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = call %struct.TYPE_11__* (...) @dmlab_context()
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32 (...)*, i32 (...)** %13, align 8
  %15 = call i32 (...) %14()
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @frame_msec, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 2), align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 1), align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64 (i32)*, i64 (i32)** %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 %30(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %20
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32 (i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32)** %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %45 = load i64, i64* @PITCH, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load i64*, i64** %3, align 8
  %49 = load i64, i64* @PITCH, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @AngleDelta(i8* %47, i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = sdiv i32 %52, %53
  %55 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %56 = load i64, i64* @YAW, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i64*, i64** %3, align 8
  %60 = load i64, i64* @YAW, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @AngleDelta(i8* %58, i64 %62)
  %64 = load i32, i32* %7, align 4
  %65 = sdiv i32 %63, %64
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 %40(i32 %43, i32 %54, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %36, %20
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32 (...)*, i32 (...)** %82, align 8
  %84 = call i32 (...) %83()
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %103, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32 (i32, double*, double*, i32*, i32*, i32*, i32*)*, i32 (i32, double*, double*, i32*, i32*, i32*, i32*)** %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = call i32 %90(i32 %93, double* %8, double* %9, i32* %95, i32* %97, i32* %99, i32* %101)
  br label %112

103:                                              ; preds = %79
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 4
  store i32 0, i32* %105, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  store i32 0, i32* %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  store i32 0, i32* %109, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %103, %86
  %113 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %114 = load i64, i64* @ROLL, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  store i8* null, i8** %115, align 8
  %116 = load i64*, i64** %3, align 8
  %117 = load i64, i64* @PITCH, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = sitofp i64 %119 to double
  %121 = load double, double* %8, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sitofp i32 %122 to double
  %124 = fmul double %121, %123
  %125 = fadd double %120, %124
  %126 = fptosi double %125 to i64
  %127 = call i8* @AngleNormalize360(i64 %126)
  %128 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %129 = load i64, i64* @PITCH, align 8
  %130 = getelementptr inbounds i8*, i8** %128, i64 %129
  store i8* %127, i8** %130, align 8
  %131 = load i64*, i64** %3, align 8
  %132 = load i64, i64* @YAW, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = sitofp i64 %134 to double
  %136 = load double, double* %9, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sitofp i32 %137 to double
  %139 = fmul double %136, %138
  %140 = fadd double %135, %139
  %141 = fptosi double %140 to i64
  %142 = call i8* @AngleNormalize360(i64 %141)
  %143 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %144 = load i64, i64* @YAW, align 8
  %145 = getelementptr inbounds i8*, i8** %143, i64 %144
  store i8* %142, i8** %145, align 8
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %162, %112
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %149, label %165

149:                                              ; preds = %146
  %150 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cl, i32 0, i32 0), align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @ANGLE2SHORT(i8* %154)
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  br label %162

162:                                              ; preds = %149
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %146

165:                                              ; preds = %146
  ret void
}

declare dso_local %struct.TYPE_11__* @dmlab_context(...) #1

declare dso_local i32 @AngleDelta(i8*, i64) #1

declare dso_local i8* @AngleNormalize360(i64) #1

declare dso_local i32 @ANGLE2SHORT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
