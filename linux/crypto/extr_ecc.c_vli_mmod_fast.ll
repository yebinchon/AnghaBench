; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mmod_fast.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mmod_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ecc: unsupported digits size!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*, i32)* @vli_mmod_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vli_mmod_fast(i64* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %14 = mul nsw i32 2, %13
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, -1
  br i1 %21, label %22, label %65

22:                                               ; preds = %4
  %23 = load i64*, i64** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sub i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i64*, i64** %6, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @vli_mmod_special(i64* %31, i64* %32, i64* %33, i32 %34)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %80

36:                                               ; preds = %22
  %37 = load i64*, i64** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sub i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, -9223372036854775808
  br i1 %43, label %44, label %58

44:                                               ; preds = %36
  %45 = load i64*, i64** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 %46, 2
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i64*, i64** %6, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @vli_mmod_special2(i64* %53, i64* %54, i64* %55, i32 %56)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %80

58:                                               ; preds = %44, %36
  br label %59

59:                                               ; preds = %58
  %60 = load i64*, i64** %6, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @vli_mmod_barrett(i64* %60, i64* %61, i64* %62, i32 %63)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %80

65:                                               ; preds = %4
  %66 = load i32, i32* %9, align 4
  switch i32 %66, label %77 [
    i32 3, label %67
    i32 4, label %72
  ]

67:                                               ; preds = %65
  %68 = load i64*, i64** %6, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = call i32 @vli_mmod_fast_192(i64* %68, i64* %69, i64* %70, i64* %17)
  br label %79

72:                                               ; preds = %65
  %73 = load i64*, i64** %6, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = call i32 @vli_mmod_fast_256(i64* %73, i64* %74, i64* %75, i64* %17)
  br label %79

77:                                               ; preds = %65
  %78 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %80

79:                                               ; preds = %72, %67
  store i32 1, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %80

80:                                               ; preds = %79, %77, %59, %52, %30
  %81 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vli_mmod_special(i64*, i64*, i64*, i32) #2

declare dso_local i32 @vli_mmod_special2(i64*, i64*, i64*, i32) #2

declare dso_local i32 @vli_mmod_barrett(i64*, i64*, i64*, i32) #2

declare dso_local i32 @vli_mmod_fast_192(i64*, i64*, i64*, i64*) #2

declare dso_local i32 @vli_mmod_fast_256(i64*, i64*, i64*, i64*) #2

declare dso_local i32 @pr_err_ratelimited(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
