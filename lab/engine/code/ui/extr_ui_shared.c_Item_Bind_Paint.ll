; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Bind_Paint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Bind_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__, i32, i64, %struct.TYPE_10__, i64, i64 }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 (i64, i32, i32, float*, i8*, i32, i32, i32)* }
%struct.TYPE_12__ = type { float* }
%struct.TYPE_14__ = type { i32 }

@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@g_bindItem = common dso_local global %struct.TYPE_13__* null, align 8
@DC = common dso_local global %struct.TYPE_15__* null, align 8
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@g_nameBind1 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"FIXME\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_Bind_Paint(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %7, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %22
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_bindItem, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = icmp eq %struct.TYPE_13__* %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load float*, float** %4, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  store float 0x3FE99999A0000000, float* %36, align 4
  %37 = load float*, float** %4, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  store float 0.000000e+00, float* %38, align 4
  %39 = load float*, float** %4, align 8
  %40 = getelementptr inbounds float, float* %39, i64 2
  store float 0.000000e+00, float* %40, align 4
  %41 = load float*, float** %4, align 8
  %42 = getelementptr inbounds float, float* %41, i64 3
  store float 0x3FE99999A0000000, float* %42, align 4
  br label %76

43:                                               ; preds = %30
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = fmul float 0x3FE99999A0000000, %48
  %50 = load float*, float** %4, align 8
  %51 = getelementptr inbounds float, float* %50, i64 0
  store float %49, float* %51, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load float*, float** %53, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  %56 = load float, float* %55, align 4
  %57 = fmul float 0x3FE99999A0000000, %56
  %58 = load float*, float** %4, align 8
  %59 = getelementptr inbounds float, float* %58, i64 1
  store float %57, float* %59, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  %64 = load float, float* %63, align 4
  %65 = fmul float 0x3FE99999A0000000, %64
  %66 = load float*, float** %4, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  store float %65, float* %67, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load float*, float** %69, align 8
  %71 = getelementptr inbounds float, float* %70, i64 3
  %72 = load float, float* %71, align 4
  %73 = fmul float 0x3FE99999A0000000, %72
  %74 = load float*, float** %4, align 8
  %75 = getelementptr inbounds float, float* %74, i64 3
  store float %73, float* %75, align 4
  br label %76

76:                                               ; preds = %43, %34
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load float*, float** %78, align 8
  %80 = load float*, float** %4, align 8
  %81 = load float*, float** %3, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** @DC, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PULSE_DIVISOR, align 4
  %86 = sdiv i32 %84, %85
  %87 = call double @sin(i32 %86)
  %88 = fmul double 5.000000e-01, %87
  %89 = fadd double 5.000000e-01, %88
  %90 = call i32 @LerpColor(float* %79, float* %80, float* %81, double %89)
  br label %96

91:                                               ; preds = %22
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = call i32 @memcpy(float** %3, i32* %94, i32 8)
  br label %96

96:                                               ; preds = %91, %76
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %135

101:                                              ; preds = %96
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %103 = call i32 @Item_Text_Paint(%struct.TYPE_13__* %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @BindingFromName(i32 %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** @DC, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i32 (i64, i32, i32, float*, i8*, i32, i32, i32)*, i32 (i64, i32, i32, float*, i8*, i32, i32, i32)** %109, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %114, %118
  %120 = add nsw i64 %119, 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load float*, float** %3, align 8
  %129 = load i8*, i8** @g_nameBind1, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %110(i64 %120, i32 %124, i32 %127, float* %128, i8* %129, i32 0, i32 %130, i32 %133)
  br label %156

135:                                              ; preds = %96
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** @DC, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32 (i64, i32, i32, float*, i8*, i32, i32, i32)*, i32 (i64, i32, i32, float*, i8*, i32, i32, i32)** %137, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load float*, float** %3, align 8
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 %138(i64 %142, i32 %146, i32 %149, float* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %135, %101
  ret void
}

declare dso_local i32 @LerpColor(float*, float*, float*, double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @memcpy(float**, i32*, i32) #1

declare dso_local i32 @Item_Text_Paint(%struct.TYPE_13__*) #1

declare dso_local i32 @BindingFromName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
