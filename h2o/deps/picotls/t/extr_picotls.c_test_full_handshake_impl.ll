; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_full_handshake_impl.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_full_handshake_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sc_callcnt = common dso_local global i32 0, align 4
@TEST_HANDSHAKE_1RTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_full_handshake_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_full_handshake_impl(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @sc_callcnt, align 4
  %3 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %4 = load i32, i32* @TEST_HANDSHAKE_1RTT, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @test_handshake(i32 %3, i32 %4, i32 0, i32 0, i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @sc_callcnt, align 4
  %11 = icmp eq i32 %10, 2
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12)
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @sc_callcnt, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %21 = load i32, i32* @TEST_HANDSHAKE_1RTT, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @test_handshake(i32 %20, i32 %21, i32 0, i32 0, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @sc_callcnt, align 4
  %28 = icmp eq i32 %27, 4
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29)
  br label %36

31:                                               ; preds = %19
  %32 = load i32, i32* @sc_callcnt, align 4
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %38 = load i32, i32* @TEST_HANDSHAKE_1RTT, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @test_handshake(i32 %37, i32 %38, i32 0, i32 1, i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @sc_callcnt, align 4
  %45 = icmp eq i32 %44, 6
  %46 = zext i1 %45 to i32
  %47 = call i32 @ok(i32 %46)
  br label %53

48:                                               ; preds = %36
  %49 = load i32, i32* @sc_callcnt, align 4
  %50 = icmp eq i32 %49, 3
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  ret void
}

declare dso_local i32 @test_handshake(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ptls_iovec_init(i32*, i32) #1

declare dso_local i32 @ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
