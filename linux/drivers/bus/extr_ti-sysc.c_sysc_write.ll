; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SYSC_QUIRK_16BIT = common dso_local global i32 0, align 4
@SYSC_REVISION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysc*, i32, i32)* @sysc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysc_write(%struct.sysc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sysc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sysc*, %struct.sysc** %4, align 8
  %9 = getelementptr inbounds %struct.sysc, %struct.sysc* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SYSC_QUIRK_16BIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 65535
  %18 = load %struct.sysc*, %struct.sysc** %4, align 8
  %19 = getelementptr inbounds %struct.sysc, %struct.sysc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @writew_relaxed(i32 %17, i64 %23)
  %25 = load %struct.sysc*, %struct.sysc** %4, align 8
  %26 = getelementptr inbounds %struct.sysc, %struct.sysc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @SYSC_REVISION, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %15
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.sysc*, %struct.sysc** %4, align 8
  %35 = getelementptr inbounds %struct.sysc, %struct.sysc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @SYSC_REVISION, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %33, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 16
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.sysc*, %struct.sysc** %4, align 8
  %46 = getelementptr inbounds %struct.sysc, %struct.sysc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = add nsw i64 %50, 4
  %52 = call i32 @writew_relaxed(i32 %44, i64 %51)
  br label %53

53:                                               ; preds = %41, %32, %15
  br label %63

54:                                               ; preds = %3
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.sysc*, %struct.sysc** %4, align 8
  %57 = getelementptr inbounds %struct.sysc, %struct.sysc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = call i32 @writel_relaxed(i32 %55, i64 %61)
  br label %63

63:                                               ; preds = %54, %53
  ret void
}

declare dso_local i32 @writew_relaxed(i32, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
