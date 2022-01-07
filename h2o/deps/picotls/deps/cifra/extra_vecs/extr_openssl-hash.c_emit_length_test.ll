; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/extra_vecs/extr_openssl-hash.c_emit_length_test.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/extra_vecs/extr_openssl-hash.c_emit_length_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s(%zu) = \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64)* @emit_length_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_length_test(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @EVP_DigestInit(i32* %7, i32* %15)
  %17 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %45, %3
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @EVP_DigestInit(i32* %8, i32* %26)
  store i64 0, i64* %13, align 8
  br label %28

28:                                               ; preds = %36, %25
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i64, i64* %12, align 8
  %34 = and i64 %33, 255
  store i64 %34, i64* %14, align 8
  %35 = call i32 @EVP_DigestUpdate(i32* %8, i64* %14, i32 1)
  br label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %13, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %13, align 8
  br label %28

39:                                               ; preds = %28
  %40 = mul nuw i64 8, %18
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = call i32 @EVP_DigestFinal(i32* %8, i64* %20, i32* %11)
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @EVP_DigestUpdate(i32* %7, i64* %20, i32 %43)
  br label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  br label %21

48:                                               ; preds = %21
  %49 = mul nuw i64 8, %18
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = call i32 @EVP_DigestFinal(i32* %7, i64* %20, i32* %11)
  %52 = load i8*, i8** %4, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %52, i64 %53)
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = call i32 @printhex(i64* %20, i64 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

declare dso_local i32 @EVP_DigestInit(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i64*, i32) #1

declare dso_local i32 @EVP_DigestFinal(i32*, i64*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @printhex(i64*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
