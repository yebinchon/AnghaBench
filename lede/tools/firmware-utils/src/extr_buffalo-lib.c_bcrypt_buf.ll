; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-lib.c_bcrypt_buf.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-lib.c_bcrypt_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcrypt_ctx = type { i32 }

@BCRYPT_MAX_KEYLEN = common dso_local global i32 0, align 4
@BCRYPT_DEFAULT_STATE_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcrypt_buf(i8 zeroext %0, i8* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.bcrypt_ctx, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8 %0, i8* %8, align 1
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @BCRYPT_MAX_KEYLEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %16, align 4
  %27 = load i8, i8* %8, align 1
  %28 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %27, i8* %28, align 16
  %29 = getelementptr inbounds i8, i8* %24, i64 1
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @memcpy(i8* %29, i8* %30, i32 %31)
  %33 = load i32, i32* %16, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i64, i64* %12, align 8
  br label %42

40:                                               ; preds = %6
  %41 = load i64, i64* @BCRYPT_DEFAULT_STATE_LEN, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = call i32 @bcrypt_init(%struct.bcrypt_ctx* %17, i8* %24, i32 %35, i64 %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %18, align 4
  store i32 %48, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %55

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @bcrypt_process(%struct.bcrypt_ctx* %17, i8* %50, i8* %51, i64 %52)
  %54 = call i32 @bcrypt_finish(%struct.bcrypt_ctx* %17)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %55

55:                                               ; preds = %49, %47
  %56 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @bcrypt_init(%struct.bcrypt_ctx*, i8*, i32, i64) #2

declare dso_local i32 @bcrypt_process(%struct.bcrypt_ctx*, i8*, i8*, i64) #2

declare dso_local i32 @bcrypt_finish(%struct.bcrypt_ctx*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
