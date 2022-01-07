; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decTrim.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decTrim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }

@DECSPECIAL = common dso_local global i32 0, align 4
@powers = common dso_local global i64* null, align 8
@DECDPUN = common dso_local global i64 0, align 8
@DECUNCONT = common dso_local global i32 0, align 4
@DECUNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i32*)* @decTrim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @decTrim(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DECSPECIAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %5
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25, %5
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %6, align 8
  br label %161

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = call i64 @ISZERO(%struct.TYPE_8__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %6, align 8
  br label %161

42:                                               ; preds = %34
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %13, align 4
  store i64 1, i64* %14, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i64*
  store i64* %49, i64** %15, align 8
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %97, %42
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %50
  %58 = load i64*, i64** %15, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i64 @QUOT10(i64 %59, i64 %60)
  store i64 %61, i64* %16, align 8
  %62 = load i64*, i64** %15, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %16, align 8
  %65 = load i64*, i64** @powers, align 8
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = mul i64 %64, %68
  %70 = sub i64 %63, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %100

73:                                               ; preds = %57
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %100

83:                                               ; preds = %79
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %83, %76
  br label %87

87:                                               ; preds = %86, %73
  %88 = load i64, i64* %14, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* @DECDPUN, align 8
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i64*, i64** %15, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 1
  store i64* %95, i64** %15, align 8
  store i64 1, i64* %14, align 8
  br label %96

96:                                               ; preds = %93, %87
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %50

100:                                              ; preds = %82, %72, %50
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %6, align 8
  br label %161

105:                                              ; preds = %100
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %137

110:                                              ; preds = %105
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %137, label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = add nsw i32 %120, 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %121, %124
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %113
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %129, %struct.TYPE_8__** %6, align 8
  br label %161

130:                                              ; preds = %113
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %134, %130
  br label %137

137:                                              ; preds = %136, %110, %105
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = bitcast i32* %140 to i64*
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @D2U(i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @decShiftToLeast(i64* %141, i32 %145, i32 %146)
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32*, i32** %11, align 8
  store i32 %158, i32* %159, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %160, %struct.TYPE_8__** %6, align 8
  br label %161

161:                                              ; preds = %137, %128, %103, %38, %32
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %162
}

declare dso_local i64 @ISZERO(%struct.TYPE_8__*) #1

declare dso_local i64 @QUOT10(i64, i64) #1

declare dso_local i32 @decShiftToLeast(i64*, i32, i32) #1

declare dso_local i32 @D2U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
