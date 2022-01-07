; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha.h_hmac_test_sha2.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha.h_hmac_test_sha2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@CF_MAXHASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Test Using Larger Than Block-Size Key - Hash Key First\00", align 1
@.str.1 = private unnamed_addr constant [153 x i8] c"This is a test using a larger than block-size key and a larger than block-size data. The key needs to be hashed before being used by the HMAC algorithm.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*)* @hmac_test_sha2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hmac_test_sha2(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [131 x i32], align 16
  %10 = alloca [152 x i32], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @CF_MAXHASH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = getelementptr inbounds [131 x i32], [131 x i32]* %9, i64 0, i64 0
  %16 = call i32 @memset(i32* %15, i32 170, i32 131)
  %17 = getelementptr inbounds [152 x i32], [152 x i32]* %10, i64 0, i64 0
  %18 = call i32 @memcpy(i32* %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 54)
  %19 = getelementptr inbounds [131 x i32], [131 x i32]* %9, i64 0, i64 0
  %20 = getelementptr inbounds [152 x i32], [152 x i32]* %10, i64 0, i64 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = call i32 @cf_hmac(i32* %19, i32 131, i32* %20, i32 54, i32* %14, %struct.TYPE_4__* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @memcmp(i32* %14, i8* %23, i32 %26)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST_CHECK(i32 %29)
  %31 = getelementptr inbounds [131 x i32], [131 x i32]* %9, i64 0, i64 0
  %32 = call i32 @memset(i32* %31, i32 170, i32 131)
  %33 = getelementptr inbounds [152 x i32], [152 x i32]* %10, i64 0, i64 0
  %34 = call i32 @memcpy(i32* %33, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.1, i64 0, i64 0), i32 152)
  %35 = getelementptr inbounds [131 x i32], [131 x i32]* %9, i64 0, i64 0
  %36 = getelementptr inbounds [152 x i32], [152 x i32]* %10, i64 0, i64 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = call i32 @cf_hmac(i32* %35, i32 131, i32* %36, i32 152, i32* %14, %struct.TYPE_4__* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @memcmp(i32* %14, i8* %39, i32 %42)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_CHECK(i32 %45)
  %47 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @cf_hmac(i32*, i32, i32*, i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @TEST_CHECK(i32) #2

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
