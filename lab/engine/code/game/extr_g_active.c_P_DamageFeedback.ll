; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_active.c_P_DamageFeedback.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_active.c_P_DamageFeedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { float, float, i64, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i64, i32, i32, float, i32 }

@PM_DEAD = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@level = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@FL_GODMODE = common dso_local global i32 0, align 4
@EV_PAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_DamageFeedback(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca float, align 4
  %5 = alloca double*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PM_DEAD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %112

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load float, float* %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load float, float* %21, align 4
  %23 = fadd float %19, %22
  store float %23, float* %4, align 4
  %24 = load float, float* %4, align 4
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %112

27:                                               ; preds = %16
  %28 = load float, float* %4, align 4
  %29 = fcmp ogt float %28, 2.550000e+02
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store float 2.550000e+02, float* %4, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 255, i32* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i32 255, i32* %42, align 4
  %43 = load i64, i64* @qfalse, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 5
  store i64 %43, i64* %45, align 8
  br label %72

46:                                               ; preds = %31
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load double*, double** %5, align 8
  %51 = call i32 @vectoangles(i32 %49, double* %50)
  %52 = load double*, double** %5, align 8
  %53 = load i64, i64* @PITCH, align 8
  %54 = getelementptr inbounds double, double* %52, i64 %53
  %55 = load double, double* %54, align 8
  %56 = fdiv double %55, 3.600000e+02
  %57 = fmul double %56, 2.560000e+02
  %58 = fptosi double %57 to i32
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load double*, double** %5, align 8
  %63 = load i64, i64* @YAW, align 8
  %64 = getelementptr inbounds double, double* %62, i64 %63
  %65 = load double, double* %64, align 8
  %66 = fdiv double %65, 3.600000e+02
  %67 = fmul double %66, 2.560000e+02
  %68 = fptosi double %67 to i32
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %46, %36
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 0), align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %72
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @FL_GODMODE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %78
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 0), align 8
  %87 = add nsw i64 %86, 700
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = load i32, i32* @EV_PAIN, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @G_AddEvent(%struct.TYPE_8__* %90, i32 %91, i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %85, %78, %72
  %102 = load float, float* %4, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  store float %102, float* %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store float 0.000000e+00, float* %107, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store float 0.000000e+00, float* %109, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %101, %26, %15
  ret void
}

declare dso_local i32 @vectoangles(i32, double*) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
