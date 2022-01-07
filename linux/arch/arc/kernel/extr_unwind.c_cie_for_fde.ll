; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unwind.c_cie_for_fde.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unwind.c_cie_for_fde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_table = type { i32 }

@bad_cie = common dso_local global i32 0, align 4
@CIE_ID = common dso_local global i32 0, align 4
@not_fde = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.unwind_table*)* @cie_for_fde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cie_for_fde(i32* %0, %struct.unwind_table* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.unwind_table*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.unwind_table* %1, %struct.unwind_table** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 3
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %2
  store i32* @bad_cie, i32** %3, align 8
  br label %64

17:                                               ; preds = %10
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CIE_ID, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32* @not_fde, i32** %3, align 8
  br label %64

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = and i64 %28, 3
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32* null, i32** %3, align 8
  br label %64

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = call i32* @__cie_for_fde(i32* %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ule i64 %37, 8
  br i1 %38, label %61, label %39

39:                                               ; preds = %32
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 %46, 4
  %48 = icmp uge i64 %42, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %39
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = and i64 %52, 3
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CIE_ID, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %49, %39, %32
  store i32* null, i32** %3, align 8
  br label %64

62:                                               ; preds = %55
  %63 = load i32*, i32** %6, align 8
  store i32* %63, i32** %3, align 8
  br label %64

64:                                               ; preds = %62, %61, %31, %23, %16
  %65 = load i32*, i32** %3, align 8
  ret i32* %65
}

declare dso_local i32* @__cie_for_fde(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
