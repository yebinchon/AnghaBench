; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_remap_area_pfn_pte_fn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_remap_area_pfn_pte_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remap_data = type { %struct.TYPE_3__*, i64, i32*, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MMU_PT_UPDATE_NO_TRANSLATE = common dso_local global i32 0, align 4
@MMU_NORMAL_PT_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*)* @remap_area_pfn_pte_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_area_pfn_pte_fn(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.remap_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.remap_data*
  store %struct.remap_data* %11, %struct.remap_data** %7, align 8
  %12 = load %struct.remap_data*, %struct.remap_data** %7, align 8
  %13 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.remap_data*, %struct.remap_data** %7, align 8
  %17 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mfn_pte(i32 %15, i32 %18)
  %20 = call i32 @pte_mkspecial(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.remap_data*, %struct.remap_data** %7, align 8
  %22 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.remap_data*, %struct.remap_data** %7, align 8
  %27 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %36

31:                                               ; preds = %3
  %32 = load %struct.remap_data*, %struct.remap_data** %7, align 8
  %33 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %33, align 8
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @virt_to_machine(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.remap_data*, %struct.remap_data** %7, align 8
  %43 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.remap_data*, %struct.remap_data** %7, align 8
  %47 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load i32, i32* @MMU_PT_UPDATE_NO_TRANSLATE, align 4
  br label %54

52:                                               ; preds = %36
  %53 = load i32, i32* @MMU_NORMAL_PT_UPDATE, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.remap_data*, %struct.remap_data** %7, align 8
  %57 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @pte_val_ma(i32 %62)
  %64 = load %struct.remap_data*, %struct.remap_data** %7, align 8
  %65 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.remap_data*, %struct.remap_data** %7, align 8
  %69 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 1
  store %struct.TYPE_3__* %71, %struct.TYPE_3__** %69, align 8
  ret i32 0
}

declare dso_local i32 @pte_mkspecial(i32) #1

declare dso_local i32 @mfn_pte(i32, i32) #1

declare dso_local i32 @virt_to_machine(i32*) #1

declare dso_local i32 @pte_val_ma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
