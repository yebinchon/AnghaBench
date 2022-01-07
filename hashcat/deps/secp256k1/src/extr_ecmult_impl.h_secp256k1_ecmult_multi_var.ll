; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_multi_var.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_multi_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMULT_PIPPENGER_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i32, i8*, i64)* @secp256k1_ecmult_multi_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_ecmult_multi_var(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32 (i32*, i32*, i32*, i32*, i32*, i32, i8*, i64, i64)*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @secp256k1_gej_set_infinity(i32* %26)
  %28 = load i32*, i32** %14, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %8
  %31 = load i64, i64* %17, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  br label %139

34:                                               ; preds = %30, %8
  %35 = load i64, i64* %17, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = call i32 @secp256k1_scalar_set_int(i32* %22, i32 0)
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @secp256k1_ecmult(i32* %39, i32* %40, i32* %41, i32* %22, i32* %42)
  store i32 1, i32* %9, align 4
  br label %139

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32*, i32** %12, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i8*, i8** %16, align 8
  %54 = load i64, i64* %17, align 8
  %55 = call i32 @secp256k1_ecmult_multi_simple_var(i32* %49, i32* %50, i32* %51, i32 %52, i8* %53, i64 %54)
  store i32 %55, i32* %9, align 4
  br label %139

56:                                               ; preds = %45
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @secp256k1_pippenger_max_points(i32* %57, i32* %58)
  %60 = load i64, i64* %17, align 8
  %61 = call i32 @secp256k1_ecmult_multi_batch_size_helper(i64* %20, i64* %21, i32 %59, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %56
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i8*, i8** %16, align 8
  %69 = load i64, i64* %17, align 8
  %70 = call i32 @secp256k1_ecmult_multi_simple_var(i32* %64, i32* %65, i32* %66, i32 %67, i8* %68, i64 %69)
  store i32 %70, i32* %9, align 4
  br label %139

71:                                               ; preds = %56
  %72 = load i64, i64* %21, align 8
  %73 = load i64, i64* @ECMULT_PIPPENGER_THRESHOLD, align 8
  %74 = icmp uge i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 (i32*, i32*, i32*, i32*, i32*, i32, i8*, i64, i64)* @secp256k1_ecmult_pippenger_batch, i32 (i32*, i32*, i32*, i32*, i32*, i32, i8*, i64, i64)** %19, align 8
  br label %92

76:                                               ; preds = %71
  %77 = load i32*, i32** %10, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @secp256k1_strauss_max_points(i32* %77, i32* %78)
  %80 = load i64, i64* %17, align 8
  %81 = call i32 @secp256k1_ecmult_multi_batch_size_helper(i64* %20, i64* %21, i32 %79, i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %76
  %84 = load i32*, i32** %11, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i8*, i8** %16, align 8
  %89 = load i64, i64* %17, align 8
  %90 = call i32 @secp256k1_ecmult_multi_simple_var(i32* %84, i32* %85, i32* %86, i32 %87, i8* %88, i64 %89)
  store i32 %90, i32* %9, align 4
  br label %139

91:                                               ; preds = %76
  store i32 (i32*, i32*, i32*, i32*, i32*, i32, i8*, i64, i64)* @secp256k1_ecmult_strauss_batch, i32 (i32*, i32*, i32*, i32*, i32*, i32, i8*, i64, i64)** %19, align 8
  br label %92

92:                                               ; preds = %91, %75
  store i64 0, i64* %18, align 8
  br label %93

93:                                               ; preds = %135, %92
  %94 = load i64, i64* %18, align 8
  %95 = load i64, i64* %20, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %93
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %21, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i64, i64* %17, align 8
  br label %105

103:                                              ; preds = %97
  %104 = load i64, i64* %21, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i64 [ %102, %101 ], [ %104, %103 ]
  store i64 %106, i64* %23, align 8
  %107 = load i64, i64* %21, align 8
  %108 = load i64, i64* %18, align 8
  %109 = mul i64 %107, %108
  store i64 %109, i64* %24, align 8
  %110 = load i32 (i32*, i32*, i32*, i32*, i32*, i32, i8*, i64, i64)*, i32 (i32*, i32*, i32*, i32*, i32*, i32, i8*, i64, i64)** %19, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = load i64, i64* %18, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = load i32*, i32** %14, align 8
  br label %119

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32* [ %117, %116 ], [ null, %118 ]
  %121 = load i32, i32* %15, align 4
  %122 = load i8*, i8** %16, align 8
  %123 = load i64, i64* %23, align 8
  %124 = load i64, i64* %24, align 8
  %125 = call i32 %110(i32* %111, i32* %112, i32* %113, i32* %25, i32* %120, i32 %121, i8* %122, i64 %123, i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %119
  store i32 0, i32* %9, align 4
  br label %139

128:                                              ; preds = %119
  %129 = load i32*, i32** %13, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = call i32 @secp256k1_gej_add_var(i32* %129, i32* %130, i32* %25, i32* null)
  %132 = load i64, i64* %23, align 8
  %133 = load i64, i64* %17, align 8
  %134 = sub i64 %133, %132
  store i64 %134, i64* %17, align 8
  br label %135

135:                                              ; preds = %128
  %136 = load i64, i64* %18, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %18, align 8
  br label %93

138:                                              ; preds = %93
  store i32 1, i32* %9, align 4
  br label %139

139:                                              ; preds = %138, %127, %83, %63, %48, %37, %33
  %140 = load i32, i32* %9, align 4
  ret i32 %140
}

declare dso_local i32 @secp256k1_gej_set_infinity(i32*) #1

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #1

declare dso_local i32 @secp256k1_ecmult(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_ecmult_multi_simple_var(i32*, i32*, i32*, i32, i8*, i64) #1

declare dso_local i32 @secp256k1_ecmult_multi_batch_size_helper(i64*, i64*, i32, i64) #1

declare dso_local i32 @secp256k1_pippenger_max_points(i32*, i32*) #1

declare dso_local i32 @secp256k1_ecmult_pippenger_batch(i32*, i32*, i32*, i32*, i32*, i32, i8*, i64, i64) #1

declare dso_local i32 @secp256k1_strauss_max_points(i32*, i32*) #1

declare dso_local i32 @secp256k1_ecmult_strauss_batch(i32*, i32*, i32*, i32*, i32*, i32, i8*, i64, i64) #1

declare dso_local i32 @secp256k1_gej_add_var(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
