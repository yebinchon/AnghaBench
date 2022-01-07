; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_world.c_R_CullGrid.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_world.c_R_CullGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@r_nocurves = common dso_local global %struct.TYPE_9__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@REFENTITYNUM_WORLD = common dso_local global i64 0, align 8
@CULL_OUT = common dso_local global i32 0, align 4
@CULL_CLIP = common dso_local global i32 0, align 4
@CULL_IN = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @R_CullGrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @R_CullGrid(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_nocurves, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @qtrue, align 4
  store i32 %11, i32* %2, align 4
  br label %76

12:                                               ; preds = %1
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 0), align 8
  %14 = load i64, i64* @REFENTITYNUM_WORLD, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @R_CullLocalPointAndRadius(i32 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %12
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @R_CullPointAndRadius(i32 %27, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %24, %16
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @CULL_OUT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 5), align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 5), align 4
  %39 = load i32, i32* @qtrue, align 4
  store i32 %39, i32* %2, align 4
  br label %76

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @CULL_CLIP, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 4), align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 4), align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @R_CullLocalBox(i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @CULL_OUT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 3), align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 3), align 4
  %57 = load i32, i32* @qtrue, align 4
  store i32 %57, i32* %2, align 4
  br label %76

58:                                               ; preds = %44
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @CULL_IN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 2), align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 2), align 8
  br label %68

65:                                               ; preds = %58
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 1), align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 1), align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68
  br label %73

70:                                               ; preds = %40
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 0), align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tr, i32 0, i32 1, i32 0), align 8
  br label %73

73:                                               ; preds = %70, %69
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* @qfalse, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %54, %36, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @R_CullLocalPointAndRadius(i32, i32) #1

declare dso_local i32 @R_CullPointAndRadius(i32, i32) #1

declare dso_local i32 @R_CullLocalBox(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
