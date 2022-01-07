; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-opc.c_extract_sprg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-opc.c_extract_sprg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALLOW8_SPRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32*)* @extract_sprg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extract_sprg(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = lshr i64 %8, 16
  %10 = and i64 %9, 31
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = sub i64 %11, 16
  %13 = icmp ugt i64 %12, 3
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ALLOW8_SPRG, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %14, %3
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %20, 16
  %22 = icmp ugt i64 %21, 7
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, 256
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23, %19
  %28 = load i64, i64* %7, align 8
  %29 = icmp ule i64 %28, 3
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = and i64 %31, 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %27, %23, %14
  %35 = load i32*, i32** %6, align 8
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i64, i64* %7, align 8
  %38 = and i64 %37, 7
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
