; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/internal/extr_randombytes_internal_random.c_randombytes_internal_random.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/internal/extr_randombytes_internal_random.c_randombytes_internal_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i32, i32 }

@stream = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@crypto_stream_chacha20_NONCEBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @randombytes_internal_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randombytes_internal_random() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @COMPILER_ASSERT(i32 1)
  %4 = call i32 @COMPILER_ASSERT(i32 1)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 0), align 8
  %6 = icmp ule i64 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %0
  %8 = call i32 (...) @randombytes_internal_random_stir_if_needed()
  %9 = load i32, i32* @crypto_stream_chacha20_NONCEBYTES, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp eq i64 4, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @COMPILER_ASSERT(i32 %12)
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 1), align 8
  %15 = bitcast i32* %14 to i8*
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 3), align 4
  %17 = call i32 @crypto_stream_chacha20(i8* %15, i64 8, i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 2) to i8*), i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  store i64 4, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 0), align 8
  %22 = call i32 (...) @randombytes_internal_random_xorhwrand()
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 1), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 0), align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @randombytes_internal_random_xorkey(i32* %25)
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 1), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 0), align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 2), align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 2), align 8
  br label %33

33:                                               ; preds = %7, %0
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 0), align 8
  %35 = sub i64 %34, 4
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 0), align 8
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 1), align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 0), align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @memcpy(i32* %1, i32* %38, i32 4)
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 1), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stream, i32 0, i32 0), align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @memset(i32* %42, i32 0, i32 4)
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @COMPILER_ASSERT(i32) #1

declare dso_local i32 @randombytes_internal_random_stir_if_needed(...) #1

declare dso_local i32 @crypto_stream_chacha20(i8*, i64, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @randombytes_internal_random_xorhwrand(...) #1

declare dso_local i32 @randombytes_internal_random_xorkey(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
