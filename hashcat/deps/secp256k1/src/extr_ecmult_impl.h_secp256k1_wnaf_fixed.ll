; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_wnaf_fixed.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_wnaf_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WNAF_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @secp256k1_wnaf_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_wnaf_fixed(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @secp256k1_scalar_is_zero(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @WNAF_SIZE(i32 %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %20

33:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %210

34:                                               ; preds = %3
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @secp256k1_scalar_is_even(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @secp256k1_scalar_get_bits_var(i32* %40, i32 0, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @WNAF_BITS, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @WNAF_SIZE(i32 %48)
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sub nsw i32 %47, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @WNAF_SIZE(i32 %54)
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %85, %39
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %57
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @WNAF_SIZE(i32 %66)
  %68 = sub nsw i32 %67, 1
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %11, align 4
  br label %74

72:                                               ; preds = %60
  %73 = load i32, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = call i32 @secp256k1_scalar_get_bits_var(i32* %61, i32 %64, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %88

80:                                               ; preds = %74
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %9, align 4
  br label %57

88:                                               ; preds = %79, %57
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %90

90:                                               ; preds = %205, %88
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %208

94:                                               ; preds = %90
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @WNAF_SIZE(i32 %100)
  %102 = sub nsw i32 %101, 1
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* %11, align 4
  br label %108

106:                                              ; preds = %94
  %107 = load i32, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = call i32 @secp256k1_scalar_get_bits_var(i32* %95, i32 %98, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %108
  %115 = load i32, i32* %7, align 4
  %116 = shl i32 1, %115
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, %116
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  br label %136

130:                                              ; preds = %108
  %131 = load i32, i32* %14, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %130, %114
  %137 = load i32, i32* %9, align 4
  %138 = icmp sge i32 %137, 2
  br i1 %138, label %139, label %205

139:                                              ; preds = %136
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %155

147:                                              ; preds = %139
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %171, label %155

155:                                              ; preds = %147, %139
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %205

163:                                              ; preds = %155
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sub nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %205

171:                                              ; preds = %163, %147
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %189

179:                                              ; preds = %171
  %180 = load i32, i32* %7, align 4
  %181 = shl i32 1, %180
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sub nsw i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, %181
  store i32 %188, i32* %186, align 4
  br label %199

189:                                              ; preds = %171
  %190 = load i32, i32* %7, align 4
  %191 = shl i32 1, %190
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sub nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %197, %191
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %189, %179
  %200 = load i32*, i32** %5, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  store i32 0, i32* %204, align 4
  br label %205

205:                                              ; preds = %199, %163, %155, %136
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %90

208:                                              ; preds = %90
  %209 = load i32, i32* %8, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %208, %33
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i64 @secp256k1_scalar_is_zero(i32*) #1

declare dso_local i32 @WNAF_SIZE(i32) #1

declare dso_local i64 @secp256k1_scalar_is_even(i32*) #1

declare dso_local i32 @secp256k1_scalar_get_bits_var(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
