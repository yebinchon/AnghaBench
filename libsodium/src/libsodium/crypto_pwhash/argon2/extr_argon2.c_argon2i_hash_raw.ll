; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2.c_argon2i_hash_raw.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2.c_argon2i_hash_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Argon2_i = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @argon2i_hash_raw(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  store i64 %8, i64* %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i8*, i8** %13, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = load i64, i64* %16, align 8
  %26 = load i8*, i8** %17, align 8
  %27 = load i64, i64* %18, align 8
  %28 = load i32, i32* @Argon2_i, align 4
  %29 = call i32 @argon2_hash(i32 %19, i32 %20, i32 %21, i8* %22, i64 %23, i8* %24, i64 %25, i8* %26, i64 %27, i32* null, i32 0, i32 %28)
  ret i32 %29
}

declare dso_local i32 @argon2_hash(i32, i32, i32, i8*, i64, i8*, i64, i8*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
