; ModuleID = '/home/carl/AnghaBench/htop/dragonflybsd/extr_DragonFlyBSDProcessList.c_DragonFlyBSDProcessList_scanMemoryInfo.c'
source_filename = "/home/carl/AnghaBench/htop/dragonflybsd/extr_DragonFlyBSDProcessList.c_DragonFlyBSDProcessList_scanMemoryInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.kvm_swap = type { i64, i64 }

@MIB_hw_physmem = common dso_local global i32 0, align 4
@MIB_vm_stats_vm_v_active_count = common dso_local global i32 0, align 4
@pageSizeKb = common dso_local global i32 0, align 4
@MIB_vm_stats_vm_v_wire_count = common dso_local global i32 0, align 4
@MIB_vfs_bufspace = common dso_local global i32 0, align 4
@MIB_vm_stats_vm_v_cache_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @DragonFlyBSDProcessList_scanMemoryInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DragonFlyBSDProcessList_scanMemoryInfo(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [16 x %struct.kvm_swap], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = bitcast %struct.TYPE_4__* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  store i64 4, i64* %4, align 8
  %10 = load i32, i32* @MIB_hw_physmem, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @sysctl(i32 %10, i32 2, i32* %12, i64* %4, i32* null, i32 0)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %16, 1024
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* @MIB_vm_stats_vm_v_active_count, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @sysctl(i32 %18, i32 4, i32* %20, i64* %4, i32* null, i32 0)
  %22 = load i32, i32* @pageSizeKb, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @MIB_vm_stats_vm_v_wire_count, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = call i32 @sysctl(i32 %27, i32 4, i32* %29, i64* %4, i32* null, i32 0)
  %31 = load i32, i32* @pageSizeKb, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @MIB_vfs_bufspace, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = call i32 @sysctl(i32 %36, i32 2, i32* %38, i64* %4, i32* null, i32 0)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 1024
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @MIB_vm_stats_vm_v_cache_count, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = call i32 @sysctl(i32 %44, i32 4, i32* %46, i64* %4, i32* null, i32 0)
  %48 = load i32, i32* @pageSizeKb, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [16 x %struct.kvm_swap], [16 x %struct.kvm_swap]* %5, i64 0, i64 0
  %66 = call i32 @kvm_getswapinfo(i32 %64, %struct.kvm_swap* %65, i32 16, i32 0)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  store i32 0, i32* %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  store i32 0, i32* %70, align 4
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %98, %1
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [16 x %struct.kvm_swap], [16 x %struct.kvm_swap]* %5, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [16 x %struct.kvm_swap], [16 x %struct.kvm_swap]* %5, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 16
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  br label %98

98:                                               ; preds = %75
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %71

101:                                              ; preds = %71
  %102 = load i32, i32* @pageSizeKb, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* @pageSizeKb, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 6
  store i64 0, i64* %113, align 8
  ret void
}

declare dso_local i32 @sysctl(i32, i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @kvm_getswapinfo(i32, %struct.kvm_swap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
