; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_get_delta.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_get_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }

@NUM_ITERS = common dso_local global i64 0, align 8
@tick_ops = common dso_local global %struct.TYPE_2__* null, align 8
@go = common dso_local global i64* null, align 8
@MASTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"#StoreLoad\00", align 1
@SLAVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64*)* @get_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_delta(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 -1, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %56, %2
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* @NUM_ITERS, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tick_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64 (...)*, i64 (...)** %19, align 8
  %21 = call i64 (...) %20()
  store i64 %21, i64* %9, align 8
  %22 = load i64*, i64** @go, align 8
  %23 = load i64, i64* @MASTER, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 1, i64* %24, align 8
  %25 = call i32 @membar_safe(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %33, %17
  %27 = load i64*, i64** @go, align 8
  %28 = load i64, i64* @SLAVE, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 (...) @rmb()
  br label %26

35:                                               ; preds = %26
  %36 = load i64*, i64** @go, align 8
  %37 = load i64, i64* @SLAVE, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 0, i64* %38, align 8
  %39 = call i32 (...) @wmb()
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tick_ops, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64 (...)*, i64 (...)** %41, align 8
  %43 = call i64 (...) %42()
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 %44, %45
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 %47, %48
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %51, %35
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %12, align 8
  br label %13

59:                                               ; preds = %13
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = sub i64 %60, %61
  %63 = load i64*, i64** %3, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %5, align 8
  %66 = sub i64 %64, %65
  %67 = load i64*, i64** %4, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* %5, align 8
  %69 = udiv i64 %68, 2
  %70 = load i64, i64* %6, align 8
  %71 = udiv i64 %70, 2
  %72 = add i64 %69, %71
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %5, align 8
  %74 = urem i64 %73, 2
  %75 = load i64, i64* %6, align 8
  %76 = urem i64 %75, 2
  %77 = add i64 %74, %76
  %78 = icmp eq i64 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %59
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %79, %59
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %7, align 8
  %85 = sub i64 %83, %84
  ret i64 %85
}

declare dso_local i32 @membar_safe(i8*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
