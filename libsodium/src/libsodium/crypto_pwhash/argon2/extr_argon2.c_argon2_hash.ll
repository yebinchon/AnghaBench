; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2.c_argon2_hash.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2.c_argon2_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i32*, i64, i32*, i8*, i8*, i8* }

@ARGON2_MAX_PWD_LENGTH = common dso_local global i64 0, align 8
@ARGON2_PWD_TOO_LONG = common dso_local global i32 0, align 4
@ARGON2_MAX_OUTLEN = common dso_local global i64 0, align 8
@ARGON2_OUTPUT_TOO_LONG = common dso_local global i32 0, align 4
@ARGON2_MAX_SALT_LENGTH = common dso_local global i64 0, align 8
@ARGON2_SALT_TOO_LONG = common dso_local global i32 0, align 4
@ARGON2_MEMORY_ALLOCATION_ERROR = common dso_local global i32 0, align 4
@ARGON2_DEFAULT_FLAGS = common dso_local global i32 0, align 4
@ARGON2_OK = common dso_local global i32 0, align 4
@ARGON2_ENCODING_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @argon2_hash(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8, i8* %9, i64 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_4__, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  store i8* %0, i8** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i64 %4, i64* %18, align 8
  store i8* %5, i8** %19, align 8
  store i64 %6, i64* %20, align 8
  store i8* %7, i8** %21, align 8
  store i64 %8, i64* %22, align 8
  store i8* %9, i8** %23, align 8
  store i64 %10, i64* %24, align 8
  store i32 %11, i32* %25, align 4
  %29 = load i64, i64* %18, align 8
  %30 = load i64, i64* @ARGON2_MAX_PWD_LENGTH, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %12
  %33 = load i32, i32* @ARGON2_PWD_TOO_LONG, align 4
  store i32 %33, i32* %13, align 4
  br label %135

34:                                               ; preds = %12
  %35 = load i64, i64* %22, align 8
  %36 = load i64, i64* @ARGON2_MAX_OUTLEN, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @ARGON2_OUTPUT_TOO_LONG, align 4
  store i32 %39, i32* %13, align 4
  br label %135

40:                                               ; preds = %34
  %41 = load i64, i64* %20, align 8
  %42 = load i64, i64* @ARGON2_MAX_SALT_LENGTH, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @ARGON2_SALT_TOO_LONG, align 4
  store i32 %45, i32* %13, align 4
  br label %135

46:                                               ; preds = %40
  %47 = load i64, i64* %22, align 8
  %48 = call i64 @malloc(i64 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %28, align 8
  %50 = load i8*, i8** %28, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ARGON2_MEMORY_ALLOCATION_ERROR, align 4
  store i32 %53, i32* %13, align 4
  br label %135

54:                                               ; preds = %46
  %55 = load i8*, i8** %28, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = load i64, i64* %22, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 14
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = load i64, i64* %18, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 13
  store i8* %63, i8** %64, align 8
  %65 = load i8*, i8** %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = load i64, i64* %20, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 12
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 11
  store i32* null, i32** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 10
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 9
  store i32* null, i32** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 8
  store i64 0, i64* %73, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i8* %76, i8** %77, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  store i8* %78, i8** %79, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* @ARGON2_DEFAULT_FLAGS, align 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 7
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* %25, align 4
  %85 = call i32 @argon2_ctx(%struct.TYPE_4__* %26, i32 %84)
  store i32 %85, i32* %27, align 4
  %86 = load i32, i32* %27, align 4
  %87 = load i32, i32* @ARGON2_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %54
  %90 = load i8*, i8** %28, align 8
  %91 = load i64, i64* %22, align 8
  %92 = call i32 @sodium_memzero(i8* %90, i64 %91)
  %93 = load i8*, i8** %28, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i32, i32* %27, align 4
  store i32 %95, i32* %13, align 4
  br label %135

96:                                               ; preds = %54
  %97 = load i8*, i8** %21, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i8*, i8** %21, align 8
  %101 = load i8*, i8** %28, align 8
  %102 = load i64, i64* %22, align 8
  %103 = call i32 @memcpy(i8* %100, i8* %101, i64 %102)
  br label %104

104:                                              ; preds = %99, %96
  %105 = load i8*, i8** %23, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %128

107:                                              ; preds = %104
  %108 = load i64, i64* %24, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load i8*, i8** %23, align 8
  %112 = load i64, i64* %24, align 8
  %113 = load i32, i32* %25, align 4
  %114 = call i32 @argon2_encode_string(i8* %111, i64 %112, %struct.TYPE_4__* %26, i32 %113)
  %115 = load i32, i32* @ARGON2_OK, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %110
  %118 = load i8*, i8** %28, align 8
  %119 = load i64, i64* %22, align 8
  %120 = call i32 @sodium_memzero(i8* %118, i64 %119)
  %121 = load i8*, i8** %23, align 8
  %122 = load i64, i64* %24, align 8
  %123 = call i32 @sodium_memzero(i8* %121, i64 %122)
  %124 = load i8*, i8** %28, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i32, i32* @ARGON2_ENCODING_FAIL, align 4
  store i32 %126, i32* %13, align 4
  br label %135

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %127, %107, %104
  %129 = load i8*, i8** %28, align 8
  %130 = load i64, i64* %22, align 8
  %131 = call i32 @sodium_memzero(i8* %129, i64 %130)
  %132 = load i8*, i8** %28, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i32, i32* @ARGON2_OK, align 4
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %128, %117, %89, %52, %44, %38, %32
  %136 = load i32, i32* %13, align 4
  ret i32 %136
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @argon2_ctx(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sodium_memzero(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @argon2_encode_string(i8*, i64, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
