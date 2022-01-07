; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_openssl.c_test_rsa_sign.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_openssl.c_test_rsa_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@ctx = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rsa_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rsa_sign() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca [1024 x i32], align 16
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %1, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %9 = getelementptr inbounds [1024 x i32], [1024 x i32]* %4, i64 0, i64 0
  %10 = call i32 @ptls_buffer_init(%struct.TYPE_8__* %3, i32* %9, i32 4096)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = call i32 @ptls_iovec_init(i8* %14, i32 %16)
  %18 = call i32 (...) @EVP_sha256()
  %19 = call i64 @do_sign(i32 %13, %struct.TYPE_8__* %3, i32 %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @EVP_PKEY_up_ref(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %2, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @ptls_iovec_init(i8* %30, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ptls_iovec_init(i8* %35, i32 %37)
  %39 = call i64 @verify_sign(i32 %29, i32 %33, i32 %38)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41)
  %43 = call i32 @ptls_buffer_dispose(%struct.TYPE_8__* %3)
  ret void
}

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @do_sign(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ptls_iovec_init(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32 @EVP_PKEY_up_ref(i32) #1

declare dso_local i64 @verify_sign(i32, i32, i32) #1

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
