; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_normal_pmc_alternative.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_normal_pmc_alternative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i32*)* }

@MAX_EVENT_ALTERNATIVES = common dso_local global i32 0, align 4
@PPMU_LIMITED_PMC_OK = common dso_local global i64 0, align 8
@PPMU_LIMITED_PMC_REQD = common dso_local global i64 0, align 8
@ppmu = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @normal_pmc_alternative to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normal_pmc_alternative(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @MAX_EVENT_ALTERNATIVES, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i64, i64* @PPMU_LIMITED_PMC_OK, align 8
  %15 = load i64, i64* @PPMU_LIMITED_PMC_REQD, align 8
  %16 = or i64 %14, %15
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, i64, i32*)*, i32 (i32, i64, i32*)** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 %22(i32 %23, i64 %24, i32* %13)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %32

29:                                               ; preds = %2
  %30 = getelementptr inbounds i32, i32* %13, i64 0
  %31 = load i32, i32* %30, align 16
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %33)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
