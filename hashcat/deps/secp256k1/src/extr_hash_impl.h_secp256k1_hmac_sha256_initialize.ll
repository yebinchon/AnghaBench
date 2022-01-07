; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_hash_impl.h_secp256k1_hmac_sha256_initialize.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_hash_impl.h_secp256k1_hmac_sha256_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i64)* @secp256k1_hmac_sha256_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_hmac_sha256_initialize(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ule i64 %10, 64
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @memcpy(i8* %13, i8* %14, i64 %15)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 64, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i8* %19, i32 0, i32 %22)
  br label %35

24:                                               ; preds = %3
  %25 = call i32 @secp256k1_sha256_initialize(i32* %9)
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @secp256k1_sha256_write(i32* %9, i8* %26, i32 %28)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %31 = call i32 @secp256k1_sha256_finalize(i32* %9, i8* %30)
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 32
  %34 = call i32 @memset(i8* %33, i32 0, i32 32)
  br label %35

35:                                               ; preds = %24, %12
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = call i32 @secp256k1_sha256_initialize(i32* %37)
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %49, %35
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %40, 64
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = xor i32 %46, 92
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  br label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %39

52:                                               ; preds = %39
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %56 = call i32 @secp256k1_sha256_write(i32* %54, i8* %55, i32 64)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @secp256k1_sha256_initialize(i32* %58)
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %70, %52
  %61 = load i64, i64* %7, align 8
  %62 = icmp ult i64 %61, 64
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = xor i32 %67, 106
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  br label %70

70:                                               ; preds = %63
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %7, align 8
  br label %60

73:                                               ; preds = %60
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %77 = call i32 @secp256k1_sha256_write(i32* %75, i8* %76, i32 64)
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %79 = call i32 @memset(i8* %78, i32 0, i32 64)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @secp256k1_sha256_initialize(i32*) #1

declare dso_local i32 @secp256k1_sha256_write(i32*, i8*, i32) #1

declare dso_local i32 @secp256k1_sha256_finalize(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
