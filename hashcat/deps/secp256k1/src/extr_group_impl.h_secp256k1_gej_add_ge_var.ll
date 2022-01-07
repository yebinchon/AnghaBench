; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_group_impl.h_secp256k1_gej_add_ge_var.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_group_impl.h_secp256k1_gej_add_ge_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*)* @secp256k1_gej_add_ge_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_gej_add_ge_var(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32* %3, i32** %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @VERIFY_CHECK(i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = call i32 @secp256k1_gej_set_ge(%struct.TYPE_10__* %29, %struct.TYPE_11__* %30)
  br label %146

32:                                               ; preds = %4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @secp256k1_fe_set_int(i32* %41, i32 1)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = bitcast %struct.TYPE_10__* %44 to i8*
  %47 = bitcast %struct.TYPE_10__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 16, i1 false)
  br label %146

48:                                               ; preds = %32
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = call i32 @secp256k1_fe_sqr(i32* %9, i32* %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = call i32 @secp256k1_fe_normalize_weak(i32* %10)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = call i32 @secp256k1_fe_mul(i32* %11, i32* %59, i32* %9)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = call i32 @secp256k1_fe_normalize_weak(i32* %12)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = call i32 @secp256k1_fe_mul(i32* %13, i32* %66, i32* %9)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = call i32 @secp256k1_fe_mul(i32* %13, i32* %13, i32* %69)
  %71 = call i32 @secp256k1_fe_negate(i32* %14, i32* %10, i32 1)
  %72 = call i32 @secp256k1_fe_add(i32* %14, i32* %11)
  %73 = call i32 @secp256k1_fe_negate(i32* %15, i32* %12, i32 1)
  %74 = call i32 @secp256k1_fe_add(i32* %15, i32* %13)
  %75 = call i64 @secp256k1_fe_normalizes_to_zero_var(i32* %14)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %48
  %78 = call i64 @secp256k1_fe_normalizes_to_zero_var(i32* %15)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @secp256k1_gej_double_var(%struct.TYPE_10__* %81, %struct.TYPE_10__* %82, i32* %83)
  br label %94

85:                                               ; preds = %77
  %86 = load i32*, i32** %8, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @secp256k1_fe_set_int(i32* %89, i32 0)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %80
  br label %146

95:                                               ; preds = %48
  %96 = call i32 @secp256k1_fe_sqr(i32* %16, i32* %15)
  %97 = call i32 @secp256k1_fe_sqr(i32* %17, i32* %14)
  %98 = call i32 @secp256k1_fe_mul(i32* %18, i32* %14, i32* %17)
  %99 = load i32*, i32** %8, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %14, align 4
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = call i32 @secp256k1_fe_mul(i32* %106, i32* %108, i32* %14)
  %110 = call i32 @secp256k1_fe_mul(i32* %19, i32* %10, i32* %17)
  %111 = load i32, i32* %19, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = call i32 @secp256k1_fe_mul_int(i32* %115, i32 2)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = call i32 @secp256k1_fe_add(i32* %118, i32* %18)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = call i32 @secp256k1_fe_negate(i32* %121, i32* %123, i32 3)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = call i32 @secp256k1_fe_add(i32* %126, i32* %16)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = call i32 @secp256k1_fe_negate(i32* %129, i32* %131, i32 5)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = call i32 @secp256k1_fe_add(i32* %134, i32* %19)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = call i32 @secp256k1_fe_mul(i32* %137, i32* %139, i32* %15)
  %141 = call i32 @secp256k1_fe_mul(i32* %18, i32* %18, i32* %12)
  %142 = call i32 @secp256k1_fe_negate(i32* %18, i32* %18, i32 1)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = call i32 @secp256k1_fe_add(i32* %144, i32* %18)
  br label %146

146:                                              ; preds = %104, %94, %43, %24
  ret void
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @secp256k1_gej_set_ge(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @secp256k1_fe_set_int(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @secp256k1_fe_sqr(i32*, i32*) #1

declare dso_local i32 @secp256k1_fe_normalize_weak(i32*) #1

declare dso_local i32 @secp256k1_fe_mul(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_fe_negate(i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_fe_add(i32*, i32*) #1

declare dso_local i64 @secp256k1_fe_normalizes_to_zero_var(i32*) #1

declare dso_local i32 @secp256k1_gej_double_var(%struct.TYPE_10__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @secp256k1_fe_mul_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
