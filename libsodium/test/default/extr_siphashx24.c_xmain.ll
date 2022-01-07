; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_siphashx24.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_siphashx24.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLEN = common dso_local global i32 0, align 4
@crypto_shorthash_siphashx24_BYTES = common dso_local global i32 0, align 4
@crypto_shorthash_siphashx24_KEYBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@crypto_shorthash_siphash24_KEYBYTES = common dso_local global i32 0, align 4
@crypto_shorthash_siphash24_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @MAXLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = load i32, i32* @crypto_shorthash_siphashx24_BYTES, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %15 = load i32, i32* @crypto_shorthash_siphashx24_KEYBYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %28, %0
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @crypto_shorthash_siphashx24_KEYBYTES, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i8, i8* %17, i64 %26
  store i8 %25, i8* %27, align 1
  br label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %18

31:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %60, %31
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @MAXLEN, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i8, i8* %11, i64 %40
  store i8 %39, i8* %41, align 1
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @crypto_shorthash_siphashx24(i8* %14, i8* %11, i64 %42, i8* %17)
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %55, %37
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* @crypto_shorthash_siphashx24_BYTES, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i8, i8* %14, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %44

58:                                               ; preds = %44
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %32

63:                                               ; preds = %32
  %64 = load i32, i32* @crypto_shorthash_siphashx24_KEYBYTES, align 4
  %65 = load i32, i32* @crypto_shorthash_siphash24_KEYBYTES, align 4
  %66 = icmp sge i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* @crypto_shorthash_siphashx24_BYTES, align 4
  %70 = load i32, i32* @crypto_shorthash_siphash24_BYTES, align 4
  %71 = icmp sgt i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = call i32 (...) @crypto_shorthash_siphashx24_bytes()
  %75 = load i32, i32* @crypto_shorthash_siphashx24_BYTES, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = call i32 (...) @crypto_shorthash_siphashx24_keybytes()
  %80 = load i32, i32* @crypto_shorthash_siphashx24_KEYBYTES, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  store i32 0, i32* %1, align 4
  %84 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_shorthash_siphashx24(i8*, i8*, i64, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @crypto_shorthash_siphashx24_bytes(...) #2

declare dso_local i32 @crypto_shorthash_siphashx24_keybytes(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
