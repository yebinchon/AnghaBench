; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_wnaf.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_wnaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_wnaf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = bitcast %struct.TYPE_12__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 1, i32* %6, align 4
  %7 = call i32 @test_constant_wnaf(%struct.TYPE_12__* %2, i32 4)
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 2, i32* %10, align 4
  %11 = call i32 @test_constant_wnaf(%struct.TYPE_12__* %2, i32 4)
  %12 = call i32 (...) @test_fixed_wnaf_small()
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %32, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @count, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = call i32 @random_scalar_order(%struct.TYPE_12__* %2)
  %19 = load i32, i32* %1, align 4
  %20 = srem i32 %19, 10
  %21 = add nsw i32 4, %20
  %22 = call i32 @test_wnaf(%struct.TYPE_12__* %2, i32 %21)
  %23 = call i32 @test_constant_wnaf_negate(%struct.TYPE_12__* %2)
  %24 = load i32, i32* %1, align 4
  %25 = srem i32 %24, 10
  %26 = add nsw i32 4, %25
  %27 = call i32 @test_constant_wnaf(%struct.TYPE_12__* %2, i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = srem i32 %28, 10
  %30 = add nsw i32 4, %29
  %31 = call i32 @test_fixed_wnaf(%struct.TYPE_12__* %2, i32 %30)
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %13

35:                                               ; preds = %13
  %36 = call i32 @secp256k1_scalar_set_int(%struct.TYPE_12__* %2, i32 0)
  %37 = call i32 @secp256k1_scalar_cond_negate(%struct.TYPE_12__* %2, i32 1)
  %38 = icmp eq i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = call i32 @CHECK(i32 %39)
  %41 = call i32 @secp256k1_scalar_is_zero(%struct.TYPE_12__* %2)
  %42 = call i32 @CHECK(i32 %41)
  %43 = call i32 @secp256k1_scalar_cond_negate(%struct.TYPE_12__* %2, i32 0)
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @CHECK(i32 %45)
  %47 = call i32 @secp256k1_scalar_is_zero(%struct.TYPE_12__* %2)
  %48 = call i32 @CHECK(i32 %47)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @test_constant_wnaf(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @test_fixed_wnaf_small(...) #2

declare dso_local i32 @random_scalar_order(%struct.TYPE_12__*) #2

declare dso_local i32 @test_wnaf(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @test_constant_wnaf_negate(%struct.TYPE_12__*) #2

declare dso_local i32 @test_fixed_wnaf(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @secp256k1_scalar_set_int(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @CHECK(i32) #2

declare dso_local i32 @secp256k1_scalar_cond_negate(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @secp256k1_scalar_is_zero(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
