; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_mbus_get_pcie_io_aperture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_mbus_get_pcie_io_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.resource }
%struct.resource = type { i32 }

@mbus_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvebu_mbus_get_pcie_io_aperture(%struct.resource* %0) #0 {
  %2 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %2, align 8
  %3 = load %struct.resource*, %struct.resource** %2, align 8
  %4 = icmp ne %struct.resource* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  %7 = load %struct.resource*, %struct.resource** %2, align 8
  %8 = bitcast %struct.resource* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_2__* @mbus_state to i8*), i64 4, i1 false)
  br label %9

9:                                                ; preds = %6, %5
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
