; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_preload_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_preload_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32, i32, i64* }

@MMU_FTR_1T_SEGMENT = common dso_local global i32 0, align 4
@ESID_MASK_1T = common dso_local global i64 0, align 8
@SID_SHIFT = common dso_local global i64 0, align 8
@SLB_PRELOAD_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_info*, i64)* @preload_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preload_add(%struct.thread_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.thread_info* %0, %struct.thread_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @MMU_FTR_1T_SEGMENT, align 4
  %9 = call i64 @mmu_has_feature(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ESID_MASK_1T, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i64, i64* @ESID_MASK_1T, align 8
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %16, %11
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @SID_SHIFT, align 8
  %24 = lshr i64 %22, %23
  store i64 %24, i64* %7, align 8
  %25 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @preload_hit(%struct.thread_info* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %68

30:                                               ; preds = %21
  %31 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %32 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %35 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = load i32, i32* @SLB_PRELOAD_NR, align 4
  %39 = srem i32 %37, %38
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %6, align 1
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %43 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %41, i64* %47, align 8
  %48 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %49 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SLB_PRELOAD_NR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %30
  %54 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %55 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @SLB_PRELOAD_NR, align 4
  %59 = srem i32 %57, %58
  %60 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %61 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %67

62:                                               ; preds = %30
  %63 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %64 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %53
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %29
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @mmu_has_feature(i32) #1

declare dso_local i64 @preload_hit(%struct.thread_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
