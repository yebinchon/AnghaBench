; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_test_ccm_long.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_test_ccm_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"\B4\ACk\EC\93\E8Y\8E\7F\0D\AD\BC\EA[\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"i\91]\AD\1E\84\C67jh\C2\96~M\ABaZ\E0\FD\1F\AE\C4L\C4\84\82\85)F<\CFr\00", align 1
@cf_aes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ccm_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ccm_long() #0 {
  %1 = alloca [65536 x i32], align 16
  %2 = alloca [16 x i32], align 16
  %3 = alloca [14 x i32], align 16
  %4 = alloca [13 x i32], align 16
  %5 = alloca [32 x i32], align 16
  %6 = alloca [32 x i32], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds [65536 x i32], [65536 x i32]* %1, i64 0, i64 0
  %11 = call i32 @fill(i32* %10, i32 262144, i32 0)
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %13 = call i32 @fill(i32* %12, i32 64, i32 64)
  %14 = getelementptr inbounds [13 x i32], [13 x i32]* %4, i64 0, i64 0
  %15 = call i32 @fill(i32* %14, i32 52, i32 16)
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %17 = call i32 @fill(i32* %16, i32 128, i32 32)
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %19 = call i32 @cf_aes_init(i32* %9, i32* %18, i32 64)
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [65536 x i32], [65536 x i32]* %1, i64 0, i64 0
  %22 = getelementptr inbounds [13 x i32], [13 x i32]* %4, i64 0, i64 0
  %23 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %24 = getelementptr inbounds [14 x i32], [14 x i32]* %3, i64 0, i64 0
  %25 = call i32 @cf_ccm_encrypt(i32* @cf_aes, i32* %9, i32* %20, i32 128, i32 -37, i32* %21, i32 262144, i32* %22, i32 52, i32* %23, i32* %24, i32 56)
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds [14 x i32], [14 x i32]* %3, i64 0, i64 0
  %28 = call i64 @memcmp(i8* %26, i32* %27, i32 56)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @TEST_CHECK(i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %34 = call i64 @memcmp(i8* %32, i32* %33, i32 128)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @TEST_CHECK(i32 %36)
  ret void
}

declare dso_local i32 @fill(i32*, i32, i32) #1

declare dso_local i32 @cf_aes_init(i32*, i32*, i32) #1

declare dso_local i32 @cf_ccm_encrypt(i32*, i32*, i32*, i32, i32, i32*, i32, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
