; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha.h_hmac_test.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha.h_hmac_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@CF_MAXHASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Hi There\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Jefe\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"what do ya want for nothing?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*, i8*, i8*)* @hmac_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hmac_test(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [25 x i32], align 16
  %14 = alloca [50 x i32], align 16
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load i32, i32* @CF_MAXHASH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = getelementptr inbounds [25 x i32], [25 x i32]* %13, i64 0, i64 0
  %21 = call i32 @memset(i32* %20, i32 11, i32 20)
  %22 = getelementptr inbounds [50 x i32], [50 x i32]* %14, i64 0, i64 0
  %23 = call i32 @memcpy(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %24 = getelementptr inbounds [25 x i32], [25 x i32]* %13, i64 0, i64 0
  %25 = getelementptr inbounds [50 x i32], [50 x i32]* %14, i64 0, i64 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = call i32 @cf_hmac(i32* %24, i32 20, i32* %25, i32 8, i32* %19, %struct.TYPE_4__* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @memcmp(i32* %19, i8* %28, i32 %31)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @TEST_CHECK(i32 %34)
  %36 = getelementptr inbounds [25 x i32], [25 x i32]* %13, i64 0, i64 0
  %37 = call i32 @memcpy(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %38 = getelementptr inbounds [50 x i32], [50 x i32]* %14, i64 0, i64 0
  %39 = call i32 @memcpy(i32* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 28)
  %40 = getelementptr inbounds [25 x i32], [25 x i32]* %13, i64 0, i64 0
  %41 = getelementptr inbounds [50 x i32], [50 x i32]* %14, i64 0, i64 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = call i32 @cf_hmac(i32* %40, i32 4, i32* %41, i32 28, i32* %19, %struct.TYPE_4__* %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @memcmp(i32* %19, i8* %44, i32 %47)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @TEST_CHECK(i32 %50)
  %52 = getelementptr inbounds [25 x i32], [25 x i32]* %13, i64 0, i64 0
  %53 = call i32 @memset(i32* %52, i32 170, i32 20)
  %54 = getelementptr inbounds [50 x i32], [50 x i32]* %14, i64 0, i64 0
  %55 = call i32 @memset(i32* %54, i32 221, i32 50)
  %56 = getelementptr inbounds [25 x i32], [25 x i32]* %13, i64 0, i64 0
  %57 = getelementptr inbounds [50 x i32], [50 x i32]* %14, i64 0, i64 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = call i32 @cf_hmac(i32* %56, i32 20, i32* %57, i32 50, i32* %19, %struct.TYPE_4__* %58)
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @memcmp(i32* %19, i8* %60, i32 %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @TEST_CHECK(i32 %66)
  store i32 1, i32* %15, align 4
  br label %68

68:                                               ; preds = %77, %5
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %69, 26
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [25 x i32], [25 x i32]* %13, i64 0, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %68

80:                                               ; preds = %68
  %81 = getelementptr inbounds [50 x i32], [50 x i32]* %14, i64 0, i64 0
  %82 = call i32 @memset(i32* %81, i32 205, i32 50)
  %83 = getelementptr inbounds [25 x i32], [25 x i32]* %13, i64 0, i64 0
  %84 = getelementptr inbounds [50 x i32], [50 x i32]* %14, i64 0, i64 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = call i32 @cf_hmac(i32* %83, i32 25, i32* %84, i32 50, i32* %19, %struct.TYPE_4__* %85)
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @memcmp(i32* %19, i8* %87, i32 %90)
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @TEST_CHECK(i32 %93)
  %95 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %95)
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
