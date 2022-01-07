; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cache.c_ci_leaf_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cache.c_ci_leaf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cacheinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CACHE_TYPE_INST = common dso_local global i32 0, align 4
@CACHE_TI_INSTRUCTION = common dso_local global i32 0, align 4
@CACHE_TI_UNIFIED = common dso_local global i32 0, align 4
@EXTRACT_LINE_SIZE = common dso_local global i32 0, align 4
@EXTRACT_ASSOCIATIVITY = common dso_local global i32 0, align 4
@EXTRACT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cacheinfo*, i32, i32, i32, i32)* @ci_leaf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_leaf_init(%struct.cacheinfo* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cacheinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cacheinfo* %0, %struct.cacheinfo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @CACHE_TYPE_INST, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @CACHE_TI_INSTRUCTION, align 4
  store i32 %17, i32* %11, align 4
  br label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @CACHE_TI_UNIFIED, align 4
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, i32* %9, align 4
  %22 = add i32 %21, 1
  %23 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %24 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %27 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @EXTRACT_LINE_SIZE, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i8* @ecag(i32 %28, i32 %29, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %34 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @EXTRACT_ASSOCIATIVITY, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i8* @ecag(i32 %35, i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %41 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @EXTRACT_SIZE, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i8* @ecag(i32 %42, i32 %43, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %48 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %50 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %53 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %51, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %57 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sdiv i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %63 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %66 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %65, i32 0, i32 7
  %67 = call i32 @cpumask_set_cpu(i32 %64, i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %20
  %71 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %72 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %71, i32 0, i32 6
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %20
  ret void
}

declare dso_local i8* @ecag(i32, i32, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
