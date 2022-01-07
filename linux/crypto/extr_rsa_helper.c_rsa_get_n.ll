; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa_helper.c_rsa_get_n.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa_helper.c_rsa_get_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_key = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@fips_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"RSA: key size not allowed in FIPS mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_get_n(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rsa_key*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.rsa_key*
  store %struct.rsa_key* %16, %struct.rsa_key** %12, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %13, align 8
  %19 = load i64, i64* %11, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %62

28:                                               ; preds = %22
  %29 = load i64, i64* @fips_enabled, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %42, %31
  %33 = load i64, i64* %14, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = load i32*, i32** %13, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %14, align 8
  br label %32

47:                                               ; preds = %40
  %48 = load i64, i64* %14, align 8
  %49 = icmp ult i64 %48, 256
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %62

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i8*, i8** %10, align 8
  %57 = load %struct.rsa_key*, %struct.rsa_key** %12, align 8
  %58 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.rsa_key*, %struct.rsa_key** %12, align 8
  %61 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %55, %50, %25
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
