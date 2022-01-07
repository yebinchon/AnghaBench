; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberXor.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberXor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32*, i64, i32 }
%struct.TYPE_17__ = type { i32 }

@DEC_Invalid_operation = common dso_local global i32 0, align 4
@DECDPUN = common dso_local global i64 0, align 8
@powers = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @decNumberXor(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = call i64 @decNumberIsSpecial(%struct.TYPE_16__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = call i64 @decNumberIsNegative(%struct.TYPE_16__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = call i64 @decNumberIsSpecial(%struct.TYPE_16__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %44 = call i64 @decNumberIsNegative(%struct.TYPE_16__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42, %38, %33, %29, %25, %4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = load i32, i32* @DEC_Invalid_operation, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %50 = call i32 @decStatus(%struct.TYPE_16__* %47, i32 %48, %struct.TYPE_17__* %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %5, align 8
  br label %202

52:                                               ; preds = %42
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %10, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %11, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @D2U(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = getelementptr inbounds i32, i32* %68, i64 -1
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @D2U(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = getelementptr inbounds i32, i32* %76, i64 -1
  store i32* %77, i32** %13, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @D2U(i32 %81)
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  %85 = getelementptr inbounds i32, i32* %84, i64 -1
  store i32* %85, i32** %15, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @MSUDIGITS(i32 %88)
  store i64 %89, i64* %16, align 8
  br label %90

90:                                               ; preds = %174, %52
  %91 = load i32*, i32** %14, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = icmp ule i32* %91, %92
  br i1 %93, label %94, label %181

94:                                               ; preds = %90
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = icmp ugt i32* %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 0, i32* %17, align 4
  br label %102

99:                                               ; preds = %94
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %17, align 4
  br label %102

102:                                              ; preds = %99, %98
  %103 = load i32*, i32** %11, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = icmp ugt i32* %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 0, i32* %18, align 4
  br label %110

107:                                              ; preds = %102
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %107, %106
  %111 = load i32*, i32** %14, align 8
  store i32 0, i32* %111, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %18, align 4
  %114 = or i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %173

116:                                              ; preds = %110
  store i64 0, i64* %19, align 8
  br label %117

117:                                              ; preds = %169, %116
  %118 = load i64, i64* %19, align 8
  %119 = load i64, i64* @DECDPUN, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %172

121:                                              ; preds = %117
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %18, align 4
  %124 = xor i32 %122, %123
  %125 = and i32 %124, 1
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i64*, i64** @powers, align 8
  %131 = load i64, i64* %19, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = add nsw i32 %129, %134
  %136 = load i32*, i32** %14, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %127, %121
  %138 = load i32, i32* %17, align 4
  %139 = srem i32 %138, 10
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %20, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sdiv i32 %141, 10
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %18, align 4
  %144 = srem i32 %143, 10
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %20, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %20, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sdiv i32 %148, 10
  store i32 %149, i32* %18, align 4
  %150 = load i64, i64* %20, align 8
  %151 = icmp ugt i64 %150, 1
  br i1 %151, label %152, label %158

152:                                              ; preds = %137
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %154 = load i32, i32* @DEC_Invalid_operation, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %156 = call i32 @decStatus(%struct.TYPE_16__* %153, i32 %154, %struct.TYPE_17__* %155)
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %157, %struct.TYPE_16__** %5, align 8
  br label %202

158:                                              ; preds = %137
  %159 = load i32*, i32** %14, align 8
  %160 = load i32*, i32** %15, align 8
  %161 = icmp eq i32* %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i64, i64* %19, align 8
  %164 = load i64, i64* %16, align 8
  %165 = sub i64 %164, 1
  %166 = icmp eq i64 %163, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %172

168:                                              ; preds = %162, %158
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %19, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %19, align 8
  br label %117

172:                                              ; preds = %167, %117
  br label %173

173:                                              ; preds = %172, %110
  br label %174

174:                                              ; preds = %173
  %175 = load i32*, i32** %10, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %10, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %11, align 8
  %179 = load i32*, i32** %14, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %14, align 8
  br label %90

181:                                              ; preds = %90
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32*, i32** %14, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = ptrtoint i32* %185 to i64
  %190 = ptrtoint i32* %188 to i64
  %191 = sub i64 %189, %190
  %192 = sdiv exact i64 %191, 4
  %193 = trunc i64 %192 to i32
  %194 = call i32 @decGetDigits(i32* %184, i32 %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 2
  store i64 0, i64* %200, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %201, %struct.TYPE_16__** %5, align 8
  br label %202

202:                                              ; preds = %181, %152, %46
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %203
}

declare dso_local i64 @decNumberIsSpecial(%struct.TYPE_16__*) #1

declare dso_local i64 @decNumberIsNegative(%struct.TYPE_16__*) #1

declare dso_local i32 @decStatus(%struct.TYPE_16__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @D2U(i32) #1

declare dso_local i64 @MSUDIGITS(i32) #1

declare dso_local i32 @decGetDigits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
