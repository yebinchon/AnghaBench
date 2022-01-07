; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests_exhaustive.c_test_exhaustive_addition.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests_exhaustive.c_test_exhaustive_addition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_exhaustive_addition(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_32__, align 4
  %11 = alloca %struct.TYPE_31__, align 4
  %12 = alloca %struct.TYPE_31__, align 4
  %13 = alloca %struct.TYPE_32__, align 4
  %14 = alloca %struct.TYPE_31__, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i64 0
  %17 = call i32 @secp256k1_ge_is_infinity(%struct.TYPE_32__* %16)
  %18 = call i32 @CHECK(i32 %17)
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i64 0
  %21 = call i32 @secp256k1_gej_is_infinity(%struct.TYPE_31__* %20)
  %22 = call i32 @CHECK(i32 %21)
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %46, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i64 %30
  %32 = call i32 @secp256k1_ge_is_infinity(%struct.TYPE_32__* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @CHECK(i32 %35)
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i64 %39
  %41 = call i32 @secp256k1_gej_is_infinity(%struct.TYPE_31__* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @CHECK(i32 %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %23

49:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %163, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %166

54:                                               ; preds = %50
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 3
  %60 = call i32 @secp256k1_fe_inv(i32* %9, i32* %59)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %159, %54
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %162

65:                                               ; preds = %61
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i64 %68
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i64 %72
  %74 = call i32 @secp256k1_gej_add_var(%struct.TYPE_31__* %11, %struct.TYPE_31__* %69, %struct.TYPE_31__* %73, i32* null)
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = srem i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i64 %81
  %83 = call i32 @ge_equals_gej(%struct.TYPE_32__* %82, %struct.TYPE_31__* %11)
  %84 = load i32, i32* %8, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %65
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i64 %89
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i64 %93
  %95 = call i32 @secp256k1_gej_add_ge(%struct.TYPE_31__* %11, %struct.TYPE_31__* %90, %struct.TYPE_32__* %94)
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %6, align 4
  %101 = srem i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %96, i64 %102
  %104 = call i32 @ge_equals_gej(%struct.TYPE_32__* %103, %struct.TYPE_31__* %11)
  br label %105

105:                                              ; preds = %86, %65
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %106, i64 %108
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i64 %112
  %114 = call i32 @secp256k1_gej_add_ge_var(%struct.TYPE_31__* %11, %struct.TYPE_31__* %109, %struct.TYPE_32__* %113, i32* null)
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %6, align 4
  %120 = srem i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i64 %121
  %123 = call i32 @ge_equals_gej(%struct.TYPE_32__* %122, %struct.TYPE_31__* %11)
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 2
  store i32 %129, i32* %130, align 4
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 1
  store i32 %136, i32* %137, align 4
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i64 %147
  %149 = call i32 @secp256k1_gej_add_zinv_var(%struct.TYPE_31__* %11, %struct.TYPE_31__* %148, %struct.TYPE_32__* %10, i32* %9)
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %6, align 4
  %155 = srem i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i64 %156
  %158 = call i32 @ge_equals_gej(%struct.TYPE_32__* %157, %struct.TYPE_31__* %11)
  br label %159

159:                                              ; preds = %105
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %61

162:                                              ; preds = %61
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %50

166:                                              ; preds = %50
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %202, %166
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %205

171:                                              ; preds = %167
  %172 = load i32, i32* %7, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %171
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i64 %177
  %179 = call i32 @secp256k1_gej_double_nonzero(%struct.TYPE_31__* %12, %struct.TYPE_31__* %178, i32* null)
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %181 = load i32, i32* %7, align 4
  %182 = mul nsw i32 2, %181
  %183 = load i32, i32* %6, align 4
  %184 = srem i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i64 %185
  %187 = call i32 @ge_equals_gej(%struct.TYPE_32__* %186, %struct.TYPE_31__* %12)
  br label %188

188:                                              ; preds = %174, %171
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i64 %191
  %193 = call i32 @secp256k1_gej_double_var(%struct.TYPE_31__* %12, %struct.TYPE_31__* %192, i32* null)
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %195 = load i32, i32* %7, align 4
  %196 = mul nsw i32 2, %195
  %197 = load i32, i32* %6, align 4
  %198 = srem i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i64 %199
  %201 = call i32 @ge_equals_gej(%struct.TYPE_32__* %200, %struct.TYPE_31__* %12)
  br label %202

202:                                              ; preds = %188
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %167

205:                                              ; preds = %167
  store i32 1, i32* %7, align 4
  br label %206

206:                                              ; preds = %235, %205
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %238

210:                                              ; preds = %206
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i64 %213
  %215 = call i32 @secp256k1_ge_neg(%struct.TYPE_32__* %13, %struct.TYPE_32__* %214)
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %7, align 4
  %219 = sub nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %216, i64 %220
  %222 = call i32 @ge_equals_ge(%struct.TYPE_32__* %221, %struct.TYPE_32__* %13)
  %223 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i64 %225
  %227 = call i32 @secp256k1_gej_neg(%struct.TYPE_31__* %14, %struct.TYPE_31__* %226)
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* %7, align 4
  %231 = sub nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i64 %232
  %234 = call i32 @ge_equals_gej(%struct.TYPE_32__* %233, %struct.TYPE_31__* %14)
  br label %235

235:                                              ; preds = %210
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %7, align 4
  br label %206

238:                                              ; preds = %206
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_ge_is_infinity(%struct.TYPE_32__*) #1

declare dso_local i32 @secp256k1_gej_is_infinity(%struct.TYPE_31__*) #1

declare dso_local i32 @secp256k1_fe_inv(i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_var(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32*) #1

declare dso_local i32 @ge_equals_gej(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @secp256k1_gej_add_ge(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_32__*) #1

declare dso_local i32 @secp256k1_gej_add_ge_var(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_zinv_var(%struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @secp256k1_gej_double_nonzero(%struct.TYPE_31__*, %struct.TYPE_31__*, i32*) #1

declare dso_local i32 @secp256k1_gej_double_var(%struct.TYPE_31__*, %struct.TYPE_31__*, i32*) #1

declare dso_local i32 @secp256k1_ge_neg(%struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i32 @ge_equals_ge(%struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i32 @secp256k1_gej_neg(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
