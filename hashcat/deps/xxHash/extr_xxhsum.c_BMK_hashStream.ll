; ModuleID = '/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_BMK_hashStream.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_BMK_hashStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XXHSUM32_DEFAULT_SEED = common dso_local global i32 0, align 4
@XXHSUM64_DEFAULT_SEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, i8*, i64)* @BMK_hashStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_hashStream(i8* %0, i32 %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @XXHSUM32_DEFAULT_SEED, align 4
  %17 = call i32 @XXH32_reset(i32* %12, i32 %16)
  %18 = load i32, i32* @XXHSUM64_DEFAULT_SEED, align 4
  %19 = call i32 @XXH64_reset(i32* %11, i32 %18)
  store i64 1, i64* %13, align 8
  br label %20

20:                                               ; preds = %38, %5
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @fread(i8* %24, i32 1, i64 %25, i32* %26)
  store i64 %27, i64* %13, align 8
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %37 [
    i32 129, label %29
    i32 128, label %33
  ]

29:                                               ; preds = %23
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @XXH32_update(i32* %12, i8* %30, i64 %31)
  br label %38

33:                                               ; preds = %23
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @XXH64_update(i32* %11, i8* %34, i64 %35)
  br label %38

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %33, %29
  br label %20

39:                                               ; preds = %20
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %49 [
    i32 129, label %41
    i32 128, label %45
  ]

41:                                               ; preds = %39
  %42 = call i32 @XXH32_digest(i32* %12)
  store i32 %42, i32* %14, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @memcpy(i8* %43, i32* %14, i32 4)
  br label %50

45:                                               ; preds = %39
  %46 = call i32 @XXH64_digest(i32* %11)
  store i32 %46, i32* %15, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @memcpy(i8* %47, i32* %15, i32 4)
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %45, %41
  ret void
}

declare dso_local i32 @XXH32_reset(i32*, i32) #1

declare dso_local i32 @XXH64_reset(i32*, i32) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @XXH32_update(i32*, i8*, i64) #1

declare dso_local i32 @XXH64_update(i32*, i8*, i64) #1

declare dso_local i32 @XXH32_digest(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @XXH64_digest(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
