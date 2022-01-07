; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_pwhash_scrypt_ll.c_tv.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_pwhash_scrypt_ll.c_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"pwhash_scryptsalsa208sha256_ll([%s],[%s]) failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"scrypt('%s', '%s', %lu, %lu, %lu, %lu) =\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%02x%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64, i64)* @tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [64 x i32], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 64, i64* %13, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %14, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i64, i64* %14, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i64, i64* %15, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @crypto_pwhash_scryptsalsa208sha256_ll(i32* %22, i64 %23, i32* %25, i64 %26, i64 %27, i64 %28, i64 %29, i32* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36)
  br label %70

38:                                               ; preds = %5
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40, i64 %41, i64 %42, i64 %43, i64 %44)
  store i64 0, i64* %12, align 8
  br label %46

46:                                               ; preds = %67, %38
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp slt i32 %54, 15
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 32, i32 10
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %57)
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %59, 15
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 1
  br label %65

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %63, %61 ], [ 0, %64 ]
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %65
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %12, align 8
  br label %46

70:                                               ; preds = %34, %46
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @crypto_pwhash_scryptsalsa208sha256_ll(i32*, i64, i32*, i64, i64, i64, i64, i32*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
