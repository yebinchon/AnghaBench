; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_convert.c_base32_decode.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_convert.c_base32_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @base32_decode(i32 (i32)* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32 (i32)*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store i32 (i32)* %0, i32 (i32)** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %31 = load i32*, i32** %6, align 8
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %10, align 8
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %215, %4
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %218

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, 0
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 0, %46 ]
  store i32 %48, i32* %12, align 4
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 1
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i32 [ %56, %53 ], [ 0, %57 ]
  store i32 %59, i32* %13, align 4
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 2
  %62 = load i64, i64* %7, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  br label %69

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i32 [ %67, %64 ], [ 0, %68 ]
  store i32 %70, i32* %14, align 4
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %71, 3
  %73 = load i64, i64* %7, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  br label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i32 [ %78, %75 ], [ 0, %79 ]
  store i32 %81, i32* %15, align 4
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 4
  %84 = load i64, i64* %7, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load i32, i32* %88, align 4
  br label %91

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i32 [ %89, %86 ], [ 0, %90 ]
  store i32 %92, i32* %16, align 4
  %93 = load i64, i64* %11, align 8
  %94 = add i64 %93, 5
  %95 = load i64, i64* %7, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = load i32, i32* %99, align 4
  br label %102

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i32 [ %100, %97 ], [ 0, %101 ]
  store i32 %103, i32* %17, align 4
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, 6
  %106 = load i64, i64* %7, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  %111 = load i32, i32* %110, align 4
  br label %113

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %108
  %114 = phi i32 [ %111, %108 ], [ 0, %112 ]
  store i32 %114, i32* %18, align 4
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 7
  %117 = load i64, i64* %7, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 7
  %122 = load i32, i32* %121, align 4
  br label %124

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %119
  %125 = phi i32 [ %122, %119 ], [ 0, %123 ]
  store i32 %125, i32* %19, align 4
  %126 = load i32 (i32)*, i32 (i32)** %5, align 8
  %127 = load i32, i32* %12, align 4
  %128 = and i32 %127, 127
  %129 = call i32 %126(i32 %128)
  store i32 %129, i32* %20, align 4
  %130 = load i32 (i32)*, i32 (i32)** %5, align 8
  %131 = load i32, i32* %13, align 4
  %132 = and i32 %131, 127
  %133 = call i32 %130(i32 %132)
  store i32 %133, i32* %21, align 4
  %134 = load i32 (i32)*, i32 (i32)** %5, align 8
  %135 = load i32, i32* %14, align 4
  %136 = and i32 %135, 127
  %137 = call i32 %134(i32 %136)
  store i32 %137, i32* %22, align 4
  %138 = load i32 (i32)*, i32 (i32)** %5, align 8
  %139 = load i32, i32* %15, align 4
  %140 = and i32 %139, 127
  %141 = call i32 %138(i32 %140)
  store i32 %141, i32* %23, align 4
  %142 = load i32 (i32)*, i32 (i32)** %5, align 8
  %143 = load i32, i32* %16, align 4
  %144 = and i32 %143, 127
  %145 = call i32 %142(i32 %144)
  store i32 %145, i32* %24, align 4
  %146 = load i32 (i32)*, i32 (i32)** %5, align 8
  %147 = load i32, i32* %17, align 4
  %148 = and i32 %147, 127
  %149 = call i32 %146(i32 %148)
  store i32 %149, i32* %25, align 4
  %150 = load i32 (i32)*, i32 (i32)** %5, align 8
  %151 = load i32, i32* %18, align 4
  %152 = and i32 %151, 127
  %153 = call i32 %150(i32 %152)
  store i32 %153, i32* %26, align 4
  %154 = load i32 (i32)*, i32 (i32)** %5, align 8
  %155 = load i32, i32* %19, align 4
  %156 = and i32 %155, 127
  %157 = call i32 %154(i32 %156)
  store i32 %157, i32* %27, align 4
  %158 = load i32, i32* %20, align 4
  %159 = shl i32 %158, 3
  %160 = and i32 %159, 248
  %161 = load i32, i32* %21, align 4
  %162 = ashr i32 %161, 2
  %163 = and i32 %162, 7
  %164 = or i32 %160, %163
  %165 = load i32*, i32** %10, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %21, align 4
  %168 = shl i32 %167, 6
  %169 = and i32 %168, 192
  %170 = load i32, i32* %22, align 4
  %171 = shl i32 %170, 1
  %172 = and i32 %171, 62
  %173 = or i32 %169, %172
  %174 = load i32, i32* %23, align 4
  %175 = ashr i32 %174, 4
  %176 = and i32 %175, 1
  %177 = or i32 %173, %176
  %178 = load i32*, i32** %10, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %23, align 4
  %181 = shl i32 %180, 4
  %182 = and i32 %181, 240
  %183 = load i32, i32* %24, align 4
  %184 = ashr i32 %183, 1
  %185 = and i32 %184, 15
  %186 = or i32 %182, %185
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %24, align 4
  %190 = shl i32 %189, 7
  %191 = and i32 %190, 128
  %192 = load i32, i32* %25, align 4
  %193 = shl i32 %192, 2
  %194 = and i32 %193, 124
  %195 = or i32 %191, %194
  %196 = load i32, i32* %26, align 4
  %197 = ashr i32 %196, 3
  %198 = and i32 %197, 3
  %199 = or i32 %195, %198
  %200 = load i32*, i32** %10, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* %26, align 4
  %203 = shl i32 %202, 5
  %204 = and i32 %203, 224
  %205 = load i32, i32* %27, align 4
  %206 = ashr i32 %205, 0
  %207 = and i32 %206, 31
  %208 = or i32 %204, %207
  %209 = load i32*, i32** %10, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  store i32 %208, i32* %210, align 4
  %211 = load i32*, i32** %9, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 8
  store i32* %212, i32** %9, align 8
  %213 = load i32*, i32** %10, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 5
  store i32* %214, i32** %10, align 8
  br label %215

215:                                              ; preds = %124
  %216 = load i64, i64* %11, align 8
  %217 = add i64 %216, 8
  store i64 %217, i64* %11, align 8
  br label %33

218:                                              ; preds = %33
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  br label %219

219:                                              ; preds = %231, %218
  %220 = load i64, i64* %29, align 8
  %221 = load i64, i64* %7, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %219
  %224 = load i32*, i32** %6, align 8
  %225 = load i64, i64* %29, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 61
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %231

230:                                              ; preds = %223
  br label %236

231:                                              ; preds = %229
  %232 = load i64, i64* %29, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %29, align 8
  %234 = load i64, i64* %28, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %28, align 8
  br label %219

236:                                              ; preds = %230, %219
  %237 = load i64, i64* %28, align 8
  %238 = mul i64 %237, 5
  %239 = udiv i64 %238, 8
  store i64 %239, i64* %30, align 8
  %240 = load i64, i64* %30, align 8
  ret i64 %240
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
