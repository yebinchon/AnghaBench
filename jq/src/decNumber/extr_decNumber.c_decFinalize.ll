; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decFinalize.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decFinalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32* }
%struct.TYPE_16__ = type { i64, i64, i64, i32 }

@BADINT = common dso_local global i64 0, align 8
@DEC_Insufficient_storage = common dso_local global i32 0, align 4
@DEC_Clamped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*, i64*, i32*)* @decFinalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decFinalize(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %10, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @decSetSubnormal(%struct.TYPE_15__* %33, %struct.TYPE_16__* %34, i64* %35, i32* %36)
  br label %163

38:                                               ; preds = %26
  %39 = call i32 @decNumberZero(%struct.TYPE_15__* %12)
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i64 %45, i64* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = call i64 @decCompare(%struct.TYPE_15__* %47, %struct.TYPE_15__* %12, i32 1)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @BADINT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load i32, i32* @DEC_Insufficient_storage, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %163

57:                                               ; preds = %38
  %58 = load i64*, i64** %7, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i64, i64* %11, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @decApplyRound(%struct.TYPE_15__* %65, %struct.TYPE_16__* %66, i64 %68, i32* %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = load i64*, i64** %7, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @decSetSubnormal(%struct.TYPE_15__* %71, %struct.TYPE_16__* %72, i64* %73, i32* %74)
  br label %163

76:                                               ; preds = %61, %57
  br label %77

77:                                               ; preds = %76, %4
  %78 = load i64*, i64** %7, align 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = load i64*, i64** %7, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @decApplyRound(%struct.TYPE_15__* %82, %struct.TYPE_16__* %83, i64 %85, i32* %86)
  br label %88

88:                                               ; preds = %81, %77
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = add nsw i64 %98, 1
  %100 = icmp sle i64 %91, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %163

102:                                              ; preds = %88
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  %113 = add nsw i64 %112, 1
  %114 = icmp sgt i64 %105, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %102
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @decSetOverflow(%struct.TYPE_15__* %116, %struct.TYPE_16__* %117, i32* %118)
  br label %163

120:                                              ; preds = %102
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  br label %163

126:                                              ; preds = %120
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %132, %135
  %137 = add nsw i64 %136, 1
  %138 = sub nsw i64 %129, %137
  store i64 %138, i64* %9, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = call i32 @ISZERO(%struct.TYPE_15__* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %153, label %142

142:                                              ; preds = %126
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call i64 @decShiftToMost(i32* %145, i64 %148, i64 %149)
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %142, %126
  %154 = load i64, i64* %9, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load i32, i32* @DEC_Clamped, align 4
  %160 = load i32*, i32** %8, align 8
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %159
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %153, %125, %115, %101, %64, %52, %32
  ret void
}

declare dso_local i32 @decSetSubnormal(%struct.TYPE_15__*, %struct.TYPE_16__*, i64*, i32*) #1

declare dso_local i32 @decNumberZero(%struct.TYPE_15__*) #1

declare dso_local i64 @decCompare(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @decApplyRound(%struct.TYPE_15__*, %struct.TYPE_16__*, i64, i32*) #1

declare dso_local i32 @decSetOverflow(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ISZERO(%struct.TYPE_15__*) #1

declare dso_local i64 @decShiftToMost(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
