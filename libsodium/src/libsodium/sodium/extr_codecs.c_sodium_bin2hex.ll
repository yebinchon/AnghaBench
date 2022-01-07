; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/sodium/extr_codecs.c_sodium_bin2hex.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/sodium/extr_codecs.c_sodium_bin2hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i32, i32* @SIZE_MAX, align 4
  %15 = sdiv i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = mul i64 %20, 2
  %22 = icmp ule i64 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %4
  %24 = call i32 (...) @sodium_misuse()
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %30, %25
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %80

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = ashr i32 %41, 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add i32 87, %43
  %45 = load i32, i32* %12, align 4
  %46 = sub i32 %45, 10
  %47 = lshr i32 %46, 8
  %48 = and i32 %47, -39
  %49 = add i32 %44, %48
  %50 = trunc i32 %49 to i8
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %11, align 4
  %54 = add i32 87, %53
  %55 = load i32, i32* %11, align 4
  %56 = sub i32 %55, 10
  %57 = lshr i32 %56, 8
  %58 = and i32 %57, -39
  %59 = add i32 %54, %58
  %60 = trunc i32 %59 to i8
  %61 = zext i8 %60 to i32
  %62 = or i32 %52, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = mul i64 %66, 2
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 %64, i8* %68, align 1
  %69 = load i32, i32* %10, align 4
  %70 = lshr i32 %69, 8
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* %9, align 8
  %75 = mul i64 %74, 2
  %76 = add i64 %75, 1
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 %72, i8* %77, align 1
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %26

80:                                               ; preds = %26
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %9, align 8
  %83 = mul i64 %82, 2
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %5, align 8
  ret i8* %85
}

declare dso_local i32 @sodium_misuse(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
