; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_DamageBlendBlob.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_DamageBlendBlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32*, i32, i32, i32, i32 }

@cg_blood = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@cg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GLHW_RAGEPRO = common dso_local global i64 0, align 8
@DAMAGE_TIME = common dso_local global i32 0, align 4
@RT_SPRITE = common dso_local global i32 0, align 4
@RF_FIRST_PERSON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DamageBlendBlob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DamageBlendBlob() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg_blood, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %88

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %88

11:                                               ; preds = %7
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1, i32 0), align 8
  %13 = load i64, i64* @GLHW_RAGEPRO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %88

16:                                               ; preds = %11
  %17 = load i32, i32* @DAMAGE_TIME, align 4
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 1), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 2), align 8
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %16
  br label %88

28:                                               ; preds = %23
  %29 = call i32 @memset(%struct.TYPE_13__* %3, i32 0, i32 32)
  %30 = load i32, i32* @RT_SPRITE, align 4
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 5
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @RF_FIRST_PERSON, align 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 5, i32 1), align 8
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 5, i32 0), align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @VectorMA(i32 %34, i32 8, i32 %37, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 3), align 4
  %44 = mul nsw i32 %43, -8
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 5, i32 0), align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @VectorMA(i32 %42, i32 %44, i32 %47, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 4), align 8
  %54 = mul nsw i32 %53, 8
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 5, i32 0), align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @VectorMA(i32 %52, i32 %54, i32 %57, i32 %59)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %62 = mul nsw i32 %61, 3
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 0), align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 255, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 255, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 255, i32* %74, align 4
  %75 = load i32, i32* %1, align 4
  %76 = sitofp i32 %75 to float
  %77 = load i32, i32* %2, align 4
  %78 = sitofp i32 %77 to float
  %79 = fdiv float %76, %78
  %80 = fpext float %79 to double
  %81 = fsub double 1.000000e+00, %80
  %82 = fmul double 2.000000e+02, %81
  %83 = fptosi double %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  store i32 %83, i32* %86, align 4
  %87 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_13__* %3)
  br label %88

88:                                               ; preds = %28, %27, %15, %10, %6
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
