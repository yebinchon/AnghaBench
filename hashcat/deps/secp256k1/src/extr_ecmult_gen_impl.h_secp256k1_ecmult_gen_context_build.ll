; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_gen_impl.h_secp256k1_ecmult_gen_context_build.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_gen_impl.h_secp256k1_ecmult_gen_context_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*** }

@ECMULT_GEN_PREC_N = common dso_local global i32 0, align 4
@ECMULT_GEN_PREC_G = common dso_local global i32 0, align 4
@SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE = common dso_local global i64 0, align 8
@secp256k1_ge_const_g = common dso_local global i32 0, align 4
@secp256k1_ecmult_gen_context_build.nums_b32 = internal constant [33 x i8] c"The scalar for this x is unknown\00", align 16
@ECMULT_GEN_PREC_B = common dso_local global i32 0, align 4
@secp256k1_ecmult_static_context = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8**)* @secp256k1_ecmult_gen_context_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_ecmult_gen_context_build(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %21 = load i32, i32* @ECMULT_GEN_PREC_N, align 4
  %22 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %23 = mul nsw i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %5, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %6, align 8
  %27 = load i64, i64* @SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %12, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32***, i32**** %31, align 8
  %33 = icmp ne i32*** %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  br label %171

35:                                               ; preds = %2
  %36 = load i32, i32* @ECMULT_GEN_PREC_N, align 4
  %37 = zext i32 %36 to i64
  %38 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %39 = zext i32 %38 to i64
  %40 = load i8**, i8*** %4, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i64 @manual_alloc(i8** %40, i64 %41, i8* %42, i64 %43)
  %45 = inttoptr i64 %44 to i32*
  %46 = bitcast i32* %45 to i32***
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32*** %46, i32**** %48, align 8
  %49 = call i32 @secp256k1_gej_set_ge(i32* %7, i32* @secp256k1_ge_const_g)
  %50 = call i32 @secp256k1_fe_set_b32(i32* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @secp256k1_ecmult_gen_context_build.nums_b32, i64 0, i64 0))
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @VERIFY_CHECK(i32 %52)
  %54 = call i32 @secp256k1_ge_set_xo_var(i32* %15, i32* %14, i32 0)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @VERIFY_CHECK(i32 %56)
  %58 = call i32 @secp256k1_gej_set_ge(i32* %8, i32* %15)
  %59 = call i32 @secp256k1_gej_add_ge_var(i32* %8, i32* %8, i32* @secp256k1_ge_const_g, i32* null)
  %60 = load i32, i32* @ECMULT_GEN_PREC_N, align 4
  %61 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %62 = mul nsw i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %17, align 8
  %65 = alloca i32, i64 %63, align 16
  store i64 %63, i64* %18, align 8
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %20, align 4
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %123, %35
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @ECMULT_GEN_PREC_N, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %126

72:                                               ; preds = %68
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %65, i64 %77
  store i32 %73, i32* %78, align 4
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %100, %72
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %65, i64 %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %65, i64 %97
  %99 = call i32 @secp256k1_gej_add_var(i32* %90, i32* %98, i32* %19, i32* null)
  br label %100

100:                                              ; preds = %83
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %79

103:                                              ; preds = %79
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %110, %103
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @ECMULT_GEN_PREC_B, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = call i32 @secp256k1_gej_double_var(i32* %19, i32* %19, i32* null)
  br label %110

110:                                              ; preds = %108
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %104

113:                                              ; preds = %104
  %114 = call i32 @secp256k1_gej_double_var(i32* %20, i32* %20, i32* null)
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @ECMULT_GEN_PREC_N, align 4
  %117 = sub nsw i32 %116, 2
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = call i32 @secp256k1_gej_neg(i32* %20, i32* %20)
  %121 = call i32 @secp256k1_gej_add_var(i32* %20, i32* %20, i32* %8, i32* null)
  br label %122

122:                                              ; preds = %119, %113
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %68

126:                                              ; preds = %68
  %127 = load i32, i32* @ECMULT_GEN_PREC_N, align 4
  %128 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %129 = mul nsw i32 %127, %128
  %130 = call i32 @secp256k1_ge_set_all_gej_var(i32* %26, i32* %65, i32 %129)
  %131 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %131)
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %165, %126
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @ECMULT_GEN_PREC_N, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %168

136:                                              ; preds = %132
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %161, %136
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %137
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32***, i32**** %143, align 8
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %26, i64 %158
  %160 = call i32 @secp256k1_ge_to_storage(i32* %152, i32* %159)
  br label %161

161:                                              ; preds = %141
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %137

164:                                              ; preds = %137
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  br label %132

168:                                              ; preds = %132
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %170 = call i32 @secp256k1_ecmult_gen_blind(%struct.TYPE_4__* %169, i32* null)
  store i32 0, i32* %13, align 4
  br label %171

171:                                              ; preds = %168, %34
  %172 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %13, align 4
  switch i32 %173, label %175 [
    i32 0, label %174
    i32 1, label %174
  ]

174:                                              ; preds = %171, %171
  ret void

175:                                              ; preds = %171
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @manual_alloc(i8**, i64, i8*, i64) #2

declare dso_local i32 @secp256k1_gej_set_ge(i32*, i32*) #2

declare dso_local i32 @secp256k1_fe_set_b32(i32*, i8*) #2

declare dso_local i32 @VERIFY_CHECK(i32) #2

declare dso_local i32 @secp256k1_ge_set_xo_var(i32*, i32*, i32) #2

declare dso_local i32 @secp256k1_gej_add_ge_var(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @secp256k1_gej_add_var(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @secp256k1_gej_double_var(i32*, i32*, i32*) #2

declare dso_local i32 @secp256k1_gej_neg(i32*, i32*) #2

declare dso_local i32 @secp256k1_ge_set_all_gej_var(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @secp256k1_ge_to_storage(i32*, i32*) #2

declare dso_local i32 @secp256k1_ecmult_gen_blind(%struct.TYPE_4__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
