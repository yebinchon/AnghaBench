; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_is_cpu_list.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_is_cpu_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rftype* }
%struct.rftype = type { i32 }

@RFTYPE_FLAGS_CPUS_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*)* @is_cpu_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_cpu_list(%struct.kernfs_open_file* %0) #0 {
  %2 = alloca %struct.kernfs_open_file*, align 8
  %3 = alloca %struct.rftype*, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %2, align 8
  %4 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %2, align 8
  %5 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.rftype*, %struct.rftype** %7, align 8
  store %struct.rftype* %8, %struct.rftype** %3, align 8
  %9 = load %struct.rftype*, %struct.rftype** %3, align 8
  %10 = getelementptr inbounds %struct.rftype, %struct.rftype* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RFTYPE_FLAGS_CPUS_LIST, align 4
  %13 = and i32 %11, %12
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
