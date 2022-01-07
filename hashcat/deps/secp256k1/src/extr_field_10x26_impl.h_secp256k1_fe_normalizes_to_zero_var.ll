; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_10x26_impl.h_secp256k1_fe_normalizes_to_zero_var.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_10x26_impl.h_secp256k1_fe_normalizes_to_zero_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @secp256k1_fe_normalizes_to_zero_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_fe_normalizes_to_zero_var(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 9
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = ashr i32 %27, 22
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 977
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 67108863
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = xor i64 %41, 976
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 67108863
  %51 = zext i1 %50 to i32
  %52 = and i32 %47, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %247

55:                                               ; preds = %1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %8, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 6
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %10, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 7
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 8
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = and i64 %97, 4194303
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %16, align 4
  %101 = shl i32 %100, 6
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %4, align 4
  %105 = ashr i32 %104, 26
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = ashr i32 %108, 26
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = and i64 %113, 67108863
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %14, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = xor i64 %120, 64
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = and i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %6, align 4
  %127 = ashr i32 %126, 26
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = and i64 %131, 67108863
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %14, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %15, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %7, align 4
  %141 = ashr i32 %140, 26
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = and i64 %145, 67108863
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %14, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %15, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %8, align 4
  %155 = ashr i32 %154, 26
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = and i64 %159, 67108863
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %14, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %15, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %9, align 4
  %169 = ashr i32 %168, 26
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = and i64 %173, 67108863
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %14, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %15, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %10, align 4
  %183 = ashr i32 %182, 26
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = and i64 %187, 67108863
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %14, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %15, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %15, align 4
  %196 = load i32, i32* %11, align 4
  %197 = ashr i32 %196, 26
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = and i64 %201, 67108863
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %14, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %15, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %15, align 4
  %210 = load i32, i32* %12, align 4
  %211 = ashr i32 %210, 26
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = and i64 %215, 67108863
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* %14, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %14, align 4
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* %15, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %14, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %14, align 4
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = xor i64 %228, 62914560
  %230 = load i32, i32* %15, align 4
  %231 = sext i32 %230 to i64
  %232 = and i64 %231, %229
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %15, align 4
  %234 = load i32, i32* %13, align 4
  %235 = ashr i32 %234, 23
  %236 = icmp eq i32 %235, 0
  %237 = zext i1 %236 to i32
  %238 = call i32 @VERIFY_CHECK(i32 %237)
  %239 = load i32, i32* %14, align 4
  %240 = icmp eq i32 %239, 0
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = icmp eq i64 %243, 67108863
  %245 = zext i1 %244 to i32
  %246 = or i32 %241, %245
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %55, %54
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
