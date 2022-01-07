; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_group_impl.h_secp256k1_gej_add_var.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_group_impl.h_secp256k1_gej_add_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32*)* @secp256k1_gej_add_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_gej_add_var(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
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
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @VERIFY_CHECK(i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = bitcast %struct.TYPE_7__* %30 to i8*
  %33 = bitcast %struct.TYPE_7__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 16, i1 false)
  br label %155

34:                                               ; preds = %4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @secp256k1_fe_set_int(i32* %43, i32 1)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = bitcast %struct.TYPE_7__* %46 to i8*
  %49 = bitcast %struct.TYPE_7__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 16, i1 false)
  br label %155

50:                                               ; preds = %34
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = call i32 @secp256k1_fe_sqr(i32* %9, i32* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = call i32 @secp256k1_fe_sqr(i32* %10, i32* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = call i32 @secp256k1_fe_mul(i32* %11, i32* %60, i32* %9)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = call i32 @secp256k1_fe_mul(i32* %12, i32* %63, i32* %10)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = call i32 @secp256k1_fe_mul(i32* %13, i32* %66, i32* %9)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = call i32 @secp256k1_fe_mul(i32* %13, i32* %13, i32* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = call i32 @secp256k1_fe_mul(i32* %14, i32* %72, i32* %10)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = call i32 @secp256k1_fe_mul(i32* %14, i32* %14, i32* %75)
  %77 = call i32 @secp256k1_fe_negate(i32* %15, i32* %11, i32 1)
  %78 = call i32 @secp256k1_fe_add(i32* %15, i32* %12)
  %79 = call i32 @secp256k1_fe_negate(i32* %16, i32* %13, i32 1)
  %80 = call i32 @secp256k1_fe_add(i32* %16, i32* %14)
  %81 = call i64 @secp256k1_fe_normalizes_to_zero_var(i32* %15)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %50
  %84 = call i64 @secp256k1_fe_normalizes_to_zero_var(i32* %16)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @secp256k1_gej_double_var(%struct.TYPE_7__* %87, %struct.TYPE_7__* %88, i32* %89)
  br label %100

91:                                               ; preds = %83
  %92 = load i32*, i32** %8, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @secp256k1_fe_set_int(i32* %95, i32 0)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %86
  br label %155

101:                                              ; preds = %50
  %102 = call i32 @secp256k1_fe_sqr(i32* %17, i32* %16)
  %103 = call i32 @secp256k1_fe_sqr(i32* %18, i32* %15)
  %104 = call i32 @secp256k1_fe_mul(i32* %19, i32* %15, i32* %18)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = call i32 @secp256k1_fe_mul(i32* %15, i32* %15, i32* %106)
  %108 = load i32*, i32** %8, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* %15, align 4
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %101
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = call i32 @secp256k1_fe_mul(i32* %115, i32* %117, i32* %15)
  %119 = call i32 @secp256k1_fe_mul(i32* %20, i32* %11, i32* %18)
  %120 = load i32, i32* %20, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = call i32 @secp256k1_fe_mul_int(i32* %124, i32 2)
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = call i32 @secp256k1_fe_add(i32* %127, i32* %19)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = call i32 @secp256k1_fe_negate(i32* %130, i32* %132, i32 3)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = call i32 @secp256k1_fe_add(i32* %135, i32* %17)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = call i32 @secp256k1_fe_negate(i32* %138, i32* %140, i32 5)
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = call i32 @secp256k1_fe_add(i32* %143, i32* %20)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = call i32 @secp256k1_fe_mul(i32* %146, i32* %148, i32* %16)
  %150 = call i32 @secp256k1_fe_mul(i32* %19, i32* %19, i32* %13)
  %151 = call i32 @secp256k1_fe_negate(i32* %19, i32* %19, i32 1)
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = call i32 @secp256k1_fe_add(i32* %153, i32* %19)
  br label %155

155:                                              ; preds = %113, %100, %45, %25
  ret void
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @secp256k1_fe_set_int(i32*, i32) #1

declare dso_local i32 @secp256k1_fe_sqr(i32*, i32*) #1

declare dso_local i32 @secp256k1_fe_mul(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_fe_negate(i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_fe_add(i32*, i32*) #1

declare dso_local i64 @secp256k1_fe_normalizes_to_zero_var(i32*) #1

declare dso_local i32 @secp256k1_gej_double_var(%struct.TYPE_7__*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @secp256k1_fe_mul_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
