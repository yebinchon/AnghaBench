; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_recover.c_bench_recover.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_recover.c_bench_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32 }

@SECP256K1_EC_COMPRESSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bench_recover(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [33 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %4, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %87, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 20000
  br i1 %14, label %15, label %90

15:                                               ; preds = %12
  store i64 33, i64* %8, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = srem i32 %22, 2
  %24 = call i32 @secp256k1_ecdsa_recoverable_signature_parse_compact(i32 %18, i32* %9, i8* %21, i32 %23)
  %25 = call i32 @CHECK(i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @secp256k1_ecdsa_recover(i32 %28, i32* %5, i32* %9, i8* %31)
  %33 = call i32 @CHECK(i32 %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds [33 x i8], [33 x i8]* %6, i64 0, i64 0
  %38 = load i32, i32* @SECP256K1_EC_COMPRESSED, align 4
  %39 = call i32 @secp256k1_ec_pubkey_serialize(i32 %36, i8* %37, i64* %8, i32* %5, i32 %38)
  %40 = call i32 @CHECK(i32 %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %83, %15
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %86

44:                                               ; preds = %41
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 32
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 %51, i8* %58, align 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %65, i8* %71, align 1
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [33 x i8], [33 x i8]* %6, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 %76, i8* %82, align 1
  br label %83

83:                                               ; preds = %44
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %41

86:                                               ; preds = %41
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %12

90:                                               ; preds = %12
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_ecdsa_recoverable_signature_parse_compact(i32, i32*, i8*, i32) #1

declare dso_local i32 @secp256k1_ecdsa_recover(i32, i32*, i32*, i8*) #1

declare dso_local i32 @secp256k1_ec_pubkey_serialize(i32, i8*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
