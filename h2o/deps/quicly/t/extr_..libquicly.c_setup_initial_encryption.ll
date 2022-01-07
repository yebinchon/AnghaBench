; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_setup_initial_encryption.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_setup_initial_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.st_quicly_cipher_context_t = type { i32 }

@setup_initial_encryption.salt = internal constant [20 x i32] [i32 195, i32 238, i32 247, i32 18, i32 199, i32 46, i32 187, i32 90, i32 17, i32 167, i32 210, i32 67, i32 43, i32 180, i32 99, i32 101, i32 190, i32 249, i32 245, i32 2], align 16
@setup_initial_encryption.labels = internal global [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"client in\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"server in\00", align 1
@PTLS_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.st_quicly_cipher_context_t*, %struct.st_quicly_cipher_context_t*, i32, i32)* @setup_initial_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_initial_encryption(%struct.TYPE_4__* %0, %struct.st_quicly_cipher_context_t* %1, %struct.st_quicly_cipher_context_t* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.st_quicly_cipher_context_t*, align 8
  %8 = alloca %struct.st_quicly_cipher_context_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.st_quicly_cipher_context_t* %1, %struct.st_quicly_cipher_context_t** %7, align 8
  store %struct.st_quicly_cipher_context_t* %2, %struct.st_quicly_cipher_context_t** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @PTLS_MAX_DIGEST_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ptls_iovec_init(i32* getelementptr inbounds ([20 x i32], [20 x i32]* @setup_initial_encryption.salt, i64 0, i64 0), i32 80)
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ptls_hkdf_extract(i32 %20, i32* %17, i32 %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %50

26:                                               ; preds = %5
  %27 = load %struct.st_quicly_cipher_context_t*, %struct.st_quicly_cipher_context_t** %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* @setup_initial_encryption.labels, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @setup_initial_key(%struct.st_quicly_cipher_context_t* %27, %struct.TYPE_4__* %28, i32* %17, i8* %32, i32 0)
  store i32 %33, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %50

36:                                               ; preds = %26
  %37 = load %struct.st_quicly_cipher_context_t*, %struct.st_quicly_cipher_context_t** %8, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* @setup_initial_encryption.labels, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @setup_initial_key(%struct.st_quicly_cipher_context_t* %37, %struct.TYPE_4__* %38, i32* %17, i8* %45, i32 1)
  store i32 %46, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %50

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %48, %35, %25
  %51 = mul nuw i64 4, %15
  %52 = trunc i64 %51 to i32
  %53 = call i32 @ptls_clear_memory(i32* %17, i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ptls_hkdf_extract(i32, i32*, i32, i32) #2

declare dso_local i32 @ptls_iovec_init(i32*, i32) #2

declare dso_local i32 @setup_initial_key(%struct.st_quicly_cipher_context_t*, %struct.TYPE_4__*, i32*, i8*, i32) #2

declare dso_local i32 @ptls_clear_memory(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
