; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decimal64.c_decimal64ToNumber.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decimal64.c_decimal64ToNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32 }

@DECLITEND = common dso_local global i64 0, align 8
@DECNEG = common dso_local global i32 0, align 4
@COMBMSD = common dso_local global i64* null, align 8
@COMBEXP = common dso_local global i64* null, align 8
@DECINF = common dso_local global i32 0, align 4
@DECSNAN = common dso_local global i32 0, align 4
@DECNAN = common dso_local global i32 0, align 4
@DECIMAL64_Bias = common dso_local global i64 0, align 8
@sourhi = common dso_local global i32 0, align 4
@sourlo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @decimal64ToNumber(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [2 x i64], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %12 = load i64, i64* @DECLITEND, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @UBTOUI(i64 %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 %19, i64* %20, align 16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 4
  %25 = call i32 @UBTOUI(i64 %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 %26, i64* %27, align 8
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @UBTOUI(i64 %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 %33, i64* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 4
  %39 = call i32 @UBTOUI(i64 %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 %40, i64* %41, align 16
  br label %42

42:                                               ; preds = %28, %14
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = lshr i64 %44, 26
  %46 = and i64 %45, 31
  store i64 %46, i64* %8, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = call i32 @decNumberZero(%struct.TYPE_9__* %47)
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = and i64 %50, 2147483648
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* @DECNEG, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %42
  %58 = load i64*, i64** @COMBMSD, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %6, align 8
  %62 = load i64*, i64** @COMBEXP, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp eq i64 %66, 3
  br i1 %67, label %68, label %97

68:                                               ; preds = %57
  %69 = load i64, i64* %6, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* @DECINF, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %3, align 8
  br label %156

78:                                               ; preds = %68
  %79 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %80, 33554432
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @DECSNAN, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %95

89:                                               ; preds = %78
  %90 = load i32, i32* @DECNAN, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %83
  br label %96

96:                                               ; preds = %95
  store i64 0, i64* %6, align 8
  br label %109

97:                                               ; preds = %57
  %98 = load i64, i64* %7, align 8
  %99 = shl i64 %98, 8
  %100 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = lshr i64 %101, 18
  %103 = and i64 %102, 255
  %104 = add i64 %99, %103
  %105 = load i64, i64* @DECIMAL64_Bias, align 8
  %106 = sub i64 %104, %105
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %97, %96
  %110 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = and i64 %111, 262143
  store i64 %112, i64* %110, align 8
  %113 = load i64, i64* %6, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i64, i64* %6, align 8
  %117 = shl i64 %116, 18
  %118 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = or i64 %119, %117
  store i64 %120, i64* %118, align 8
  store i32 6, i32* %9, align 4
  br label %150

121:                                              ; preds = %109
  %122 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %127 = load i64, i64* %126, align 16
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %130, %struct.TYPE_9__** %3, align 8
  br label %156

131:                                              ; preds = %125
  store i32 3, i32* %9, align 4
  %132 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %133 = load i64, i64* %132, align 16
  %134 = and i64 %133, 3221225472
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %136, %131
  br label %149

140:                                              ; preds = %121
  store i32 4, i32* %9, align 4
  %141 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = and i64 %142, 261888
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %145, %140
  br label %149

149:                                              ; preds = %148, %139
  br label %150

150:                                              ; preds = %149, %115
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %152 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @decDigitsFromDPD(%struct.TYPE_9__* %151, i64* %152, i32 %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %155, %struct.TYPE_9__** %3, align 8
  br label %156

156:                                              ; preds = %150, %129, %71
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %157
}

declare dso_local i32 @UBTOUI(i64) #1

declare dso_local i32 @decNumberZero(%struct.TYPE_9__*) #1

declare dso_local i32 @decDigitsFromDPD(%struct.TYPE_9__*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
