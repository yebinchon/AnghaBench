; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decSetOverflow.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decSetOverflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }

@DECNEG = common dso_local global i32 0, align 4
@DEC_Clamped = common dso_local global i32 0, align 4
@DECINF = common dso_local global i32 0, align 4
@DEC_Overflow = common dso_local global i32 0, align 4
@DEC_Inexact = common dso_local global i32 0, align 4
@DEC_Rounded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, i32*)* @decSetOverflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decSetOverflow(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DECNEG, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = call i64 @ISZERO(%struct.TYPE_9__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %26, %18
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @DEC_Clamped, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %39, %33
  br label %92

48:                                               ; preds = %3
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = call i32 @decNumberZero(%struct.TYPE_9__* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %66 [
    i32 129, label %54
    i32 131, label %55
    i32 130, label %56
    i32 128, label %61
  ]

54:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  br label %67

55:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  br label %67

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %67

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %61
  br label %67

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %65, %60, %55, %54
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = call i32 @decSetMaxValue(%struct.TYPE_9__* %71, %struct.TYPE_10__* %72)
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %83

77:                                               ; preds = %67
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @DECINF, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %70
  %84 = load i32, i32* @DEC_Overflow, align 4
  %85 = load i32, i32* @DEC_Inexact, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @DEC_Rounded, align 4
  %88 = or i32 %86, %87
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %83, %47
  ret void
}

declare dso_local i64 @ISZERO(%struct.TYPE_9__*) #1

declare dso_local i32 @decNumberZero(%struct.TYPE_9__*) #1

declare dso_local i32 @decSetMaxValue(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
