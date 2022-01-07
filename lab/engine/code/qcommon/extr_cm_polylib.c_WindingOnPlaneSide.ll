; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_polylib.c_WindingOnPlaneSide.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_polylib.c_WindingOnPlaneSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@qfalse = common dso_local global i64 0, align 8
@ON_EPSILON = common dso_local global i64 0, align 8
@SIDE_CROSS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@SIDE_BACK = common dso_local global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WindingOnPlaneSide(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* @qfalse, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* @qfalse, align 8
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %55, %3
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @DotProduct(i32 %27, i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @ON_EPSILON, align 8
  %34 = sub nsw i64 0, %33
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %20
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @SIDE_CROSS, align 4
  store i32 %40, i32* %4, align 4
  br label %70

41:                                               ; preds = %36
  %42 = load i64, i64* @qtrue, align 8
  store i64 %42, i64* %9, align 8
  br label %55

43:                                               ; preds = %20
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @ON_EPSILON, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @SIDE_CROSS, align 4
  store i32 %51, i32* %4, align 4
  br label %70

52:                                               ; preds = %47
  %53 = load i64, i64* @qtrue, align 8
  store i64 %53, i64* %8, align 8
  br label %55

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %52, %41
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %14

58:                                               ; preds = %14
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @SIDE_BACK, align 4
  store i32 %62, i32* %4, align 4
  br label %70

63:                                               ; preds = %58
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @SIDE_FRONT, align 4
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @SIDE_ON, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %66, %61, %50, %39
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
