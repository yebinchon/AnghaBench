; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_crecip.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_crecip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @crecip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crecip(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [10 x i32], align 16
  %6 = alloca [10 x i32], align 16
  %7 = alloca [10 x i32], align 16
  %8 = alloca [10 x i32], align 16
  %9 = alloca [10 x i32], align 16
  %10 = alloca [10 x i32], align 16
  %11 = alloca [10 x i32], align 16
  %12 = alloca [10 x i32], align 16
  %13 = alloca [10 x i32], align 16
  %14 = alloca [10 x i32], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @fsquare(i32* %16, i32* %17)
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %21 = call i32 @fsquare(i32* %19, i32* %20)
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %24 = call i32 @fsquare(i32* %22, i32* %23)
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fmul(i32* %25, i32* %26, i32* %27)
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %32 = call i32 @fmul(i32* %29, i32* %30, i32* %31)
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %35 = call i32 @fsquare(i32* %33, i32* %34)
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %39 = call i32 @fmul(i32* %36, i32* %37, i32* %38)
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %42 = call i32 @fsquare(i32* %40, i32* %41)
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %45 = call i32 @fsquare(i32* %43, i32* %44)
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %48 = call i32 @fsquare(i32* %46, i32* %47)
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %51 = call i32 @fsquare(i32* %49, i32* %50)
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %54 = call i32 @fsquare(i32* %52, i32* %53)
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %56 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %58 = call i32 @fmul(i32* %55, i32* %56, i32* %57)
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %61 = call i32 @fsquare(i32* %59, i32* %60)
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %64 = call i32 @fsquare(i32* %62, i32* %63)
  store i32 2, i32* %15, align 4
  br label %65

65:                                               ; preds = %75, %2
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %66, 10
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %71 = call i32 @fsquare(i32* %69, i32* %70)
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %73 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %74 = call i32 @fsquare(i32* %72, i32* %73)
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %15, align 4
  br label %65

78:                                               ; preds = %65
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %82 = call i32 @fmul(i32* %79, i32* %80, i32* %81)
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %85 = call i32 @fsquare(i32* %83, i32* %84)
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %88 = call i32 @fsquare(i32* %86, i32* %87)
  store i32 2, i32* %15, align 4
  br label %89

89:                                               ; preds = %99, %78
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %90, 20
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %94 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %95 = call i32 @fsquare(i32* %93, i32* %94)
  %96 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %97 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %98 = call i32 @fsquare(i32* %96, i32* %97)
  br label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %15, align 4
  br label %89

102:                                              ; preds = %89
  %103 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %104 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %105 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %106 = call i32 @fmul(i32* %103, i32* %104, i32* %105)
  %107 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %108 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %109 = call i32 @fsquare(i32* %107, i32* %108)
  %110 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %111 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %112 = call i32 @fsquare(i32* %110, i32* %111)
  store i32 2, i32* %15, align 4
  br label %113

113:                                              ; preds = %123, %102
  %114 = load i32, i32* %15, align 4
  %115 = icmp slt i32 %114, 10
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %118 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %119 = call i32 @fsquare(i32* %117, i32* %118)
  %120 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %121 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %122 = call i32 @fsquare(i32* %120, i32* %121)
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %15, align 4
  br label %113

126:                                              ; preds = %113
  %127 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  %128 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %129 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %130 = call i32 @fmul(i32* %127, i32* %128, i32* %129)
  %131 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %132 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  %133 = call i32 @fsquare(i32* %131, i32* %132)
  %134 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %135 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %136 = call i32 @fsquare(i32* %134, i32* %135)
  store i32 2, i32* %15, align 4
  br label %137

137:                                              ; preds = %147, %126
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %138, 50
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %142 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %143 = call i32 @fsquare(i32* %141, i32* %142)
  %144 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %145 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %146 = call i32 @fsquare(i32* %144, i32* %145)
  br label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 2
  store i32 %149, i32* %15, align 4
  br label %137

150:                                              ; preds = %137
  %151 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %152 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %153 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  %154 = call i32 @fmul(i32* %151, i32* %152, i32* %153)
  %155 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %156 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %157 = call i32 @fsquare(i32* %155, i32* %156)
  %158 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %159 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %160 = call i32 @fsquare(i32* %158, i32* %159)
  store i32 2, i32* %15, align 4
  br label %161

161:                                              ; preds = %171, %150
  %162 = load i32, i32* %15, align 4
  %163 = icmp slt i32 %162, 100
  br i1 %163, label %164, label %174

164:                                              ; preds = %161
  %165 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %166 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %167 = call i32 @fsquare(i32* %165, i32* %166)
  %168 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %169 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %170 = call i32 @fsquare(i32* %168, i32* %169)
  br label %171

171:                                              ; preds = %164
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %15, align 4
  br label %161

174:                                              ; preds = %161
  %175 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %176 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %177 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %178 = call i32 @fmul(i32* %175, i32* %176, i32* %177)
  %179 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %180 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %181 = call i32 @fsquare(i32* %179, i32* %180)
  %182 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %183 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %184 = call i32 @fsquare(i32* %182, i32* %183)
  store i32 2, i32* %15, align 4
  br label %185

185:                                              ; preds = %195, %174
  %186 = load i32, i32* %15, align 4
  %187 = icmp slt i32 %186, 50
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %190 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %191 = call i32 @fsquare(i32* %189, i32* %190)
  %192 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %193 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %194 = call i32 @fsquare(i32* %192, i32* %193)
  br label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 2
  store i32 %197, i32* %15, align 4
  br label %185

198:                                              ; preds = %185
  %199 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %200 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %201 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  %202 = call i32 @fmul(i32* %199, i32* %200, i32* %201)
  %203 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %204 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %205 = call i32 @fsquare(i32* %203, i32* %204)
  %206 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %207 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %208 = call i32 @fsquare(i32* %206, i32* %207)
  %209 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %210 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %211 = call i32 @fsquare(i32* %209, i32* %210)
  %212 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %213 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %214 = call i32 @fsquare(i32* %212, i32* %213)
  %215 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %216 = getelementptr inbounds [10 x i32], [10 x i32]* %13, i64 0, i64 0
  %217 = call i32 @fsquare(i32* %215, i32* %216)
  %218 = load i32*, i32** %3, align 8
  %219 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %220 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %221 = call i32 @fmul(i32* %218, i32* %219, i32* %220)
  ret void
}

declare dso_local i32 @fsquare(i32*, i32*) #1

declare dso_local i32 @fmul(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
