; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_a20.c_a20_test.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_a20.c_a20_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A20_TEST_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a20_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a20_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = call i32 @set_fs(i32 0)
  %7 = call i32 @set_gs(i32 65535)
  %8 = load i64, i64* @A20_TEST_ADDR, align 8
  %9 = call i32 @rdfs32(i64 %8)
  store i32 %9, i32* %5, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %2, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* @A20_TEST_ADDR, align 8
  %18 = call i32 @wrfs32(i32 %16, i64 %17)
  %19 = call i32 (...) @io_delay()
  %20 = load i64, i64* @A20_TEST_ADDR, align 8
  %21 = add nsw i64 %20, 16
  %22 = call i32 @rdgs32(i64 %21)
  %23 = load i32, i32* %5, align 4
  %24 = xor i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %29

28:                                               ; preds = %14
  br label %10

29:                                               ; preds = %27, %10
  %30 = load i32, i32* %4, align 4
  %31 = load i64, i64* @A20_TEST_ADDR, align 8
  %32 = call i32 @wrfs32(i32 %30, i64 %31)
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @set_gs(i32) #1

declare dso_local i32 @rdfs32(i64) #1

declare dso_local i32 @wrfs32(i32, i64) #1

declare dso_local i32 @io_delay(...) #1

declare dso_local i32 @rdgs32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
