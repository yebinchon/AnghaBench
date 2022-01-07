; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_strauss_batch.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_strauss_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secp256k1_strauss_state = type { i32*, i32*, i32*, %struct.secp256k1_strauss_point_state*, i32* }
%struct.secp256k1_strauss_point_state = type { i32 }

@WINDOW_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i32 (i32*, i32*, i64, i8*)*, i8*, i64, i64)* @secp256k1_ecmult_strauss_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_ecmult_strauss_batch(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 (i32*, i32*, i64, i8*)* %5, i8* %6, i64 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32 (i32*, i32*, i64, i8*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.secp256k1_strauss_state, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 (i32*, i32*, i64, i8*)* %5, i32 (i32*, i32*, i64, i8*)** %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call i64 @secp256k1_scratch_checkpoint(i32* %26, i32* %27)
  store i64 %28, i64* %24, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @secp256k1_gej_set_infinity(i32* %29)
  %31 = load i32*, i32** %15, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %9
  %34 = load i64, i64* %18, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  br label %150

37:                                               ; preds = %33, %9
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i64, i64* %18, align 8
  %41 = mul i64 %40, 4
  %42 = call i64 @secp256k1_scratch_alloc(i32* %38, i32* %39, i64 %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %20, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %18, align 8
  %47 = mul i64 %46, 4
  %48 = call i64 @secp256k1_scratch_alloc(i32* %44, i32* %45, i64 %47)
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %21, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i64, i64* %18, align 8
  %53 = load i32, i32* @WINDOW_A, align 4
  %54 = call i64 @ECMULT_TABLE_SIZE(i32 %53)
  %55 = mul i64 %52, %54
  %56 = mul i64 %55, 4
  %57 = call i64 @secp256k1_scratch_alloc(i32* %50, i32* %51, i64 %56)
  %58 = inttoptr i64 %57 to i32*
  %59 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %22, i32 0, i32 2
  store i32* %58, i32** %59, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i64, i64* %18, align 8
  %63 = load i32, i32* @WINDOW_A, align 4
  %64 = call i64 @ECMULT_TABLE_SIZE(i32 %63)
  %65 = mul i64 %62, %64
  %66 = mul i64 %65, 4
  %67 = call i64 @secp256k1_scratch_alloc(i32* %60, i32* %61, i64 %66)
  %68 = inttoptr i64 %67 to i32*
  %69 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %22, i32 0, i32 1
  store i32* %68, i32** %69, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i64, i64* %18, align 8
  %73 = load i32, i32* @WINDOW_A, align 4
  %74 = call i64 @ECMULT_TABLE_SIZE(i32 %73)
  %75 = mul i64 %72, %74
  %76 = mul i64 %75, 4
  %77 = call i64 @secp256k1_scratch_alloc(i32* %70, i32* %71, i64 %76)
  %78 = inttoptr i64 %77 to i32*
  %79 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %22, i32 0, i32 0
  store i32* %78, i32** %79, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i64, i64* %18, align 8
  %83 = mul i64 %82, 4
  %84 = call i64 @secp256k1_scratch_alloc(i32* %80, i32* %81, i64 %83)
  %85 = inttoptr i64 %84 to %struct.secp256k1_strauss_point_state*
  %86 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %22, i32 0, i32 3
  store %struct.secp256k1_strauss_point_state* %85, %struct.secp256k1_strauss_point_state** %86, align 8
  %87 = load i32*, i32** %20, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %104, label %89

89:                                               ; preds = %37
  %90 = load i32*, i32** %21, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %104, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %22, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %22, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.secp256k1_strauss_state, %struct.secp256k1_strauss_state* %22, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %100, %96, %92, %89, %37
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i64, i64* %24, align 8
  %108 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %105, i32* %106, i64 %107)
  store i32 0, i32* %10, align 4
  br label %150

109:                                              ; preds = %100
  store i64 0, i64* %23, align 8
  br label %110

110:                                              ; preds = %135, %109
  %111 = load i64, i64* %23, align 8
  %112 = load i64, i64* %18, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %110
  %115 = load i32 (i32*, i32*, i64, i8*)*, i32 (i32*, i32*, i64, i8*)** %16, align 8
  %116 = load i32*, i32** %21, align 8
  %117 = load i64, i64* %23, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i64, i64* %23, align 8
  %120 = load i64, i64* %19, align 8
  %121 = add i64 %119, %120
  %122 = load i8*, i8** %17, align 8
  %123 = call i32 %115(i32* %118, i32* %25, i64 %121, i8* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %114
  %126 = load i32*, i32** %11, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = load i64, i64* %24, align 8
  %129 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %126, i32* %127, i64 %128)
  store i32 0, i32* %10, align 4
  br label %150

130:                                              ; preds = %114
  %131 = load i32*, i32** %20, align 8
  %132 = load i64, i64* %23, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = call i32 @secp256k1_gej_set_ge(i32* %133, i32* %25)
  br label %135

135:                                              ; preds = %130
  %136 = load i64, i64* %23, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %23, align 8
  br label %110

138:                                              ; preds = %110
  %139 = load i32*, i32** %12, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = load i64, i64* %18, align 8
  %142 = load i32*, i32** %20, align 8
  %143 = load i32*, i32** %21, align 8
  %144 = load i32*, i32** %15, align 8
  %145 = call i32 @secp256k1_ecmult_strauss_wnaf(i32* %139, %struct.secp256k1_strauss_state* %22, i32* %140, i64 %141, i32* %142, i32* %143, i32* %144)
  %146 = load i32*, i32** %11, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = load i64, i64* %24, align 8
  %149 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %146, i32* %147, i64 %148)
  store i32 1, i32* %10, align 4
  br label %150

150:                                              ; preds = %138, %125, %104, %36
  %151 = load i32, i32* %10, align 4
  ret i32 %151
}

declare dso_local i64 @secp256k1_scratch_checkpoint(i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_set_infinity(i32*) #1

declare dso_local i64 @secp256k1_scratch_alloc(i32*, i32*, i64) #1

declare dso_local i64 @ECMULT_TABLE_SIZE(i32) #1

declare dso_local i32 @secp256k1_scratch_apply_checkpoint(i32*, i32*, i64) #1

declare dso_local i32 @secp256k1_gej_set_ge(i32*, i32*) #1

declare dso_local i32 @secp256k1_ecmult_strauss_wnaf(i32*, %struct.secp256k1_strauss_state*, i32*, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
