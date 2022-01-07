; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_hash_impl.h_secp256k1_rfc6979_hmac_sha256_generate.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_hash_impl.h_secp256k1_rfc6979_hmac_sha256_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@secp256k1_rfc6979_hmac_sha256_generate.zero = internal constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i64)* @secp256k1_rfc6979_hmac_sha256_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_rfc6979_hmac_sha256_generate(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @secp256k1_hmac_sha256_initialize(i32* %7, i8* %17, i32 32)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @secp256k1_hmac_sha256_write(i32* %7, i8* %21, i32 32)
  %23 = call i32 @secp256k1_hmac_sha256_write(i32* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @secp256k1_rfc6979_hmac_sha256_generate.zero, i64 0, i64 0), i32 1)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @secp256k1_hmac_sha256_finalize(i32* %7, i8* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @secp256k1_hmac_sha256_initialize(i32* %7, i8* %30, i32 32)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @secp256k1_hmac_sha256_write(i32* %7, i8* %34, i32 32)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @secp256k1_hmac_sha256_finalize(i32* %7, i8* %38)
  br label %40

40:                                               ; preds = %14, %3
  br label %41

41:                                               ; preds = %62, %40
  %42 = load i64, i64* %6, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @secp256k1_hmac_sha256_initialize(i32* %8, i8* %49, i32 32)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @secp256k1_hmac_sha256_write(i32* %8, i8* %53, i32 32)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @secp256k1_hmac_sha256_finalize(i32* %8, i8* %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp sgt i32 %59, 32
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  store i32 32, i32* %9, align 4
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @memcpy(i8* %63, i8* %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %6, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %6, align 8
  br label %41

77:                                               ; preds = %41
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  ret void
}

declare dso_local i32 @secp256k1_hmac_sha256_initialize(i32*, i8*, i32) #1

declare dso_local i32 @secp256k1_hmac_sha256_write(i32*, i8*, i32) #1

declare dso_local i32 @secp256k1_hmac_sha256_finalize(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
