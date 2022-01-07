; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_api.c_crypto_larval_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_api.c_crypto_larval_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@CRYPTO_ALG_LARVAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_DEAD = common dso_local global i32 0, align 4
@CRYPTO_NOLOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"crypto-%s\00", align 1
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"crypto-%s-all\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_alg* (i8*, i32, i32)* @crypto_larval_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_alg* @crypto_larval_lookup(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_alg*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.crypto_alg* @ERR_PTR(i32 %13)
  store %struct.crypto_alg* %14, %struct.crypto_alg** %4, align 8
  br label %80

15:                                               ; preds = %3
  %16 = load i32, i32* @CRYPTO_ALG_LARVAL, align 4
  %17 = load i32, i32* @CRYPTO_ALG_DEAD, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @CRYPTO_ALG_LARVAL, align 4
  %23 = load i32, i32* @CRYPTO_ALG_DEAD, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.crypto_alg* @crypto_alg_lookup(i8* %28, i32 %29, i32 %30)
  store %struct.crypto_alg* %31, %struct.crypto_alg** %8, align 8
  %32 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %33 = icmp ne %struct.crypto_alg* %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @CRYPTO_NOLOAD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @request_module(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %44 = xor i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @request_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %39
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.crypto_alg* @crypto_alg_lookup(i8* %54, i32 %55, i32 %56)
  store %struct.crypto_alg* %57, %struct.crypto_alg** %8, align 8
  br label %58

58:                                               ; preds = %53, %34, %15
  %59 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %60 = call i32 @IS_ERR_OR_NULL(%struct.crypto_alg* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %64 = call i64 @crypto_is_larval(%struct.crypto_alg* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %68 = call %struct.crypto_alg* @crypto_larval_wait(%struct.crypto_alg* %67)
  store %struct.crypto_alg* %68, %struct.crypto_alg** %8, align 8
  br label %78

69:                                               ; preds = %62, %58
  %70 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %71 = icmp ne %struct.crypto_alg* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call %struct.crypto_alg* @crypto_larval_add(i8* %73, i32 %74, i32 %75)
  store %struct.crypto_alg* %76, %struct.crypto_alg** %8, align 8
  br label %77

77:                                               ; preds = %72, %69
  br label %78

78:                                               ; preds = %77, %66
  %79 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %79, %struct.crypto_alg** %4, align 8
  br label %80

80:                                               ; preds = %78, %11
  %81 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  ret %struct.crypto_alg* %81
}

declare dso_local %struct.crypto_alg* @ERR_PTR(i32) #1

declare dso_local %struct.crypto_alg* @crypto_alg_lookup(i8*, i32, i32) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.crypto_alg*) #1

declare dso_local i64 @crypto_is_larval(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @crypto_larval_wait(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @crypto_larval_add(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
