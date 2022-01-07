; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_defaults.c_default_decrypt_cid.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_defaults.c_default_decrypt_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.st_quicly_default_encrypt_cid_t = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_6__*, i8*, i64)* @default_decrypt_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @default_decrypt_cid(i32* %0, %struct.TYPE_6__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.st_quicly_default_encrypt_cid_t*, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = bitcast i8* %15 to %struct.st_quicly_default_encrypt_cid_t*
  store %struct.st_quicly_default_encrypt_cid_t* %16, %struct.st_quicly_default_encrypt_cid_t** %9, align 8
  %17 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %9, align 8
  %18 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %13, align 8
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @memcpy(i32* %37, i8* %38, i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  %51 = call i32 @memset(i32* %47, i32 0, i64 %50)
  br label %52

52:                                               ; preds = %44, %36
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %54 = bitcast i32* %53 to i8*
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %52, %26, %4
  %56 = load %struct.st_quicly_default_encrypt_cid_t*, %struct.st_quicly_default_encrypt_cid_t** %9, align 8
  %57 = getelementptr inbounds %struct.st_quicly_default_encrypt_cid_t, %struct.st_quicly_default_encrypt_cid_t* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @ptls_cipher_encrypt(%struct.TYPE_7__* %58, i32* %59, i8* %60, i64 %61)
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  store i32* %63, i32** %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp eq i64 %64, 16
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = call i32 @quicly_decode64(i32** %12)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %73

70:                                               ; preds = %55
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = call i32 @quicly_decode32(i32** %12)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = call i32 @quicly_decode24(i32** %12)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %12, align 8
  %82 = load i32, i32* %80, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = load i64, i64* %13, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i64, i64* %13, align 8
  ret i64 %95
}

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @ptls_cipher_encrypt(%struct.TYPE_7__*, i32*, i8*, i64) #1

declare dso_local i32 @quicly_decode64(i32**) #1

declare dso_local i32 @quicly_decode32(i32**) #1

declare dso_local i32 @quicly_decode24(i32**) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
