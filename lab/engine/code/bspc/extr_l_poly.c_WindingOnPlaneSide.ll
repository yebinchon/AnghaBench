; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_WindingOnPlaneSide.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_WindingOnPlaneSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@ON_EPSILON = common dso_local global i64 0, align 8
@SIDE_CROSS = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WindingOnPlaneSide(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %51, %3
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @DotProduct(i32 %25, i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @ON_EPSILON, align 8
  %32 = sub nsw i64 0, %31
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %18
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @SIDE_CROSS, align 4
  store i32 %38, i32* %4, align 4
  br label %66

39:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %51

40:                                               ; preds = %18
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @ON_EPSILON, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @SIDE_CROSS, align 4
  store i32 %48, i32* %4, align 4
  br label %66

49:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %51

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %49, %39
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %12

54:                                               ; preds = %12
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @SIDE_BACK, align 4
  store i32 %58, i32* %4, align 4
  br label %66

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @SIDE_FRONT, align 4
  store i32 %63, i32* %4, align 4
  br label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @SIDE_ON, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %62, %57, %47, %37
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
