; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsalsa20.c_test_salsa20.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsalsa20.c_test_salsa20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [65 x i8] c"0102030405060708090a0b0c0d0e0f10c9cacbcccdcecfd0d1d2d3d4d5d6d7d8\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"65666768696a6b6c6d6e6f7071727374\00", align 1
@.str.2 = private unnamed_addr constant [129 x i8] c"45254427290f6bc1ff8b7a06aae9d9625990b66a1533c841ef31de22d772287e68c507e1c5991f02664e4cb054f5f6b8b1a0858206489577c0c384ecea67f64a\00", align 1
@.str.3 = private unnamed_addr constant [129 x i8] c"27ad2ef81ec852113043feef25120df7f1c83d900a3732b9062ff6fd8f56bbe186556ef6a1a32bebe75eab3391d6701d0ee80510978cb78dab097ab568b6b1c1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_salsa20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_salsa20() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca [32 x i32], align 16
  %3 = alloca [8 x i32], align 16
  %4 = alloca [64 x i32], align 16
  %5 = alloca [64 x i32], align 16
  %6 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %7 = call i32 @unhex(i32* %6, i32 32, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %9 = call i32 @memset(i32* %8, i32 0, i32 8)
  %10 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %12 = call i32 @cf_salsa20_init(%struct.TYPE_4__* %1, i32* %10, i32 128, i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @unhex(i32* %14, i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %16 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %17 = call i32 @memset(i32* %16, i32 0, i32 64)
  %18 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %19 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %20 = call i32 @cf_salsa20_cipher(%struct.TYPE_4__* %1, i32* %18, i32* %19, i32 64)
  %21 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %22 = call i32 @unhex(i32* %21, i32 64, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.2, i64 0, i64 0))
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %24 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %25 = call i64 @memcmp(i32* %23, i32* %24, i32 64)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @TEST_CHECK(i32 %27)
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %31 = call i32 @cf_salsa20_init(%struct.TYPE_4__* %1, i32* %29, i32 16, i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @unhex(i32* %33, i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %36 = call i32 @memset(i32* %35, i32 0, i32 64)
  %37 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %38 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %39 = call i32 @cf_salsa20_cipher(%struct.TYPE_4__* %1, i32* %37, i32* %38, i32 64)
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %41 = call i32 @unhex(i32* %40, i32 64, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.3, i64 0, i64 0))
  %42 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %43 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %44 = call i64 @memcmp(i32* %42, i32* %43, i32 64)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @TEST_CHECK(i32 %46)
  ret void
}

declare dso_local i32 @unhex(i32*, i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cf_salsa20_init(%struct.TYPE_4__*, i32*, i32, i32*) #1

declare dso_local i32 @cf_salsa20_cipher(%struct.TYPE_4__*, i32*, i32*, i32) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
