; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_cmac.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_check_cmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@cf_aes = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i8*, i64)* @check_cmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_cmac(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [16 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cf_aes, i32 0, i32 0), align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @TEST_CHECK(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @cf_aes_init(i32* %14, i8* %21, i64 %22)
  %24 = call i32 @cf_cmac_init(i32* %15, %struct.TYPE_3__* @cf_aes, i32* %14)
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %28 = call i32 @cf_cmac_sign(i32* %15, i8* %25, i64 %26, i32* %27)
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cf_aes, i32 0, i32 0), align 8
  %32 = call i64 @memcmp(i32* %29, i8* %30, i64 %31)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @TEST_CHECK(i32 %34)
  ret void
}

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i32 @cf_aes_init(i32*, i8*, i64) #1

declare dso_local i32 @cf_cmac_init(i32*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @cf_cmac_sign(i32*, i8*, i64, i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
