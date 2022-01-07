; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testpoly1305.c_check.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testpoly1305.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [16 x i32], align 16
  %10 = alloca [16 x i32], align 16
  %11 = alloca [16 x i32], align 16
  %12 = alloca [132 x i32], align 16
  %13 = alloca [16 x i32], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @unhex(i32* %16, i32 64, i8* %17)
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @unhex(i32* %19, i32 64, i8* %20)
  %22 = getelementptr inbounds [132 x i32], [132 x i32]* %12, i64 0, i64 0
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @unhex(i32* %22, i32 528, i8* %23)
  store i64 %24, i64* %14, align 8
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @unhex(i32* %25, i32 64, i8* %26)
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %30 = call i32 @cf_poly1305_init(i32* %15, i32* %28, i32* %29)
  %31 = getelementptr inbounds [132 x i32], [132 x i32]* %12, i64 0, i64 0
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @cf_poly1305_update(i32* %15, i32* %31, i64 %32)
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %35 = call i32 @cf_poly1305_finish(i32* %15, i32* %34)
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %38 = call i64 @memcmp(i32* %36, i32* %37, i32 16)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @TEST_CHECK(i32 %40)
  ret void
}

declare dso_local i64 @unhex(i32*, i32, i8*) #1

declare dso_local i32 @cf_poly1305_init(i32*, i32*, i32*) #1

declare dso_local i32 @cf_poly1305_update(i32*, i32*, i64) #1

declare dso_local i32 @cf_poly1305_finish(i32*, i32*) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
