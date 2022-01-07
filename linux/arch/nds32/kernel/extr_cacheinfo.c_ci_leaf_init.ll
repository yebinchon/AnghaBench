; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_cacheinfo.c_ci_leaf_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_cacheinfo.c_ci_leaf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cacheinfo = type { i32, i32, i32, i32, i32, i32, i32 }

@CACHE_TYPE_INST = common dso_local global i32 0, align 4
@ICACHE = common dso_local global i8 0, align 1
@DCACHE = common dso_local global i8 0, align 1
@CACHE_WRITE_BACK = common dso_local global i32 0, align 4
@CACHE_WRITE_THROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cacheinfo*, i32, i32)* @ci_leaf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_leaf_init(%struct.cacheinfo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cacheinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.cacheinfo* %0, %struct.cacheinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @CACHE_TYPE_INST, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8, i8* @ICACHE, align 1
  %14 = sext i8 %13 to i32
  br label %18

15:                                               ; preds = %3
  %16 = load i8, i8* @DCACHE, align 1
  %17 = sext i8 %16 to i32
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %7, align 1
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %23 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %26 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i8, i8* %7, align 1
  %28 = call i32 @CACHE_LINE_SIZE(i8 signext %27)
  %29 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %30 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i8, i8* %7, align 1
  %32 = call i32 @CACHE_SET(i8 signext %31)
  %33 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %34 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i8, i8* %7, align 1
  %36 = call i32 @CACHE_WAY(i8 signext %35)
  %37 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %38 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %40 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %43 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %47 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %51 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @CACHE_WRITE_BACK, align 4
  %53 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %54 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  ret void
}

declare dso_local i32 @CACHE_LINE_SIZE(i8 signext) #1

declare dso_local i32 @CACHE_SET(i8 signext) #1

declare dso_local i32 @CACHE_WAY(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
