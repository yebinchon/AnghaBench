; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/argon2/extr_pwhash_argon2i.c__needs_rehash.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/argon2/extr_pwhash_argon2i.c__needs_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32, i32, i64, i64, i32*, i32, i64, i64, i64 }

@UINT32_MAX = common dso_local global i64 0, align 8
@crypto_pwhash_STRBYTES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i32)* @_needs_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_needs_rehash(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %13, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %8, align 8
  %17 = udiv i64 %16, 1024
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @UINT32_MAX, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @UINT32_MAX, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @crypto_pwhash_STRBYTES, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21, %4
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %74

31:                                               ; preds = %25
  %32 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 88)
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @calloc(i64 %33, i32 1)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %10, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %74

38:                                               ; preds = %31
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 9
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 10
  store i64 %43, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 11
  store i64 %43, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 7
  store i32* null, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 8
  store i32 0, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 0, i32* %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @argon2_decode_string(%struct.TYPE_4__* %11, i8* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* @errno, align 4
  store i32 -1, i32* %13, align 4
  br label %70

57:                                               ; preds = %38
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57
  store i32 1, i32* %13, align 4
  br label %69

68:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %37, %29
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i64 @argon2_decode_string(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
