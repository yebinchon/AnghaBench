; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decPacked.c_decPackedToNumber.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decPacked.c_decPackedToNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64* }

@DECPMINUS = common dso_local global i32 0, align 4
@DECPMINUSALT = common dso_local global i32 0, align 4
@DECNEG = common dso_local global i32 0, align 4
@DECNUMMAXE = common dso_local global i32 0, align 4
@DECPOWERS = common dso_local global i32* null, align 8
@DECDPUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @decPackedToNumber(i32* %0, i32 %1, i32* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = getelementptr inbounds i32, i32* %19, i64 -1
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %13, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = call i32 @decNumberZero(%struct.TYPE_5__* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 15
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @DECPMINUS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @DECPMINUSALT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %4
  %42 = load i32, i32* @DECNEG, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %50

45:                                               ; preds = %37
  %46 = load i32, i32* %12, align 4
  %47 = icmp sle i32 %46, 9
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  br label %227

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i32*, i32** %6, align 8
  store i32* %51, i32** %11, align 8
  br label %52

52:                                               ; preds = %56, %50
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %11, align 8
  br label %52

59:                                               ; preds = %52
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = mul nsw i64 %65, 2
  %67 = add nsw i64 %66, 1
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %14, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 240
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %73, %59
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 0, %85
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %83
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %95, %97
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* @DECNUMMAXE, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = call i32 @decNumberZero(%struct.TYPE_5__* %104)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  br label %227

106:                                              ; preds = %92
  br label %127

107:                                              ; preds = %83
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @DECNUMMAXE, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %123, label %113

113:                                              ; preds = %107
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %116, %118
  %120 = sub nsw i32 %119, 1
  %121 = load i32, i32* @DECNUMMAXE, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %113, %107
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %125 = call i32 @decNumberZero(%struct.TYPE_5__* %124)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  br label %227

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126, %106
  %128 = load i32, i32* %14, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %131, %struct.TYPE_5__** %5, align 8
  br label %227

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %224, %132
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 240
  %137 = lshr i32 %136, 4
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp sgt i32 %138, 9
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %142 = call i32 @decNumberZero(%struct.TYPE_5__* %141)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  br label %227

143:                                              ; preds = %133
  %144 = load i32, i32* %15, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64*, i64** %13, align 8
  store i64 %148, i64* %149, align 8
  br label %163

150:                                              ; preds = %143
  %151 = load i64*, i64** %13, align 8
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load i32*, i32** @DECPOWERS, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %153, %158
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %152, %160
  %162 = load i64*, i64** %13, align 8
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %150, %146
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %225

169:                                              ; preds = %163
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* @DECDPUN, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load i64*, i64** %13, align 8
  %177 = getelementptr inbounds i64, i64* %176, i32 1
  store i64* %177, i64** %13, align 8
  store i32 0, i32* %15, align 4
  br label %178

178:                                              ; preds = %175, %169
  %179 = load i32*, i32** %10, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 -1
  store i32* %180, i32** %10, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 15
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp sgt i32 %184, 9
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %188 = call i32 @decNumberZero(%struct.TYPE_5__* %187)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  br label %227

189:                                              ; preds = %178
  %190 = load i32, i32* %15, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64*, i64** %13, align 8
  store i64 %194, i64* %195, align 8
  br label %209

196:                                              ; preds = %189
  %197 = load i64*, i64** %13, align 8
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i32*, i32** @DECPOWERS, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %199, %204
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %198, %206
  %208 = load i64*, i64** %13, align 8
  store i64 %207, i64* %208, align 8
  br label %209

209:                                              ; preds = %196, %192
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* %14, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %225

215:                                              ; preds = %209
  %216 = load i32, i32* %15, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @DECDPUN, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load i64*, i64** %13, align 8
  %223 = getelementptr inbounds i64, i64* %222, i32 1
  store i64* %223, i64** %13, align 8
  store i32 0, i32* %15, align 4
  br label %224

224:                                              ; preds = %221, %215
  br label %133

225:                                              ; preds = %214, %168
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %226, %struct.TYPE_5__** %5, align 8
  br label %227

227:                                              ; preds = %225, %186, %140, %130, %123, %103, %48
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %228
}

declare dso_local i32 @decNumberZero(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
