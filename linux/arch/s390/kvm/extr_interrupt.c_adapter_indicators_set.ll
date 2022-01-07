; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_adapter_indicators_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_adapter_indicators_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.s390_io_adapter = type { i32 }
%struct.kvm_s390_adapter_int = type { i32, i32, i32, i32 }
%struct.s390_map_info = type { i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.s390_io_adapter*, %struct.kvm_s390_adapter_int*)* @adapter_indicators_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adapter_indicators_set(%struct.kvm* %0, %struct.s390_io_adapter* %1, %struct.kvm_s390_adapter_int* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.s390_io_adapter*, align 8
  %7 = alloca %struct.kvm_s390_adapter_int*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.s390_map_info*, align 8
  %12 = alloca i8*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.s390_io_adapter* %1, %struct.s390_io_adapter** %6, align 8
  store %struct.kvm_s390_adapter_int* %2, %struct.kvm_s390_adapter_int** %7, align 8
  %13 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %6, align 8
  %14 = load %struct.kvm_s390_adapter_int*, %struct.kvm_s390_adapter_int** %7, align 8
  %15 = getelementptr inbounds %struct.kvm_s390_adapter_int, %struct.kvm_s390_adapter_int* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.s390_map_info* @get_map_info(%struct.s390_io_adapter* %13, i32 %16)
  store %struct.s390_map_info* %17, %struct.s390_map_info** %11, align 8
  %18 = load %struct.s390_map_info*, %struct.s390_map_info** %11, align 8
  %19 = icmp ne %struct.s390_map_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %102

21:                                               ; preds = %3
  %22 = load %struct.s390_map_info*, %struct.s390_map_info** %11, align 8
  %23 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @page_address(i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load %struct.s390_map_info*, %struct.s390_map_info** %11, align 8
  %27 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kvm_s390_adapter_int*, %struct.kvm_s390_adapter_int** %7, align 8
  %30 = getelementptr inbounds %struct.kvm_s390_adapter_int, %struct.kvm_s390_adapter_int* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @get_ind_bit(i32 %28, i32 %31, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @set_bit(i64 %36, i8* %37)
  %39 = load %struct.kvm*, %struct.kvm** %5, align 8
  %40 = getelementptr inbounds %struct.kvm, %struct.kvm* %39, i32 0, i32 0
  %41 = call i32 @srcu_read_lock(i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.kvm*, %struct.kvm** %5, align 8
  %43 = load %struct.s390_map_info*, %struct.s390_map_info** %11, align 8
  %44 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = call i32 @mark_page_dirty(%struct.kvm* %42, i32 %47)
  %49 = load %struct.s390_map_info*, %struct.s390_map_info** %11, align 8
  %50 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @set_page_dirty_lock(i32 %51)
  %53 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %6, align 8
  %54 = load %struct.kvm_s390_adapter_int*, %struct.kvm_s390_adapter_int** %7, align 8
  %55 = getelementptr inbounds %struct.kvm_s390_adapter_int, %struct.kvm_s390_adapter_int* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.s390_map_info* @get_map_info(%struct.s390_io_adapter* %53, i32 %56)
  store %struct.s390_map_info* %57, %struct.s390_map_info** %11, align 8
  %58 = load %struct.s390_map_info*, %struct.s390_map_info** %11, align 8
  %59 = icmp ne %struct.s390_map_info* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %21
  %61 = load %struct.kvm*, %struct.kvm** %5, align 8
  %62 = getelementptr inbounds %struct.kvm, %struct.kvm* %61, i32 0, i32 0
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @srcu_read_unlock(i32* %62, i32 %63)
  store i32 -1, i32* %4, align 4
  br label %102

65:                                               ; preds = %21
  %66 = load %struct.s390_map_info*, %struct.s390_map_info** %11, align 8
  %67 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @page_address(i32 %68)
  store i8* %69, i8** %12, align 8
  %70 = load %struct.s390_map_info*, %struct.s390_map_info** %11, align 8
  %71 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.kvm_s390_adapter_int*, %struct.kvm_s390_adapter_int** %7, align 8
  %74 = getelementptr inbounds %struct.kvm_s390_adapter_int, %struct.kvm_s390_adapter_int* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %6, align 8
  %77 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @get_ind_bit(i32 %72, i32 %75, i32 %78)
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @test_and_set_bit(i64 %80, i8* %81)
  store i32 %82, i32* %9, align 4
  %83 = load %struct.kvm*, %struct.kvm** %5, align 8
  %84 = load %struct.s390_map_info*, %struct.s390_map_info** %11, align 8
  %85 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PAGE_SHIFT, align 4
  %88 = ashr i32 %86, %87
  %89 = call i32 @mark_page_dirty(%struct.kvm* %83, i32 %88)
  %90 = load %struct.s390_map_info*, %struct.s390_map_info** %11, align 8
  %91 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @set_page_dirty_lock(i32 %92)
  %94 = load %struct.kvm*, %struct.kvm** %5, align 8
  %95 = getelementptr inbounds %struct.kvm, %struct.kvm* %94, i32 0, i32 0
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @srcu_read_unlock(i32* %95, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 0, i32 1
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %65, %60, %20
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.s390_map_info* @get_map_info(%struct.s390_io_adapter*, i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i64 @get_ind_bit(i32, i32, i32) #1

declare dso_local i32 @set_bit(i64, i8*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @mark_page_dirty(%struct.kvm*, i32) #1

declare dso_local i32 @set_page_dirty_lock(i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @test_and_set_bit(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
