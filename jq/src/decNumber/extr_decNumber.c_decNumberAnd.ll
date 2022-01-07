; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberAnd.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decNumberAnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32*, i64, i32 }
%struct.TYPE_17__ = type { i32 }

@DEC_Invalid_operation = common dso_local global i32 0, align 4
@DECDPUN = common dso_local global i64 0, align 8
@powers = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @decNumberAnd(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, %struct.TYPE_17__* %3) #0 {
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
  br label %203

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

90:                                               ; preds = %175, %52
  %91 = load i32*, i32** %14, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = icmp ule i32* %91, %92
  br i1 %93, label %94, label %182

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
  br i1 %115, label %116, label %174

116:                                              ; preds = %110
  %117 = load i32*, i32** %14, align 8
  store i32 0, i32* %117, align 4
  store i64 0, i64* %19, align 8
  br label %118

118:                                              ; preds = %170, %116
  %119 = load i64, i64* %19, align 8
  %120 = load i64, i64* @DECDPUN, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %173

122:                                              ; preds = %118
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = and i32 %123, %124
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i64*, i64** @powers, align 8
  %132 = load i64, i64* %19, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = add nsw i32 %130, %135
  %137 = load i32*, i32** %14, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %128, %122
  %139 = load i32, i32* %17, align 4
  %140 = srem i32 %139, 10
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %20, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sdiv i32 %142, 10
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %18, align 4
  %145 = srem i32 %144, 10
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %20, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %20, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sdiv i32 %149, 10
  store i32 %150, i32* %18, align 4
  %151 = load i64, i64* %20, align 8
  %152 = icmp ugt i64 %151, 1
  br i1 %152, label %153, label %159

153:                                              ; preds = %138
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %155 = load i32, i32* @DEC_Invalid_operation, align 4
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %157 = call i32 @decStatus(%struct.TYPE_16__* %154, i32 %155, %struct.TYPE_17__* %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %158, %struct.TYPE_16__** %5, align 8
  br label %203

159:                                              ; preds = %138
  %160 = load i32*, i32** %14, align 8
  %161 = load i32*, i32** %15, align 8
  %162 = icmp eq i32* %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load i64, i64* %19, align 8
  %165 = load i64, i64* %16, align 8
  %166 = sub i64 %165, 1
  %167 = icmp eq i64 %164, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %173

169:                                              ; preds = %163, %159
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %19, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %19, align 8
  br label %118

173:                                              ; preds = %168, %118
  br label %174

174:                                              ; preds = %173, %110
  br label %175

175:                                              ; preds = %174
  %176 = load i32*, i32** %10, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %10, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %11, align 8
  %180 = load i32*, i32** %14, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %14, align 8
  br label %90

182:                                              ; preds = %90
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32*, i32** %14, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = ptrtoint i32* %186 to i64
  %191 = ptrtoint i32* %189 to i64
  %192 = sub i64 %190, %191
  %193 = sdiv exact i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = call i32 @decGetDigits(i32* %185, i32 %194)
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  store i64 0, i64* %199, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 2
  store i64 0, i64* %201, align 8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %202, %struct.TYPE_16__** %5, align 8
  br label %203

203:                                              ; preds = %182, %153, %46
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %204
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
