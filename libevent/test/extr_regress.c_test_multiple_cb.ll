; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress.c_test_multiple_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress.c_test_multiple_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EV_READ = common dso_local global i16 0, align 2
@test_ok = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @test_multiple_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_multiple_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %7 = load i16, i16* %5, align 2
  %8 = sext i16 %7 to i32
  %9 = load i16, i16* @EV_READ, align 2
  %10 = sext i16 %9 to i32
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @test_ok, align 4
  %15 = or i32 %14, 1
  store i32 %15, i32* @test_ok, align 4
  br label %27

16:                                               ; preds = %3
  %17 = load i16, i16* %5, align 2
  %18 = sext i16 %17 to i32
  %19 = load i16, i16* @EV_WRITE, align 2
  %20 = sext i16 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @test_ok, align 4
  %25 = or i32 %24, 2
  store i32 %25, i32* @test_ok, align 4
  br label %26

26:                                               ; preds = %23, %16
  br label %27

27:                                               ; preds = %26, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
