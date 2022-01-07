; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_SnapPlaneImproved.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_SnapPlaneImproved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@distanceEpsilon = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SnapPlaneImproved(i32* %0, i64* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @SnapNormal(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @VectorClear(i32* %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %34, %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32*, i32** %10, align 8
  %27 = load i32**, i32*** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @VectorAdd(i32* %26, i32* %31, i32* %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %21

37:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sdiv i32 %46, %47
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %38

56:                                               ; preds = %38
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 @DotProduct(i32* %57, i32* %58)
  %60 = load i64*, i64** %6, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %15
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @VectorIsOnAxis(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @Q_rint(i64 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* @distanceEpsilon, align 8
  %71 = sub nsw i64 0, %70
  %72 = load i64*, i64** %6, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = sub nsw i64 %73, %74
  %76 = icmp slt i64 %71, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %66
  %78 = load i64*, i64** %6, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load i64, i64* @distanceEpsilon, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i64, i64* %11, align 8
  %86 = load i64*, i64** %6, align 8
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %77, %66
  br label %88

88:                                               ; preds = %87, %62
  ret void
}

declare dso_local i64 @SnapNormal(i32*) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

declare dso_local i64 @DotProduct(i32*, i32*) #1

declare dso_local i64 @VectorIsOnAxis(i32*) #1

declare dso_local i64 @Q_rint(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
