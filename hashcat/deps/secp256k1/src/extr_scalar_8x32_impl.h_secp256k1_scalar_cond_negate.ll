; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_scalar_8x32_impl.h_secp256k1_scalar_cond_negate.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_scalar_8x32_impl.h_secp256k1_scalar_cond_negate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@SECP256K1_N_0 = common dso_local global i32 0, align 4
@SECP256K1_N_1 = common dso_local global i32 0, align 4
@SECP256K1_N_2 = common dso_local global i32 0, align 4
@SECP256K1_N_3 = common dso_local global i32 0, align 4
@SECP256K1_N_4 = common dso_local global i32 0, align 4
@SECP256K1_N_5 = common dso_local global i32 0, align 4
@SECP256K1_N_6 = common dso_local global i32 0, align 4
@SECP256K1_N_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @secp256k1_scalar_cond_negate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_scalar_cond_negate(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i64 @secp256k1_scalar_is_zero(%struct.TYPE_4__* %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = mul i64 4294967295, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = xor i32 %24, %25
  %27 = load i32, i32* @SECP256K1_N_0, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %28, %29
  %31 = add nsw i32 %26, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 32
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = xor i32 %45, %46
  %48 = load i32, i32* @SECP256K1_N_1, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %48, %49
  %51 = add nsw i32 %47, %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 32
  store i32 %62, i32* %7, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = xor i32 %67, %68
  %70 = load i32, i32* @SECP256K1_N_2, align 4
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %70, %71
  %73 = add nsw i32 %69, %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = ashr i32 %83, 32
  store i32 %84, i32* %7, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = xor i32 %89, %90
  %92 = load i32, i32* @SECP256K1_N_3, align 4
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %92, %93
  %95 = add nsw i32 %91, %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %98, %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %7, align 4
  %106 = ashr i32 %105, 32
  store i32 %106, i32* %7, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %5, align 4
  %113 = xor i32 %111, %112
  %114 = load i32, i32* @SECP256K1_N_4, align 4
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %114, %115
  %117 = add nsw i32 %113, %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %6, align 4
  %122 = and i32 %120, %121
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* %7, align 4
  %128 = ashr i32 %127, 32
  store i32 %128, i32* %7, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %5, align 4
  %135 = xor i32 %133, %134
  %136 = load i32, i32* @SECP256K1_N_5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %136, %137
  %139 = add nsw i32 %135, %138
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %142, %143
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 5
  store i32 %144, i32* %148, align 4
  %149 = load i32, i32* %7, align 4
  %150 = ashr i32 %149, 32
  store i32 %150, i32* %7, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 6
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %5, align 4
  %157 = xor i32 %155, %156
  %158 = load i32, i32* @SECP256K1_N_6, align 4
  %159 = load i32, i32* %5, align 4
  %160 = and i32 %158, %159
  %161 = add nsw i32 %157, %160
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %6, align 4
  %166 = and i32 %164, %165
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 6
  store i32 %166, i32* %170, align 4
  %171 = load i32, i32* %7, align 4
  %172 = ashr i32 %171, 32
  store i32 %172, i32* %7, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 7
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %5, align 4
  %179 = xor i32 %177, %178
  %180 = load i32, i32* @SECP256K1_N_7, align 4
  %181 = load i32, i32* %5, align 4
  %182 = and i32 %180, %181
  %183 = add nsw i32 %179, %182
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %6, align 4
  %188 = and i32 %186, %187
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 7
  store i32 %188, i32* %192, align 4
  %193 = load i32, i32* %5, align 4
  %194 = icmp eq i32 %193, 0
  %195 = zext i1 %194 to i32
  %196 = mul nsw i32 2, %195
  %197 = sub nsw i32 %196, 1
  ret i32 %197
}

declare dso_local i64 @secp256k1_scalar_is_zero(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
