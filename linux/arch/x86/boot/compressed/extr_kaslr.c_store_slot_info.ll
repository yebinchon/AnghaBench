; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_store_slot_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_store_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot_area = type { i64, i32 }
%struct.mem_vector = type { i64, i32 }

@slot_area_index = common dso_local global i64 0, align 8
@MAX_SLOT_AREA = common dso_local global i64 0, align 8
@CONFIG_PHYSICAL_ALIGN = common dso_local global i64 0, align 8
@slot_areas = common dso_local global %struct.slot_area* null, align 8
@slot_max = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_vector*, i64)* @store_slot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_slot_info(%struct.mem_vector* %0, i64 %1) #0 {
  %3 = alloca %struct.mem_vector*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.slot_area, align 8
  store %struct.mem_vector* %0, %struct.mem_vector** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @slot_area_index, align 8
  %7 = load i64, i64* @MAX_SLOT_AREA, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %38

10:                                               ; preds = %2
  %11 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %12 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.slot_area, %struct.slot_area* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load %struct.mem_vector*, %struct.mem_vector** %3, align 8
  %16 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = sub i64 %17, %18
  %20 = load i64, i64* @CONFIG_PHYSICAL_ALIGN, align 8
  %21 = udiv i64 %19, %20
  %22 = add i64 %21, 1
  %23 = getelementptr inbounds %struct.slot_area, %struct.slot_area* %5, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.slot_area, %struct.slot_area* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %10
  %28 = load %struct.slot_area*, %struct.slot_area** @slot_areas, align 8
  %29 = load i64, i64* @slot_area_index, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* @slot_area_index, align 8
  %31 = getelementptr inbounds %struct.slot_area, %struct.slot_area* %28, i64 %29
  %32 = bitcast %struct.slot_area* %31 to i8*
  %33 = bitcast %struct.slot_area* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = getelementptr inbounds %struct.slot_area, %struct.slot_area* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @slot_max, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* @slot_max, align 8
  br label %38

38:                                               ; preds = %9, %27, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
