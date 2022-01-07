; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_relax_max_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_relax_max_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@GRAY = common dso_local global i32 0, align 4
@INFTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @relax_max_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relax_max_res(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %118 [
    i32 129, label %19
    i32 128, label %70
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @IS_SMALL(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @IS_SMALL(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %69

31:                                               ; preds = %23, %19
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @IS_SMALL(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %5, align 4
  br label %68

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @IS_SMALL(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %5, align 4
  br label %67

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @IS_GRAY(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @IS_GRAY(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @GRAY, align 4
  store i32 %52, i32* %5, align 4
  br label %66

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %54, %55
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @INFTY, align 4
  %60 = xor i32 %59, -1
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @INFTY, align 4
  %64 = xor i32 %63, -1
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %53
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %41
  br label %68

68:                                               ; preds = %67, %35
  br label %69

69:                                               ; preds = %68, %27
  br label %120

70:                                               ; preds = %1
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @IS_BIG(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @IS_BIG(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @max(i32 %79, i32 %80)
  store i32 %81, i32* %5, align 4
  br label %117

82:                                               ; preds = %74, %70
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @IS_BIG(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %3, align 4
  store i32 %87, i32* %5, align 4
  br label %116

88:                                               ; preds = %82
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @IS_BIG(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %5, align 4
  br label %115

94:                                               ; preds = %88
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @IS_GRAY(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @IS_GRAY(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98, %94
  %103 = load i32, i32* @GRAY, align 4
  store i32 %103, i32* %5, align 4
  br label %114

104:                                              ; preds = %98
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @INFTY, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @INFTY, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %104
  br label %114

114:                                              ; preds = %113, %102
  br label %115

115:                                              ; preds = %114, %92
  br label %116

116:                                              ; preds = %115, %86
  br label %117

117:                                              ; preds = %116, %78
  br label %120

118:                                              ; preds = %1
  %119 = call i32 @assert(i32 0)
  br label %120

120:                                              ; preds = %118, %117, %69
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %128, %133
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  store i64 %134, i64* %136, align 8
  ret void
}

declare dso_local i32 @IS_SMALL(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @IS_GRAY(i32) #1

declare dso_local i32 @IS_BIG(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
