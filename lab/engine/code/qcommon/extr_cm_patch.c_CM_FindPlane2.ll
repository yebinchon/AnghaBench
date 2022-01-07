; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_FindPlane2.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_FindPlane2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@numPlanes = common dso_local global i32 0, align 4
@planes = common dso_local global %struct.TYPE_3__* null, align 8
@MAX_PATCH_PLANES = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MAX_PATCH_PLANES\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CM_FindPlane2(float* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @numPlanes, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @planes, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = load float*, float** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @CM_PlaneEqual(%struct.TYPE_3__* %15, float* %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load i32, i32* @numPlanes, align 4
  %28 = load i32, i32* @MAX_PATCH_PLANES, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ERR_DROP, align 4
  %32 = call i32 @Com_Error(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %26
  %34 = load float*, float** %4, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @planes, align 8
  %36 = load i32, i32* @numPlanes, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @Vector4Copy(float* %34, i32 %40)
  %42 = load float*, float** %4, align 8
  %43 = call i32 @CM_SignbitsForNormal(float* %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @planes, align 8
  %45 = load i32, i32* @numPlanes, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* @numPlanes, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @numPlanes, align 4
  %51 = load i32, i32* @qfalse, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @numPlanes, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %33, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @CM_PlaneEqual(%struct.TYPE_3__*, float*, i32*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Vector4Copy(float*, i32) #1

declare dso_local i32 @CM_SignbitsForNormal(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
