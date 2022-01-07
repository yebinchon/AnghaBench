; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_pippenger_wnaf.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_pippenger_wnaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secp256k1_pippenger_state = type { i32*, %struct.secp256k1_pippenger_point_state* }
%struct.secp256k1_pippenger_point_state = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.secp256k1_pippenger_state*, i32*, i32*, i32*, i64)* @secp256k1_ecmult_pippenger_wnaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_ecmult_pippenger_wnaf(i32* %0, i32 %1, %struct.secp256k1_pippenger_state* %2, i32* %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.secp256k1_pippenger_state*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.secp256k1_pippenger_point_state, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.secp256k1_pippenger_state* %2, %struct.secp256k1_pippenger_state** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i64 @WNAF_SIZE(i32 %28)
  store i64 %29, i64* %16, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %30

30:                                               ; preds = %76, %7
  %31 = load i64, i64* %17, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %30
  %35 = load i32*, i32** %13, align 8
  %36 = load i64, i64* %17, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call i64 @secp256k1_scalar_is_zero(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i32*, i32** %14, align 8
  %42 = load i64, i64* %17, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = call i64 @secp256k1_ge_is_infinity(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34
  br label %76

47:                                               ; preds = %40
  %48 = load i64, i64* %17, align 8
  %49 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %11, align 8
  %50 = getelementptr inbounds %struct.secp256k1_pippenger_state, %struct.secp256k1_pippenger_state* %49, i32 0, i32 1
  %51 = load %struct.secp256k1_pippenger_point_state*, %struct.secp256k1_pippenger_point_state** %50, align 8
  %52 = load i64, i64* %18, align 8
  %53 = getelementptr inbounds %struct.secp256k1_pippenger_point_state, %struct.secp256k1_pippenger_point_state* %51, i64 %52
  %54 = getelementptr inbounds %struct.secp256k1_pippenger_point_state, %struct.secp256k1_pippenger_point_state* %53, i32 0, i32 0
  store i64 %48, i64* %54, align 8
  %55 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %11, align 8
  %56 = getelementptr inbounds %struct.secp256k1_pippenger_state, %struct.secp256k1_pippenger_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i64, i64* %16, align 8
  %60 = mul i64 %58, %59
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32*, i32** %13, align 8
  %63 = load i64, i64* %17, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @secp256k1_wnaf_fixed(i32* %61, i32* %64, i32 %66)
  %68 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %11, align 8
  %69 = getelementptr inbounds %struct.secp256k1_pippenger_state, %struct.secp256k1_pippenger_state* %68, i32 0, i32 1
  %70 = load %struct.secp256k1_pippenger_point_state*, %struct.secp256k1_pippenger_point_state** %69, align 8
  %71 = load i64, i64* %18, align 8
  %72 = getelementptr inbounds %struct.secp256k1_pippenger_point_state, %struct.secp256k1_pippenger_point_state* %70, i64 %71
  %73 = getelementptr inbounds %struct.secp256k1_pippenger_point_state, %struct.secp256k1_pippenger_point_state* %72, i32 0, i32 1
  store i32 %67, i32* %73, align 8
  %74 = load i64, i64* %18, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %18, align 8
  br label %76

76:                                               ; preds = %47, %46
  %77 = load i64, i64* %17, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %17, align 8
  br label %30

79:                                               ; preds = %30
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @secp256k1_gej_set_infinity(i32* %80)
  %82 = load i64, i64* %18, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %8, align 4
  br label %245

85:                                               ; preds = %79
  %86 = load i64, i64* %16, align 8
  %87 = sub i64 %86, 1
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %241, %85
  %90 = load i32, i32* %19, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %244

92:                                               ; preds = %89
  store i32 0, i32* %20, align 4
  br label %93

93:                                               ; preds = %105, %92
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 2
  %97 = call i32 @ECMULT_TABLE_SIZE(i32 %96)
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @secp256k1_gej_set_infinity(i32* %103)
  br label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %20, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %20, align 4
  br label %93

108:                                              ; preds = %93
  store i64 0, i64* %17, align 8
  br label %109

109:                                              ; preds = %195, %108
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %18, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %198

113:                                              ; preds = %109
  %114 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %11, align 8
  %115 = getelementptr inbounds %struct.secp256k1_pippenger_state, %struct.secp256k1_pippenger_state* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* %16, align 8
  %119 = mul i64 %117, %118
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %119, %121
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %22, align 4
  %125 = load %struct.secp256k1_pippenger_state*, %struct.secp256k1_pippenger_state** %11, align 8
  %126 = getelementptr inbounds %struct.secp256k1_pippenger_state, %struct.secp256k1_pippenger_state* %125, i32 0, i32 1
  %127 = load %struct.secp256k1_pippenger_point_state*, %struct.secp256k1_pippenger_point_state** %126, align 8
  %128 = load i64, i64* %17, align 8
  %129 = getelementptr inbounds %struct.secp256k1_pippenger_point_state, %struct.secp256k1_pippenger_point_state* %127, i64 %128
  %130 = bitcast %struct.secp256k1_pippenger_point_state* %23 to i8*
  %131 = bitcast %struct.secp256k1_pippenger_point_state* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 16, i1 false)
  %132 = load i32, i32* %19, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %113
  %135 = getelementptr inbounds %struct.secp256k1_pippenger_point_state, %struct.secp256k1_pippenger_point_state* %23, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %26, align 4
  %137 = load i32, i32* %26, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %134
  %140 = load i32*, i32** %14, align 8
  %141 = getelementptr inbounds %struct.secp256k1_pippenger_point_state, %struct.secp256k1_pippenger_point_state* %23, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = call i32 @secp256k1_ge_neg(i32* %24, i32* %143)
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = call i32 @secp256k1_gej_add_ge_var(i32* %146, i32* %148, i32* %24, i32* null)
  br label %150

150:                                              ; preds = %139, %134
  br label %151

151:                                              ; preds = %150, %113
  %152 = load i32, i32* %22, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load i32, i32* %22, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sdiv i32 %156, 2
  store i32 %157, i32* %25, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = load i32, i32* %25, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %25, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32*, i32** %14, align 8
  %167 = getelementptr inbounds %struct.secp256k1_pippenger_point_state, %struct.secp256k1_pippenger_point_state* %23, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = call i32 @secp256k1_gej_add_ge_var(i32* %161, i32* %165, i32* %169, i32* null)
  br label %194

171:                                              ; preds = %151
  %172 = load i32, i32* %22, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %171
  %175 = load i32, i32* %22, align 4
  %176 = add nsw i32 %175, 1
  %177 = sub nsw i32 0, %176
  %178 = sdiv i32 %177, 2
  store i32 %178, i32* %25, align 4
  %179 = load i32*, i32** %14, align 8
  %180 = getelementptr inbounds %struct.secp256k1_pippenger_point_state, %struct.secp256k1_pippenger_point_state* %23, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = call i32 @secp256k1_ge_neg(i32* %24, i32* %182)
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %25, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %25, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = call i32 @secp256k1_gej_add_ge_var(i32* %187, i32* %191, i32* %24, i32* null)
  br label %193

193:                                              ; preds = %174, %171
  br label %194

194:                                              ; preds = %193, %154
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %17, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %17, align 8
  br label %109

198:                                              ; preds = %109
  store i32 0, i32* %20, align 4
  br label %199

199:                                              ; preds = %207, %198
  %200 = load i32, i32* %20, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load i32*, i32** %12, align 8
  %205 = load i32*, i32** %12, align 8
  %206 = call i32 @secp256k1_gej_double_var(i32* %204, i32* %205, i32* null)
  br label %207

207:                                              ; preds = %203
  %208 = load i32, i32* %20, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %20, align 4
  br label %199

210:                                              ; preds = %199
  %211 = call i32 @secp256k1_gej_set_infinity(i32* %21)
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, 2
  %214 = call i32 @ECMULT_TABLE_SIZE(i32 %213)
  %215 = sub nsw i32 %214, 1
  store i32 %215, i32* %20, align 4
  br label %216

216:                                              ; preds = %228, %210
  %217 = load i32, i32* %20, align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %216
  %220 = load i32*, i32** %9, align 8
  %221 = load i32, i32* %20, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = call i32 @secp256k1_gej_add_var(i32* %21, i32* %21, i32* %223, i32* null)
  %225 = load i32*, i32** %12, align 8
  %226 = load i32*, i32** %12, align 8
  %227 = call i32 @secp256k1_gej_add_var(i32* %225, i32* %226, i32* %21, i32* null)
  br label %228

228:                                              ; preds = %219
  %229 = load i32, i32* %20, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %20, align 4
  br label %216

231:                                              ; preds = %216
  %232 = load i32*, i32** %9, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = call i32 @secp256k1_gej_add_var(i32* %21, i32* %21, i32* %233, i32* null)
  %235 = load i32*, i32** %12, align 8
  %236 = load i32*, i32** %12, align 8
  %237 = call i32 @secp256k1_gej_double_var(i32* %235, i32* %236, i32* null)
  %238 = load i32*, i32** %12, align 8
  %239 = load i32*, i32** %12, align 8
  %240 = call i32 @secp256k1_gej_add_var(i32* %238, i32* %239, i32* %21, i32* null)
  br label %241

241:                                              ; preds = %231
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %19, align 4
  br label %89

244:                                              ; preds = %89
  store i32 1, i32* %8, align 4
  br label %245

245:                                              ; preds = %244, %84
  %246 = load i32, i32* %8, align 4
  ret i32 %246
}

declare dso_local i64 @WNAF_SIZE(i32) #1

declare dso_local i64 @secp256k1_scalar_is_zero(i32*) #1

declare dso_local i64 @secp256k1_ge_is_infinity(i32*) #1

declare dso_local i32 @secp256k1_wnaf_fixed(i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_gej_set_infinity(i32*) #1

declare dso_local i32 @ECMULT_TABLE_SIZE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @secp256k1_ge_neg(i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_ge_var(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_double_var(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_var(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
