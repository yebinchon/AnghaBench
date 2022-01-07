; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_poly1305.c_poly1305_full_reduce.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_poly1305.c_poly1305_full_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@negative_1305 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @poly1305_full_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poly1305_full_reduce(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [17 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %8, 17
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32*, i32** %2, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 %15
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %4, align 8
  br label %7

20:                                               ; preds = %7
  %21 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 0
  %22 = load i32, i32* @negative_1305, align 4
  %23 = call i32 @poly1305_add(i32* %21, i32 %22)
  %24 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 16
  %25 = load i32, i32* %24, align 16
  %26 = and i32 %25, 128
  %27 = call i32 @mask_u32(i32 %26, i32 128)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = xor i32 %28, -1
  store i32 %29, i32* %6, align 4
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %49, %20
  %31 = load i64, i64* %4, align 8
  %32 = icmp ult i64 %31, 17
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i32*, i32** %2, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %37, %38
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %42, %43
  %45 = or i32 %39, %44
  %46 = load i32*, i32** %2, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %33
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %4, align 8
  br label %30

52:                                               ; preds = %30
  ret void
}

declare dso_local i32 @poly1305_add(i32*, i32) #1

declare dso_local i32 @mask_u32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
