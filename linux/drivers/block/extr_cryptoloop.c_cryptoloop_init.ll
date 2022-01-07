; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_cryptoloop.c_cryptoloop_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_cryptoloop.c_cryptoloop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { %struct.crypto_sync_skcipher* }
%struct.crypto_sync_skcipher = type { i32 }
%struct.loop_info64 = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LO_NAME_SIZE = common dso_local global i32 0, align 4
@LOOP_IV_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cbc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.loop_info64*)* @cryptoloop_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptoloop_init(%struct.loop_device* %0, %struct.loop_info64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop_device*, align 8
  %5 = alloca %struct.loop_info64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.crypto_sync_skcipher*, align 8
  %14 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %4, align 8
  store %struct.loop_info64* %1, %struct.loop_info64** %5, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @LO_NAME_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i8* %20, i8** %12, align 8
  %21 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %22 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LOOP_IV_SECTOR_SIZE, align 4
  %25 = srem i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %114

28:                                               ; preds = %2
  %29 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %30 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LO_NAME_SIZE, align 4
  %33 = call i32 @strncpy(i8* %20, i32 %31, i32 %32)
  %34 = load i32, i32* @LO_NAME_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %20, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 @strcspn(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %7, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8* %43, i8** %11, align 8
  store i32 0, i32* %8, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %28
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @strcspn(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47, %28
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  store i32 3, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 3
  %61 = load i32, i32* @LO_NAME_SIZE, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %116

66:                                               ; preds = %56
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @memmove(i8* %20, i8* %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %20, i64 %71
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %12, align 8
  store i8 40, i8* %73, align 1
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %77 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @memcpy(i8* %75, i32 %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i8*, i8** %12, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %12, align 8
  store i8 41, i8* %85, align 1
  %87 = load i8*, i8** %12, align 8
  store i8 0, i8* %87, align 1
  %88 = call %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8* %20, i32 0, i32 0)
  store %struct.crypto_sync_skcipher* %88, %struct.crypto_sync_skcipher** %13, align 8
  %89 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %13, align 8
  %90 = call i64 @IS_ERR(%struct.crypto_sync_skcipher* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %66
  %93 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %13, align 8
  %94 = call i32 @PTR_ERR(%struct.crypto_sync_skcipher* %93)
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %116

95:                                               ; preds = %66
  %96 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %13, align 8
  %97 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %98 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %101 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @crypto_sync_skcipher_setkey(%struct.crypto_sync_skcipher* %96, i32 %99, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %111

107:                                              ; preds = %95
  %108 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %13, align 8
  %109 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %110 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %109, i32 0, i32 0
  store %struct.crypto_sync_skcipher* %108, %struct.crypto_sync_skcipher** %110, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %116

111:                                              ; preds = %106
  %112 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %13, align 8
  %113 = call i32 @crypto_free_sync_skcipher(%struct.crypto_sync_skcipher* %112)
  br label %114

114:                                              ; preds = %111, %27
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %116

116:                                              ; preds = %114, %107, %92, %63
  %117 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_sync_skcipher*) #2

declare dso_local i32 @PTR_ERR(%struct.crypto_sync_skcipher*) #2

declare dso_local i32 @crypto_sync_skcipher_setkey(%struct.crypto_sync_skcipher*, i32, i32) #2

declare dso_local i32 @crypto_free_sync_skcipher(%struct.crypto_sync_skcipher*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
