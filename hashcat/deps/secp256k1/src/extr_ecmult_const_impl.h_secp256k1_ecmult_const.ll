; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_const_impl.h_secp256k1_ecmult_const.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_const_impl.h_secp256k1_ecmult_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { i32 }

@WINDOW_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_27__*, i32*, i32)* @secp256k1_ecmult_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_ecmult_const(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_27__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_27__, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_26__, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* @WINDOW_A, align 4
  %24 = call i32 @ECMULT_TABLE_SIZE(i32 %23)
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca %struct.TYPE_27__, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i32, i32* @WINDOW_A, align 4
  %29 = sub nsw i32 %28, 1
  %30 = call i32 @WNAF_SIZE(i32 %29)
  %31 = add nsw i32 1, %30
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @WINDOW_A, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @secp256k1_wnaf_const(i32* %33, i32* %35, i32 %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %42 = call i32 @secp256k1_gej_set_ge(%struct.TYPE_26__* %40, %struct.TYPE_27__* %41)
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %44 = call i32 @secp256k1_ecmult_odd_multiples_table_globalz_windowa(%struct.TYPE_27__* %27, i32* %12, %struct.TYPE_26__* %43)
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %56, %4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @WINDOW_A, align 4
  %48 = call i32 @ECMULT_TABLE_SIZE(i32 %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = call i32 @secp256k1_fe_normalize_weak(i32* %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @WINDOW_A, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @WNAF_SIZE_BITS(i32 %60, i32 %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %33, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @VERIFY_CHECK(i32 %69)
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @WINDOW_A, align 4
  %73 = call i32 @ECMULT_CONST_TABLE_GET_GE(%struct.TYPE_27__* %11, %struct.TYPE_27__* %27, i32 %71, i32 %72)
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %75 = call i32 @secp256k1_gej_set_ge(%struct.TYPE_26__* %74, %struct.TYPE_27__* %11)
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @WINDOW_A, align 4
  %78 = sub nsw i32 %77, 1
  %79 = call i32 @WNAF_SIZE_BITS(i32 %76, i32 %78)
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %112, %59
  %82 = load i32, i32* %15, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %115

84:                                               ; preds = %81
  store i32 0, i32* %18, align 4
  br label %85

85:                                               ; preds = %94, %84
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* @WINDOW_A, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %93 = call i32 @secp256k1_gej_double_nonzero(%struct.TYPE_26__* %91, %struct.TYPE_26__* %92, i32* null)
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %18, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %18, align 4
  br label %85

97:                                               ; preds = %85
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %33, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* @WINDOW_A, align 4
  %104 = call i32 @ECMULT_CONST_TABLE_GET_GE(%struct.TYPE_27__* %11, %struct.TYPE_27__* %27, i32 %102, i32 %103)
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @VERIFY_CHECK(i32 %107)
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %111 = call i32 @secp256k1_gej_add_ge(%struct.TYPE_26__* %109, %struct.TYPE_26__* %110, %struct.TYPE_27__* %11)
  br label %112

112:                                              ; preds = %97
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %15, align 4
  br label %81

115:                                              ; preds = %81
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = call i32 @secp256k1_fe_mul(i32* %117, i32* %119, i32* %12)
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %122 = bitcast %struct.TYPE_27__* %19 to i8*
  %123 = bitcast %struct.TYPE_27__* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 4, i1 false)
  %124 = call i32 @secp256k1_gej_set_ge(%struct.TYPE_26__* %22, %struct.TYPE_27__* %19)
  %125 = call i32 @secp256k1_gej_double_var(%struct.TYPE_26__* %22, %struct.TYPE_26__* %22, i32* null)
  %126 = call i32 @secp256k1_ge_set_gej(%struct.TYPE_27__* %19, %struct.TYPE_26__* %22)
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %128 = call i32 @secp256k1_ge_to_storage(i32* %20, %struct.TYPE_27__* %127)
  %129 = call i32 @secp256k1_ge_to_storage(i32* %21, %struct.TYPE_27__* %19)
  %130 = load i32, i32* %13, align 4
  %131 = icmp eq i32 %130, 2
  %132 = zext i1 %131 to i32
  %133 = call i32 @secp256k1_ge_storage_cmov(i32* %20, i32* %21, i32 %132)
  %134 = call i32 @secp256k1_ge_from_storage(%struct.TYPE_27__* %19, i32* %20)
  %135 = call i32 @secp256k1_ge_neg(%struct.TYPE_27__* %19, %struct.TYPE_27__* %19)
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %138 = call i32 @secp256k1_gej_add_ge(%struct.TYPE_26__* %136, %struct.TYPE_26__* %137, %struct.TYPE_27__* %19)
  %139 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %139)
  ret void
}

declare dso_local i32 @ECMULT_TABLE_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @WNAF_SIZE(i32) #1

declare dso_local i32 @secp256k1_wnaf_const(i32*, i32*, i32, i32) #1

declare dso_local i32 @secp256k1_gej_set_ge(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @secp256k1_ecmult_odd_multiples_table_globalz_windowa(%struct.TYPE_27__*, i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @secp256k1_fe_normalize_weak(i32*) #1

declare dso_local i32 @WNAF_SIZE_BITS(i32, i32) #1

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @ECMULT_CONST_TABLE_GET_GE(%struct.TYPE_27__*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @secp256k1_gej_double_nonzero(%struct.TYPE_26__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_ge(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @secp256k1_fe_mul(i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @secp256k1_gej_double_var(%struct.TYPE_26__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @secp256k1_ge_set_gej(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @secp256k1_ge_to_storage(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @secp256k1_ge_storage_cmov(i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_ge_from_storage(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @secp256k1_ge_neg(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
