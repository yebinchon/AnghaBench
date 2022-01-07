; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_scan_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_scan_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @scan_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scan_sync(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %7, align 8
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ult i32* %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %6, align 8
  %19 = load i32, i32* %17, align 4
  %20 = icmp ne i32 %19, 17545
  br label %21

21:                                               ; preds = %16, %12
  %22 = phi i1 [ false, %12 ], [ %20, %16 ]
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %12

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ult i32* %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 17545
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ult i32* %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %6, align 8
  br label %29

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  %44 = ptrtoint i32* %43 to i64
  store i64 %44, i64* %3, align 8
  br label %46

45:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
