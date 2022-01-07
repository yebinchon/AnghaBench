; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberInvert.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberInvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32*, i64, i32 }
%struct.TYPE_15__ = type { i32 }

@DEC_Invalid_operation = common dso_local global i32 0, align 4
@DECDPUN = common dso_local global i64 0, align 8
@powers = common dso_local global i64* null, align 8
@DECUNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @decNumberInvert(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = call i64 @decNumberIsSpecial(%struct.TYPE_14__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = call i64 @decNumberIsNegative(%struct.TYPE_14__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %20, %3
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = load i32, i32* @DEC_Invalid_operation, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = call i32 @decStatus(%struct.TYPE_14__* %29, i32 %30, %struct.TYPE_15__* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %4, align 8
  br label %149

34:                                               ; preds = %24
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %8, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @D2U(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  %48 = getelementptr inbounds i32, i32* %47, i64 -1
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @D2U(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = getelementptr inbounds i32, i32* %55, i64 -1
  store i32* %56, i32** %11, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @MSUDIGITS(i32 %59)
  store i64 %60, i64* %12, align 8
  br label %61

61:                                               ; preds = %123, %34
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = icmp ule i32* %62, %63
  br i1 %64, label %65, label %128

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ugt i32* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %13, align 4
  br label %73

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %70, %69
  %74 = load i32*, i32** %10, align 8
  store i32 0, i32* %74, align 4
  store i64 0, i64* %14, align 8
  br label %75

75:                                               ; preds = %119, %73
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* @DECDPUN, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %122

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i64*, i64** @powers, align 8
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = add nsw i32 %86, %91
  %93 = load i32*, i32** %10, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %84, %79
  %95 = load i32, i32* %13, align 4
  %96 = srem i32 %95, 10
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %15, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sdiv i32 %98, 10
  store i32 %99, i32* %13, align 4
  %100 = load i64, i64* %15, align 8
  %101 = icmp ugt i64 %100, 1
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = load i32, i32* @DEC_Invalid_operation, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = call i32 @decStatus(%struct.TYPE_14__* %103, i32 %104, %struct.TYPE_15__* %105)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %107, %struct.TYPE_14__** %4, align 8
  br label %149

108:                                              ; preds = %94
  %109 = load i32*, i32** %10, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = icmp eq i32* %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* %12, align 8
  %115 = sub i64 %114, 1
  %116 = icmp eq i64 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %122

118:                                              ; preds = %112, %108
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %14, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %14, align 8
  br label %75

122:                                              ; preds = %117, %75
  br label %123

123:                                              ; preds = %122
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %8, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %10, align 8
  br label %61

128:                                              ; preds = %61
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = ptrtoint i32* %132 to i64
  %137 = ptrtoint i32* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sdiv exact i64 %138, 4
  %140 = trunc i64 %139 to i32
  %141 = call i32 @decGetDigits(i32* %131, i32 %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  store i64 0, i64* %147, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %148, %struct.TYPE_14__** %4, align 8
  br label %149

149:                                              ; preds = %128, %102, %28
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %150
}

declare dso_local i64 @decNumberIsSpecial(%struct.TYPE_14__*) #1

declare dso_local i64 @decNumberIsNegative(%struct.TYPE_14__*) #1

declare dso_local i32 @decStatus(%struct.TYPE_14__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @D2U(i32) #1

declare dso_local i64 @MSUDIGITS(i32) #1

declare dso_local i32 @decGetDigits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
