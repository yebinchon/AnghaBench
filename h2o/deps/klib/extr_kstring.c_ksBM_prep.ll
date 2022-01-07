; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kstring.c_ksBM_prep.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kstring.c_ksBM_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i32)* @ksBM_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ksBM_prep(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 256
  %15 = call i64 @calloc(i32 %14, i32 4)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %9, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %31, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %22

34:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  %45 = load i32*, i32** %9, align 8
  %46 = load i64*, i64** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %35

55:                                               ; preds = %35
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @calloc(i32 %56, i32 4)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %67, 2
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %148, %55
  %70 = load i32, i32* %5, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %151

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %72
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %77, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %76
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %92, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %147

106:                                              ; preds = %76, %72
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %110, %106
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %136, %112
  %115 = load i32, i32* %11, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  %118 = load i64*, i64** %3, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %3, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %124, %125
  %127 = sub nsw i32 %126, 1
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %123, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %122, %132
  br label %134

134:                                              ; preds = %117, %114
  %135 = phi i1 [ false, %114 ], [ %133, %117 ]
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %11, align 4
  br label %114

139:                                              ; preds = %134
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %142, i32* %146, align 4
  br label %147

147:                                              ; preds = %139, %91
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %5, align 4
  br label %69

151:                                              ; preds = %69
  store i32 0, i32* %12, align 4
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %162, %151
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i32, i32* %4, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %157, i32* %161, align 4
  br label %162

162:                                              ; preds = %156
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %5, align 4
  br label %152

165:                                              ; preds = %152
  %166 = load i32, i32* %4, align 4
  %167 = sub nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %211, %165
  %169 = load i32, i32* %5, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %214

171:                                              ; preds = %168
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %210

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %206, %180
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %4, align 4
  %184 = sub nsw i32 %183, 1
  %185 = load i32, i32* %5, align 4
  %186 = sub nsw i32 %184, %185
  %187 = icmp slt i32 %182, %186
  br i1 %187, label %188, label %209

188:                                              ; preds = %181
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %188
  %197 = load i32, i32* %4, align 4
  %198 = sub nsw i32 %197, 1
  %199 = load i32, i32* %5, align 4
  %200 = sub nsw i32 %198, %199
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %200, i32* %204, align 4
  br label %205

205:                                              ; preds = %196, %188
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %12, align 4
  br label %181

209:                                              ; preds = %181
  br label %210

210:                                              ; preds = %209, %171
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %5, align 4
  br label %168

214:                                              ; preds = %168
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %236, %214
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %4, align 4
  %218 = sub nsw i32 %217, 2
  %219 = icmp sle i32 %216, %218
  br i1 %219, label %220, label %239

220:                                              ; preds = %215
  %221 = load i32, i32* %4, align 4
  %222 = sub nsw i32 %221, 1
  %223 = load i32, i32* %5, align 4
  %224 = sub nsw i32 %222, %223
  %225 = load i32*, i32** %8, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sub nsw i32 %226, 1
  %228 = load i32*, i32** %6, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %227, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %225, i64 %234
  store i32 %224, i32* %235, align 4
  br label %236

236:                                              ; preds = %220
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %5, align 4
  br label %215

239:                                              ; preds = %215
  %240 = load i32*, i32** %6, align 8
  %241 = call i32 @free(i32* %240)
  %242 = load i32*, i32** %7, align 8
  ret i32* %242
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
