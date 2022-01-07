; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_btext.c_btext_clearscreen.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_btext.c_btext_clearscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dispDeviceRect = common dso_local global i32* null, align 8
@dispDeviceDepth = common dso_local global i32 0, align 4
@dispDeviceRowBytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btext_clearscreen() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = call i64 @calc_base(i32 0, i32 0)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** @dispDeviceRect, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** @dispDeviceRect, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = load i32, i32* @dispDeviceDepth, align 4
  %16 = ashr i32 %15, 3
  %17 = mul nsw i32 %14, %16
  %18 = ashr i32 %17, 2
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %2, align 8
  %20 = call i32 (...) @rmci_maybe_on()
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %50, %0
  %22 = load i32, i32* %3, align 4
  %23 = load i32*, i32** @dispDeviceRect, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @dispDeviceRect, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = icmp slt i32 %22, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %21
  %32 = load i32*, i32** %1, align 8
  store i32* %32, i32** %5, align 8
  %33 = load i64, i64* %2, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %41, %31
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %5, align 8
  store i32 0, i32* %39, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  br label %35

44:                                               ; preds = %35
  %45 = load i32, i32* @dispDeviceRowBytes, align 4
  %46 = ashr i32 %45, 2
  %47 = load i32*, i32** %1, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %1, align 8
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %21

53:                                               ; preds = %21
  %54 = call i32 (...) @rmci_maybe_off()
  ret void
}

declare dso_local i64 @calc_base(i32, i32) #1

declare dso_local i32 @rmci_maybe_on(...) #1

declare dso_local i32 @rmci_maybe_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
