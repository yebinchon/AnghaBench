; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-enc.c_check_params.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-enc.c_check_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ifname = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@ofname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@crypt_key = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"no key specified\00", align 1
@BCRYPT_MAX_KEYLEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"key '%s' is too long\00", align 1
@magic = common dso_local global i32* null, align 8
@ENC_MAGIC_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"length of magic must be %d\00", align 1
@do_decrypt = common dso_local global i32 0, align 4
@product = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"no product specified\00", align 1
@version = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"no version specified\00", align 1
@ENC_PRODUCT_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"product name '%s' is too long\00", align 1
@ENC_VERSION_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"version '%s' is too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_params() #0 {
  %1 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  %2 = load i32*, i32** @ifname, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %69

6:                                                ; preds = %0
  %7 = load i32*, i32** @ofname, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %69

11:                                               ; preds = %6
  %12 = load i32*, i32** @crypt_key, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %69

16:                                               ; preds = %11
  %17 = load i32*, i32** @crypt_key, align 8
  %18 = call i32 @strlen(i32* %17)
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @BCRYPT_MAX_KEYLEN, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** @crypt_key, align 8
  %24 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %23)
  br label %69

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32*, i32** @magic, align 8
  %28 = call i32 @strlen(i32* %27)
  %29 = load i32, i32* @ENC_MAGIC_LEN, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @ENC_MAGIC_LEN, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  br label %69

36:                                               ; preds = %26
  %37 = load i32, i32* @do_decrypt, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %68, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** @product, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %69

44:                                               ; preds = %39
  %45 = load i32*, i32** @version, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %69

49:                                               ; preds = %44
  %50 = load i32*, i32** @product, align 8
  %51 = call i32 @strlen(i32* %50)
  %52 = load i32, i32* @ENC_PRODUCT_LEN, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32*, i32** @product, align 8
  %57 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32* %56)
  br label %69

58:                                               ; preds = %49
  %59 = load i32*, i32** @version, align 8
  %60 = call i32 @strlen(i32* %59)
  %61 = load i32, i32* @ENC_VERSION_LEN, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32*, i32** @version, align 8
  %66 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32* %65)
  br label %69

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %36
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %68, %64, %55, %47, %42, %32, %22, %14, %9, %4
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
