; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_test_cbc.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_test_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"vI\AB\AC\81\19\B2F\CE\E9\8E\9B\12\E9\19}\00", align 1
@cf_aes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cbc() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @cf_aes_init(i32* %6, i8* %9, i32 16)
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @cf_cbc_init(i32* %7, i32* @cf_aes, i32* %6, i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %15 = call i32 @cf_cbc_encrypt(i32* %7, i8* %13, i32* %14, i32 1)
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @memcmp(i32* %16, i8* %17, i32 16)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @TEST_CHECK(i32 %20)
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @cf_cbc_init(i32* %7, i32* @cf_aes, i32* %6, i8* %22)
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %26 = call i32 @cf_cbc_decrypt(i32* %7, i32* %24, i32* %25, i32 1)
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @memcmp(i32* %27, i8* %28, i32 16)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST_CHECK(i32 %31)
  ret void
}

declare dso_local i32 @cf_aes_init(i32*, i8*, i32) #1

declare dso_local i32 @cf_cbc_init(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @cf_cbc_encrypt(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @cf_cbc_decrypt(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
