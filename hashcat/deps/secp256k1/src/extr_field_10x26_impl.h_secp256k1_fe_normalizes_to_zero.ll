; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_10x26_impl.h_secp256k1_fe_normalizes_to_zero.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_10x26_impl.h_secp256k1_fe_normalizes_to_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @secp256k1_fe_normalizes_to_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_fe_normalizes_to_zero(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
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
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 7
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 9
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = ashr i32 %66, 22
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = and i64 %69, 4194303
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 977
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %15, align 4
  %80 = shl i32 %79, 6
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %3, align 4
  %84 = ashr i32 %83, 26
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = and i64 %88, 67108863
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = xor i64 %93, 976
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %4, align 4
  %97 = ashr i32 %96, 26
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = and i64 %101, 67108863
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %13, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = xor i64 %108, 64
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = and i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %5, align 4
  %115 = ashr i32 %114, 26
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = and i64 %119, 67108863
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %13, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %14, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %6, align 4
  %129 = ashr i32 %128, 26
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = and i64 %133, 67108863
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %13, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %14, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %7, align 4
  %143 = ashr i32 %142, 26
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = and i64 %147, 67108863
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %13, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %14, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %8, align 4
  %157 = ashr i32 %156, 26
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = and i64 %161, 67108863
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %13, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %14, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %9, align 4
  %171 = ashr i32 %170, 26
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = and i64 %175, 67108863
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %13, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %14, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %10, align 4
  %185 = ashr i32 %184, 26
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = and i64 %189, 67108863
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %13, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %14, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %11, align 4
  %199 = ashr i32 %198, 26
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = and i64 %203, 67108863
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %13, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %14, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %13, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = xor i64 %216, 62914560
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = and i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %12, align 4
  %223 = ashr i32 %222, 23
  %224 = icmp eq i32 %223, 0
  %225 = zext i1 %224 to i32
  %226 = call i32 @VERIFY_CHECK(i32 %225)
  %227 = load i32, i32* %13, align 4
  %228 = icmp eq i32 %227, 0
  %229 = zext i1 %228 to i32
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = icmp eq i64 %231, 67108863
  %233 = zext i1 %232 to i32
  %234 = or i32 %229, %233
  ret i32 %234
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
