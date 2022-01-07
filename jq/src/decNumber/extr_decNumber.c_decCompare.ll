; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decCompare.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32 }

@DECINF = common dso_local global i32 0, align 4
@BADINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_7__*, i64)* @decCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decCompare(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = call i64 @ISZERO(%struct.TYPE_7__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = call i64 @ISZERO(%struct.TYPE_7__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %136

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %136

29:                                               ; preds = %25
  br label %64

30:                                               ; preds = %16
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call i64 @decNumberIsNegative(%struct.TYPE_7__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %33, %30
  store i32 1, i32* %9, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = call i64 @ISZERO(%struct.TYPE_7__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = call i64 @decNumberIsNegative(%struct.TYPE_7__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 -1, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %43
  br label %49

49:                                               ; preds = %48, %42
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %136

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %136

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %136

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %29
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %67, %70
  %72 = load i32, i32* @DECINF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %64
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = call i64 @decNumberIsInfinite(%struct.TYPE_7__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = call i64 @decNumberIsInfinite(%struct.TYPE_7__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %84, %83
  br label %88

88:                                               ; preds = %87, %75
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %136

90:                                               ; preds = %64
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %11, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %5, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %98, %90
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @D2U(i32 %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @D2U(i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %121, %124
  %126 = call i32 @decUnitCompare(i32 %107, i32 %111, i32 %114, i32 %118, i64 %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @BADINT, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %104
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %10, align 4
  %133 = mul nsw i32 %132, %131
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %130, %104
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %134, %88, %62, %58, %53, %28, %23
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i64 @ISZERO(%struct.TYPE_7__*) #1

declare dso_local i64 @decNumberIsNegative(%struct.TYPE_7__*) #1

declare dso_local i64 @decNumberIsInfinite(%struct.TYPE_7__*) #1

declare dso_local i32 @decUnitCompare(i32, i32, i32, i32, i64) #1

declare dso_local i32 @D2U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
