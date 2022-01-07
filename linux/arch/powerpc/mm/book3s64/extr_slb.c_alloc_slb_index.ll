; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_alloc_slb_index.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_alloc_slb_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@local_paca = common dso_local global %struct.TYPE_2__* null, align 8
@U32_MAX = common dso_local global i32 0, align 4
@mmu_slb_size = common dso_local global i32 0, align 4
@SLB_NUM_BOLTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @alloc_slb_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_slb_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_paca, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @U32_MAX, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_paca, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ffz(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 1, %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_paca, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 1, %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_paca, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %9
  br label %69

30:                                               ; preds = %1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_paca, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @mmu_slb_size, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @SLB_NUM_BOLTED, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_paca, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ult i32 %47, 32
  br i1 %48, label %49, label %68

49:                                               ; preds = %43
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = shl i32 1, %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_paca, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %67

59:                                               ; preds = %49
  %60 = load i32, i32* %3, align 4
  %61 = shl i32 1, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_paca, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %59, %52
  br label %68

68:                                               ; preds = %67, %43
  br label %69

69:                                               ; preds = %68, %29
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @SLB_NUM_BOLTED, align 4
  %72 = icmp ult i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
