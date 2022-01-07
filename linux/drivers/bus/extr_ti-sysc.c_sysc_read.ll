; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SYSC_QUIRK_16BIT = common dso_local global i32 0, align 4
@SYSC_REVISION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*, i32)* @sysc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_read(%struct.sysc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sysc*, %struct.sysc** %4, align 8
  %9 = getelementptr inbounds %struct.sysc, %struct.sysc* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SYSC_QUIRK_16BIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %2
  %16 = load %struct.sysc*, %struct.sysc** %4, align 8
  %17 = getelementptr inbounds %struct.sysc, %struct.sysc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @readw_relaxed(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.sysc*, %struct.sysc** %4, align 8
  %24 = getelementptr inbounds %struct.sysc, %struct.sysc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @SYSC_REVISION, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.sysc*, %struct.sysc** %4, align 8
  %33 = getelementptr inbounds %struct.sysc, %struct.sysc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @SYSC_REVISION, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %31, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load %struct.sysc*, %struct.sysc** %4, align 8
  %41 = getelementptr inbounds %struct.sysc, %struct.sysc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = add nsw i64 %45, 4
  %47 = call i32 @readw_relaxed(i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %39, %30, %15
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %2
  %55 = load %struct.sysc*, %struct.sysc** %4, align 8
  %56 = getelementptr inbounds %struct.sysc, %struct.sysc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @readl_relaxed(i64 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %52
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @readw_relaxed(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
