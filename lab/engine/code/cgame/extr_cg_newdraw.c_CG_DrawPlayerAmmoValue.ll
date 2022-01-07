; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_DrawPlayerAmmoValue.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_DrawPlayerAmmoValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32, i64, i64, i64 }

@cg_entities = common dso_local global %struct.TYPE_13__* null, align 8
@cg = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, float, i32*, i64, i32)* @CG_DrawPlayerAmmoValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawPlayerAmmoValue(%struct.TYPE_11__* %0, float %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store float %1, float* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cg_entities, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i64 %19
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %13, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %14, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %94

28:                                               ; preds = %5
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %93

41:                                               ; preds = %28
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @trap_R_SetColor(i32* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @CG_DrawPic(i64 %49, i64 %52, i32 %55, i64 %58, i64 %59)
  %61 = call i32 @trap_R_SetColor(i32* null)
  br label %92

62:                                               ; preds = %41
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @Com_sprintf(i8* %63, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %67 = load float, float* %7, align 4
  %68 = call i32 @CG_Text_Width(i8* %66, float %67, i32 0)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sdiv i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %71, %78
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load float, float* %7, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @CG_Text_Paint(i64 %79, i64 %86, float %87, i32* %88, i8* %89, i32 0, i32 0, i32 %90)
  br label %92

92:                                               ; preds = %62, %44
  br label %93

93:                                               ; preds = %92, %28
  br label %94

94:                                               ; preds = %93, %5
  ret void
}

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local i32 @CG_DrawPic(i64, i64, i32, i64, i64) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @CG_Text_Width(i8*, float, i32) #1

declare dso_local i32 @CG_Text_Paint(i64, i64, float, i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
