; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decimal128.c_decimal128ToNumber.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decimal128.c_decimal128ToNumber.c"
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
@DECIMAL128_Bias = common dso_local global i64 0, align 8
@sourhi = common dso_local global i32 0, align 4
@sourlo = common dso_local global i8* null, align 8
@sourmh = common dso_local global i8* null, align 8
@sourml = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @decimal128ToNumber(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [4 x i64], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %12 = load i64, i64* @DECLITEND, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i8* @UBTOUI(i64 %17)
  %19 = ptrtoint i8* %18 to i64
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %19, i64* %20, align 16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 4
  %25 = call i8* @UBTOUI(i64 %24)
  %26 = ptrtoint i8* %25 to i64
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 %26, i64* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 8
  %32 = call i8* @UBTOUI(i64 %31)
  %33 = ptrtoint i8* %32 to i64
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  store i64 %33, i64* %34, align 16
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 12
  %39 = call i8* @UBTOUI(i64 %38)
  %40 = ptrtoint i8* %39 to i64
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  store i64 %40, i64* %41, align 8
  br label %70

42:                                               ; preds = %2
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @UBTOUI(i64 %45)
  %47 = ptrtoint i8* %46 to i64
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  store i64 %47, i64* %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 4
  %53 = call i8* @UBTOUI(i64 %52)
  %54 = ptrtoint i8* %53 to i64
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  store i64 %54, i64* %55, align 16
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 8
  %60 = call i8* @UBTOUI(i64 %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 %61, i64* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 12
  %67 = call i8* @UBTOUI(i64 %66)
  %68 = ptrtoint i8* %67 to i64
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %68, i64* %69, align 16
  br label %70

70:                                               ; preds = %42, %14
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %72 = load i64, i64* %71, align 8
  %73 = lshr i64 %72, 26
  %74 = and i64 %73, 31
  store i64 %74, i64* %8, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = call i32 @decNumberZero(%struct.TYPE_9__* %75)
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %78 = load i64, i64* %77, align 8
  %79 = and i64 %78, 2147483648
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load i32, i32* @DECNEG, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %70
  %86 = load i64*, i64** @COMBMSD, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %6, align 8
  %90 = load i64*, i64** @COMBEXP, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp eq i64 %94, 3
  br i1 %95, label %96, label %125

96:                                               ; preds = %85
  %97 = load i64, i64* %6, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, i32* @DECINF, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %3, align 8
  br label %181

106:                                              ; preds = %96
  %107 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %108 = load i64, i64* %107, align 8
  %109 = and i64 %108, 33554432
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* @DECSNAN, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %123

117:                                              ; preds = %106
  %118 = load i32, i32* @DECNAN, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %111
  br label %124

124:                                              ; preds = %123
  store i64 0, i64* %6, align 8
  br label %137

125:                                              ; preds = %85
  %126 = load i64, i64* %7, align 8
  %127 = shl i64 %126, 12
  %128 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %129 = load i64, i64* %128, align 8
  %130 = lshr i64 %129, 14
  %131 = and i64 %130, 4095
  %132 = add i64 %127, %131
  %133 = load i64, i64* @DECIMAL128_Bias, align 8
  %134 = sub i64 %132, %133
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %125, %124
  %138 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %139 = load i64, i64* %138, align 8
  %140 = and i64 %139, 16383
  store i64 %140, i64* %138, align 8
  %141 = load i64, i64* %6, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i64, i64* %6, align 8
  %145 = shl i64 %144, 14
  %146 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %147 = load i64, i64* %146, align 8
  %148 = or i64 %147, %145
  store i64 %148, i64* %146, align 8
  store i32 12, i32* %9, align 4
  br label %175

149:                                              ; preds = %137
  %150 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 11, i32* %9, align 4
  br label %174

154:                                              ; preds = %149
  %155 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  %156 = load i64, i64* %155, align 16
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 10, i32* %9, align 4
  br label %173

159:                                              ; preds = %154
  %160 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 7, i32* %9, align 4
  br label %172

164:                                              ; preds = %159
  %165 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %166 = load i64, i64* %165, align 16
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 4, i32* %9, align 4
  br label %171

169:                                              ; preds = %164
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %170, %struct.TYPE_9__** %3, align 8
  br label %181

171:                                              ; preds = %168
  br label %172

172:                                              ; preds = %171, %163
  br label %173

173:                                              ; preds = %172, %158
  br label %174

174:                                              ; preds = %173, %153
  br label %175

175:                                              ; preds = %174, %143
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %177 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @decDigitsFromDPD(%struct.TYPE_9__* %176, i64* %177, i32 %178)
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %180, %struct.TYPE_9__** %3, align 8
  br label %181

181:                                              ; preds = %175, %169, %99
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %182
}

declare dso_local i8* @UBTOUI(i64) #1

declare dso_local i32 @decNumberZero(%struct.TYPE_9__*) #1

declare dso_local i32 @decDigitsFromDPD(%struct.TYPE_9__*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
