; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_Init.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64, i64, i32, i32, i64, i64, %struct.TYPE_4__*, i64, i64, i32, i32, i8**, i8**, i8***, i8**, i8**, i8**, i8**, i8***, i8***, i8**, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@kNumAlignBits = common dso_local global i32 0, align 4
@kProbInitValue = common dso_local global i8* null, align 8
@kNumStates = common dso_local global i32 0, align 4
@LZMA_NUM_PB_STATES_MAX = common dso_local global i32 0, align 4
@kNumLenToPosStates = common dso_local global i32 0, align 4
@kNumPosSlotBits = common dso_local global i32 0, align 4
@kNumFullDistances = common dso_local global i32 0, align 4
@kNumOpts = common dso_local global i32 0, align 4
@kInfinityPrice = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_Init(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 23
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 1, i32* %15, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 1, i32* %19, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 22
  %30 = call i32 @RangeEnc_Init(i32* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %44, %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @kNumAlignBits, align 4
  %34 = shl i32 1, %33
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i8*, i8** @kProbInitValue, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 21
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %37, i8** %43, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %31

47:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %112, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @kNumStates, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %115

52:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %80, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @LZMA_NUM_PB_STATES_MAX, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %53
  %58 = load i8*, i8** @kProbInitValue, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 20
  %61 = load i8***, i8**** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8**, i8*** %61, i64 %63
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %58, i8** %68, align 8
  %69 = load i8*, i8** @kProbInitValue, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 19
  %72 = load i8***, i8**** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8**, i8*** %72, i64 %74
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %69, i8** %79, align 8
  br label %80

80:                                               ; preds = %57
  %81 = load i32, i32* %4, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %53

83:                                               ; preds = %53
  %84 = load i8*, i8** @kProbInitValue, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 18
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %84, i8** %90, align 8
  %91 = load i8*, i8** @kProbInitValue, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 17
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* %91, i8** %97, align 8
  %98 = load i8*, i8** @kProbInitValue, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 16
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  store i8* %98, i8** %104, align 8
  %105 = load i8*, i8** @kProbInitValue, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 15
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  store i8* %105, i8** %111, align 8
  br label %112

112:                                              ; preds = %83
  %113 = load i32, i32* %3, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %48

115:                                              ; preds = %48
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %143, %115
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @kNumLenToPosStates, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %146

120:                                              ; preds = %116
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 14
  %123 = load i8***, i8**** %122, align 8
  %124 = load i32, i32* %3, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8**, i8*** %123, i64 %125
  %127 = load i8**, i8*** %126, align 8
  store i8** %127, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %139, %120
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @kNumPosSlotBits, align 4
  %131 = shl i32 1, %130
  %132 = icmp ult i32 %129, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load i8*, i8** @kProbInitValue, align 8
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  store i8* %134, i8** %138, align 8
  br label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %6, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %128

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %3, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %116

146:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %159, %146
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @kNumFullDistances, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i8*, i8** @kProbInitValue, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 13
  %155 = load i8**, i8*** %154, align 8
  %156 = load i32, i32* %3, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  store i8* %152, i8** %158, align 8
  br label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %3, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %3, align 4
  br label %147

162:                                              ; preds = %147
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %165, %168
  %170 = shl i64 768, %169
  store i64 %170, i64* %7, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 12
  %173 = load i8**, i8*** %172, align 8
  store i8** %173, i8*** %9, align 8
  store i64 0, i64* %8, align 8
  br label %174

174:                                              ; preds = %183, %162
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* %7, align 8
  %177 = icmp ult i64 %175, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %174
  %179 = load i8*, i8** @kProbInitValue, align 8
  %180 = load i8**, i8*** %9, align 8
  %181 = load i64, i64* %8, align 8
  %182 = getelementptr inbounds i8*, i8** %180, i64 %181
  store i8* %179, i8** %182, align 8
  br label %183

183:                                              ; preds = %178
  %184 = load i64, i64* %8, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %8, align 8
  br label %174

186:                                              ; preds = %174
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 11
  %189 = call i32 @LenEnc_Init(i32* %188)
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 10
  %192 = call i32 @LenEnc_Init(i32* %191)
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 9
  store i64 0, i64* %194, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 8
  store i64 0, i64* %196, align 8
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %210, %186
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* @kNumOpts, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %213

201:                                              ; preds = %197
  %202 = load i32, i32* @kInfinityPrice, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 7
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i32, i32* %3, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  store i32 %202, i32* %209, align 4
  br label %210

210:                                              ; preds = %201
  %211 = load i32, i32* %3, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %3, align 4
  br label %197

213:                                              ; preds = %197
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 6
  store i64 0, i64* %215, align 8
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = shl i32 1, %218
  %220 = sub nsw i32 %219, 1
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = shl i64 256, %225
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = lshr i32 256, %230
  %232 = zext i32 %231 to i64
  %233 = sub i64 %226, %232
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 5
  store i64 %233, i64* %235, align 8
  ret void
}

declare dso_local i32 @RangeEnc_Init(i32*) #1

declare dso_local i32 @LenEnc_Init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
