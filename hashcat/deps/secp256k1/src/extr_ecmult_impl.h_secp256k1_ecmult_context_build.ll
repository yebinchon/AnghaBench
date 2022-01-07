; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_context_build.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_context_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32** }

@SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE = common dso_local global i64 0, align 8
@secp256k1_ge_const_g = common dso_local global i32 0, align 4
@WINDOW_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8**)* @secp256k1_ecmult_context_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_ecmult_context_build(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i64, i64* @SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = icmp ne i32** %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %51

17:                                               ; preds = %2
  %18 = call i32 @secp256k1_gej_set_ge(i32* %5, i32* @secp256k1_ge_const_g)
  %19 = load i32, i32* @WINDOW_G, align 4
  %20 = call i32 @ECMULT_TABLE_SIZE(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = udiv i64 %23, 4
  %25 = load i32, i32* @WINDOW_G, align 4
  %26 = call i32 @ECMULT_TABLE_SIZE(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @VERIFY_CHECK(i32 %29)
  %31 = load i8**, i8*** %4, align 8
  %32 = load i32, i32* @WINDOW_G, align 4
  %33 = call i32 @ECMULT_TABLE_SIZE(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @manual_alloc(i8** %31, i32 %36, i8* %37, i64 %38)
  %40 = inttoptr i64 %39 to [0 x i32]*
  %41 = bitcast [0 x i32]* %40 to i32**
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32** %41, i32*** %43, align 8
  %44 = load i32, i32* @WINDOW_G, align 4
  %45 = call i32 @ECMULT_TABLE_SIZE(i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @secp256k1_ecmult_odd_multiples_table_storage_var(i32 %45, i32* %49, i32* %5)
  br label %51

51:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @secp256k1_gej_set_ge(i32*, i32*) #1

declare dso_local i32 @ECMULT_TABLE_SIZE(i32) #1

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i64 @manual_alloc(i8**, i32, i8*, i64) #1

declare dso_local i32 @secp256k1_ecmult_odd_multiples_table_storage_var(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
