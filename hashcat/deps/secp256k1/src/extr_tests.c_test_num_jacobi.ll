; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_num_jacobi.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_num_jacobi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_num_jacobi.jacobi5 = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 -1, i32 -1, i32 1, i32 0, i32 1, i32 -1, i32 -1, i32 1], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_num_jacobi() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  %8 = alloca i32, align 4
  %9 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([10 x i32]* @__const.test_num_jacobi.jacobi5 to i8*), i64 40, i1 false)
  %10 = call i32 @secp256k1_scalar_set_int(i32* %3, i32 5)
  %11 = call i32 @secp256k1_scalar_get_num(i32* %4, i32* %3)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %27, %0
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @secp256k1_scalar_set_int(i32* %2, i32 %16)
  %18 = call i32 @secp256k1_scalar_get_num(i32* %5, i32* %2)
  %19 = call i32 @secp256k1_num_jacobi(i32* %5, i32* %4)
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %19, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @CHECK(i32 %25)
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %12

30:                                               ; preds = %12
  %31 = call i32 @secp256k1_scalar_get_num(i32* %4, i32* %3)
  br label %32

32:                                               ; preds = %37, %30
  %33 = call i32 @random_scalar_order_test(i32* %1)
  %34 = call i32 @secp256k1_scalar_get_num(i32* %8, i32* %3)
  %35 = call i32 @secp256k1_scalar_get_num(i32* %5, i32* %1)
  %36 = call i32 @secp256k1_num_mod(i32* %5, i32* %8)
  br label %37

37:                                               ; preds = %32
  %38 = call i64 @secp256k1_num_is_zero(i32* %5)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %32, label %40

40:                                               ; preds = %37
  %41 = call i32 @secp256k1_num_jacobi(i32* %5, i32* %4)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @secp256k1_num_add(i32* %5, i32* %5, i32* %5)
  br label %45

45:                                               ; preds = %43, %40
  %46 = call i32 @secp256k1_num_jacobi(i32* %5, i32* %4)
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = call i32 @CHECK(i32 %48)
  %50 = call i32 @secp256k1_num_add(i32* %5, i32* %5, i32* %5)
  %51 = call i32 @secp256k1_num_jacobi(i32* %5, i32* %4)
  %52 = icmp eq i32 %51, -1
  %53 = zext i1 %52 to i32
  %54 = call i32 @CHECK(i32 %53)
  %55 = call i32 @secp256k1_scalar_order_get_num(i32* %4)
  %56 = call i32 @random_scalar_order_test(i32* %1)
  %57 = call i32 @secp256k1_scalar_sqr(i32* %1, i32* %1)
  %58 = call i32 @secp256k1_scalar_get_num(i32* %5, i32* %1)
  %59 = call i32 @secp256k1_num_jacobi(i32* %5, i32* %4)
  %60 = icmp eq i32 %59, 1
  %61 = zext i1 %60 to i32
  %62 = call i32 @CHECK(i32 %61)
  %63 = call i32 @secp256k1_scalar_mul(i32* %1, i32* %1, i32* %3)
  %64 = call i32 @secp256k1_scalar_get_num(i32* %5, i32* %1)
  %65 = call i32 @secp256k1_num_jacobi(i32* %5, i32* %4)
  %66 = icmp eq i32 %65, -1
  %67 = zext i1 %66 to i32
  %68 = call i32 @CHECK(i32 %67)
  %69 = call i32 @secp256k1_num_jacobi(i32* %4, i32* %4)
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @CHECK(i32 %71)
  %73 = call i32 @secp256k1_scalar_set_int(i32* %2, i32 1)
  %74 = call i32 @secp256k1_scalar_get_num(i32* %5, i32* %2)
  %75 = call i32 @secp256k1_num_sub(i32* %5, i32* %4, i32* %5)
  %76 = call i32 @secp256k1_num_jacobi(i32* %5, i32* %4)
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = call i32 @CHECK(i32 %78)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #2

declare dso_local i32 @secp256k1_scalar_get_num(i32*, i32*) #2

declare dso_local i32 @CHECK(i32) #2

declare dso_local i32 @secp256k1_num_jacobi(i32*, i32*) #2

declare dso_local i32 @random_scalar_order_test(i32*) #2

declare dso_local i32 @secp256k1_num_mod(i32*, i32*) #2

declare dso_local i64 @secp256k1_num_is_zero(i32*) #2

declare dso_local i32 @secp256k1_num_add(i32*, i32*, i32*) #2

declare dso_local i32 @secp256k1_scalar_order_get_num(i32*) #2

declare dso_local i32 @secp256k1_scalar_sqr(i32*, i32*) #2

declare dso_local i32 @secp256k1_scalar_mul(i32*, i32*, i32*) #2

declare dso_local i32 @secp256k1_num_sub(i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
