; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pageattr.c_walk_p4d_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pageattr.c_walk_p4d_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64)* @walk_p4d_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_p4d_level(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32* @p4d_offset(i32* %13, i64 %14)
  store i32* %15, i32** %11, align 8
  br label %16

16:                                               ; preds = %45, %4
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @p4d_none(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %49

24:                                               ; preds = %16
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @p4d_addr_end(i64 %25, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @walk_pud_level(i32* %28, i64 %29, i64 %30, i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %11, align 8
  %35 = load i64, i64* %10, align 8
  store i64 %35, i64* %7, align 8
  %36 = call i32 (...) @cond_resched()
  br label %37

37:                                               ; preds = %24
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %16, label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %21
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i64 @p4d_none(i32) #1

declare dso_local i64 @p4d_addr_end(i64, i64) #1

declare dso_local i32 @walk_pud_level(i32*, i64, i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
