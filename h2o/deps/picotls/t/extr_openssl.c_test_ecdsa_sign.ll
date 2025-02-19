; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_openssl.c_test_ecdsa_sign.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_openssl.c_test_ecdsa_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@NID_X9_62_prime256v1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ecdsa_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ecdsa_sign() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca [1024 x i32], align 16
  %6 = load i32, i32* @NID_X9_62_prime256v1, align 4
  %7 = call i32* @EC_KEY_new_by_curve_name(i32 %6)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @EC_KEY_generate_key(i32* %8)
  %10 = call i32* (...) @EVP_PKEY_new()
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @EVP_PKEY_set1_EC_KEY(i32* %11, i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @EC_KEY_free(i32* %14)
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %16 = getelementptr inbounds [1024 x i32], [1024 x i32]* %5, i64 0, i64 0
  %17 = call i32 @ptls_buffer_init(%struct.TYPE_5__* %4, i32* %16, i32 4096)
  %18 = load i32*, i32** %1, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @ptls_iovec_init(i8* %19, i32 %21)
  %23 = call i32 (...) @EVP_sha256()
  %24 = call i64 @do_sign(i32* %18, %struct.TYPE_5__* %4, i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @EVP_PKEY_up_ref(i32* %28)
  %30 = load i32*, i32** %1, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i32 @ptls_iovec_init(i8* %31, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ptls_iovec_init(i8* %36, i32 %38)
  %40 = call i64 @verify_sign(i32* %30, i32 %34, i32 %39)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ok(i32 %42)
  %44 = call i32 @ptls_buffer_dispose(%struct.TYPE_5__* %4)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @EVP_PKEY_free(i32* %45)
  ret void
}

declare dso_local i32* @EC_KEY_new_by_curve_name(i32) #1

declare dso_local i32 @EC_KEY_generate_key(i32*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_set1_EC_KEY(i32*, i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @do_sign(i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ptls_iovec_init(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32 @EVP_PKEY_up_ref(i32*) #1

declare dso_local i64 @verify_sign(i32*, i32, i32) #1

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_5__*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
