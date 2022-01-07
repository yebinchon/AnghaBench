; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_eckey_impl.h_secp256k1_eckey_pubkey_serialize.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_eckey_impl.h_secp256k1_eckey_pubkey_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SECP256K1_TAG_PUBKEY_ODD = common dso_local global i8 0, align 1
@SECP256K1_TAG_PUBKEY_EVEN = common dso_local global i8 0, align 1
@SECP256K1_TAG_PUBKEY_UNCOMPRESSED = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64*, i32)* @secp256k1_eckey_pubkey_serialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_eckey_pubkey_serialize(%struct.TYPE_4__* %0, i8* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = call i64 @secp256k1_ge_is_infinity(%struct.TYPE_4__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %56

14:                                               ; preds = %4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i32 @secp256k1_fe_normalize_var(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @secp256k1_fe_normalize_var(i32* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = call i32 @secp256k1_fe_get_b32(i8* %22, i32* %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %14
  %29 = load i64*, i64** %8, align 8
  store i64 33, i64* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i64 @secp256k1_fe_is_odd(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8, i8* @SECP256K1_TAG_PUBKEY_ODD, align 1
  %36 = zext i8 %35 to i32
  br label %40

37:                                               ; preds = %28
  %38 = load i8, i8* @SECP256K1_TAG_PUBKEY_EVEN, align 1
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %36, %34 ], [ %39, %37 ]
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 %42, i8* %44, align 1
  br label %55

45:                                               ; preds = %14
  %46 = load i64*, i64** %8, align 8
  store i64 65, i64* %46, align 8
  %47 = load i8, i8* @SECP256K1_TAG_PUBKEY_UNCOMPRESSED, align 1
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 %47, i8* %49, align 1
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 33
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @secp256k1_fe_get_b32(i8* %51, i32* %53)
  br label %55

55:                                               ; preds = %45, %40
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %13
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @secp256k1_ge_is_infinity(%struct.TYPE_4__*) #1

declare dso_local i32 @secp256k1_fe_normalize_var(i32*) #1

declare dso_local i32 @secp256k1_fe_get_b32(i8*, i32*) #1

declare dso_local i64 @secp256k1_fe_is_odd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
