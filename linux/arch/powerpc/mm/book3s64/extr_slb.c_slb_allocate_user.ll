; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_allocate_user.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_allocate_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.mm_struct = type { i32 }

@EFAULT = common dso_local global i64 0, align 8
@H_PGTABLE_RANGE = common dso_local global i64 0, align 8
@SLB_VSID_USER = common dso_local global i64 0, align 8
@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mm_struct*, i64)* @slb_allocate_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @slb_allocate_user(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = call i64 @mm_ctx_slb_addr_limit(i32* %12)
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* @EFAULT, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %3, align 8
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @get_user_context(i32* %20, i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i64, i64* @EFAULT, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %3, align 8
  br label %58

28:                                               ; preds = %18
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @H_PGTABLE_RANGE, align 8
  %31 = icmp uge i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = call i32 @WARN_ON(i32 1)
  %37 = load i64, i64* @EFAULT, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %3, align 8
  br label %58

39:                                               ; preds = %28
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @user_segment_size(i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @get_slice_psize(%struct.mm_struct* %42, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i64, i64* @SLB_VSID_USER, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %45, %51
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @slb_insert_entry(i64 %53, i64 %54, i64 %55, i32 %56, i32 0)
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %39, %35, %25, %15
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i64 @mm_ctx_slb_addr_limit(i32*) #1

declare dso_local i64 @get_user_context(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @user_segment_size(i64) #1

declare dso_local i32 @get_slice_psize(%struct.mm_struct*, i64) #1

declare dso_local i64 @slb_insert_entry(i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
