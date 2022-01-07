; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_mmap.c_mmap_is_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_mmap.c_mmap_is_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rlimit = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@ADDR_COMPAT_LAYOUT = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@sysctl_legacy_va_layout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rlimit*)* @mmap_is_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_is_legacy(%struct.rlimit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rlimit*, align 8
  store %struct.rlimit* %0, %struct.rlimit** %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ADDR_COMPAT_LAYOUT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.rlimit*, %struct.rlimit** %3, align 8
  %13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RLIM_INFINITY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @sysctl_legacy_va_layout, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %17, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
