; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_alloc_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_alloc_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto = type { i32, i32, i32, i32 }
%struct.net_conf = type { i8*, i8*, i8*, i64* }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@ERR_CSUMS_ALG = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@ERR_VERIFY_ALG = common dso_local global i32 0, align 4
@ERR_INTEGRITY_ALG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hmac(%s)\00", align 1
@ERR_AUTH_ALG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto*, %struct.net_conf*)* @alloc_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_crypto(%struct.crypto* %0, %struct.net_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto*, align 8
  %5 = alloca %struct.net_conf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crypto* %0, %struct.crypto** %4, align 8
  store %struct.net_conf* %1, %struct.net_conf** %5, align 8
  %10 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.crypto*, %struct.crypto** %4, align 8
  %15 = getelementptr inbounds %struct.crypto, %struct.crypto* %14, i32 0, i32 3
  %16 = load %struct.net_conf*, %struct.net_conf** %5, align 8
  %17 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @ERR_CSUMS_ALG, align 4
  %20 = call i32 @alloc_shash(i32* %15, i8* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @NO_ERROR, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %71

26:                                               ; preds = %2
  %27 = load %struct.crypto*, %struct.crypto** %4, align 8
  %28 = getelementptr inbounds %struct.crypto, %struct.crypto* %27, i32 0, i32 2
  %29 = load %struct.net_conf*, %struct.net_conf** %5, align 8
  %30 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @ERR_VERIFY_ALG, align 4
  %33 = call i32 @alloc_shash(i32* %28, i8* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @NO_ERROR, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %71

39:                                               ; preds = %26
  %40 = load %struct.crypto*, %struct.crypto** %4, align 8
  %41 = getelementptr inbounds %struct.crypto, %struct.crypto* %40, i32 0, i32 1
  %42 = load %struct.net_conf*, %struct.net_conf** %5, align 8
  %43 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @ERR_INTEGRITY_ALG, align 4
  %46 = call i32 @alloc_shash(i32* %41, i8* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @NO_ERROR, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %71

52:                                               ; preds = %39
  %53 = load %struct.net_conf*, %struct.net_conf** %5, align 8
  %54 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %53, i32 0, i32 3
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %61 = load %struct.net_conf*, %struct.net_conf** %5, align 8
  %62 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = call i32 @snprintf(i8* %13, i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64* %63)
  %65 = load %struct.crypto*, %struct.crypto** %4, align 8
  %66 = getelementptr inbounds %struct.crypto, %struct.crypto* %65, i32 0, i32 0
  %67 = load i32, i32* @ERR_AUTH_ALG, align 4
  %68 = call i32 @alloc_shash(i32* %66, i8* %13, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %59, %52
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %71

71:                                               ; preds = %69, %50, %37, %24
  %72 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @alloc_shash(i32*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
