; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_make_rate_with_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_make_rate_with_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_QOS = common dso_local global i32 0, align 4
@DBG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"make_rate_with_tolerance c=%u, %s, tol=%u\00", align 1
@round_up = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@round_down = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nearest\00", align 1
@round_nearest = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i32, i32*, i32*)* @make_rate_with_tolerance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_rate_with_tolerance(i32* %0, i32 %1, i64 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* @DBG_QOS, align 4
  %16 = load i32, i32* @DBG_FLOW, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @round_up, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %29

23:                                               ; preds = %6
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @round_down, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  br label %29

29:                                               ; preds = %23, %22
  %30 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %22 ], [ %28, %23 ]
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @PRINTD(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %30, i32 %31)
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32* %14, i32** %13, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* @round_nearest, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @make_rate(i32* %37, i32 %38, i64 %39, i32* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %67

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub i32 %46, %47
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ule i32 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %55, %56
  %58 = icmp ule i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %67

60:                                               ; preds = %52, %45
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @make_rate(i32* %61, i32 %62, i64 %63, i32* %64, i32* %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %60, %59, %44
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @PRINTD(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @make_rate(i32*, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
