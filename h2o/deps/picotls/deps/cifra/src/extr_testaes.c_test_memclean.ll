; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_memclean.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_memclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_memclean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memclean() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [32 x i32], align 16
  %3 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %4 = call i32 @memset(i32* %3, i32 255, i32 128)
  %5 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = call i32 @mem_clean(i32* %6, i32 126)
  %8 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp eq i32 %9, 255
  %11 = zext i1 %10 to i32
  %12 = call i32 @TEST_CHECK(i32 %11)
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @TEST_CHECK(i32 %16)
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 16
  %19 = load i32, i32* %18, align 16
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @TEST_CHECK(i32 %21)
  %23 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 30
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @TEST_CHECK(i32 %26)
  %28 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 31
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 255
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST_CHECK(i32 %31)
  %33 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %35 = call i32 @memcpy(i32* %33, i32* %34, i32 128)
  %36 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = icmp eq i32 %37, 255
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST_CHECK(i32 %39)
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @TEST_CHECK(i32 %44)
  %46 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 16
  %47 = load i32, i32* %46, align 16
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @TEST_CHECK(i32 %49)
  %51 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 30
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @TEST_CHECK(i32 %54)
  %56 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 31
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 255
  %59 = zext i1 %58 to i32
  %60 = call i32 @TEST_CHECK(i32 %59)
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %62 = call i32 @memset(i32* %61, i32 238, i32 128)
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %64 = load i32, i32* %63, align 16
  %65 = icmp eq i32 %64, 238
  %66 = zext i1 %65 to i32
  %67 = call i32 @TEST_CHECK(i32 %66)
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 238
  %71 = zext i1 %70 to i32
  %72 = call i32 @TEST_CHECK(i32 %71)
  %73 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 238
  %76 = zext i1 %75 to i32
  %77 = call i32 @TEST_CHECK(i32 %76)
  %78 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 238
  %81 = zext i1 %80 to i32
  %82 = call i32 @TEST_CHECK(i32 %81)
  %83 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 30
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 238
  %86 = zext i1 %85 to i32
  %87 = call i32 @TEST_CHECK(i32 %86)
  %88 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 31
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 238
  %91 = zext i1 %90 to i32
  %92 = call i32 @TEST_CHECK(i32 %91)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mem_clean(i32*, i32) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
