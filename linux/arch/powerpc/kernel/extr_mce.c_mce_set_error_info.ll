; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_mce_set_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_mce_set_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine_check_event = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.mce_error_info = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machine_check_event*, %struct.mce_error_info*)* @mce_set_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_set_error_info(%struct.machine_check_event* %0, %struct.mce_error_info* %1) #0 {
  %3 = alloca %struct.machine_check_event*, align 8
  %4 = alloca %struct.mce_error_info*, align 8
  store %struct.machine_check_event* %0, %struct.machine_check_event** %3, align 8
  store %struct.mce_error_info* %1, %struct.mce_error_info** %4, align 8
  %5 = load %struct.mce_error_info*, %struct.mce_error_info** %4, align 8
  %6 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.machine_check_event*, %struct.machine_check_event** %3, align 8
  %9 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.mce_error_info*, %struct.mce_error_info** %4, align 8
  %11 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %77 [
    i32 130, label %13
    i32 132, label %22
    i32 135, label %31
    i32 131, label %40
    i32 128, label %49
    i32 133, label %58
    i32 134, label %67
    i32 129, label %76
  ]

13:                                               ; preds = %2
  %14 = load %struct.mce_error_info*, %struct.mce_error_info** %4, align 8
  %15 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.machine_check_event*, %struct.machine_check_event** %3, align 8
  %19 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  br label %78

22:                                               ; preds = %2
  %23 = load %struct.mce_error_info*, %struct.mce_error_info** %4, align 8
  %24 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.machine_check_event*, %struct.machine_check_event** %3, align 8
  %28 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  br label %78

31:                                               ; preds = %2
  %32 = load %struct.mce_error_info*, %struct.mce_error_info** %4, align 8
  %33 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.machine_check_event*, %struct.machine_check_event** %3, align 8
  %37 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  br label %78

40:                                               ; preds = %2
  %41 = load %struct.mce_error_info*, %struct.mce_error_info** %4, align 8
  %42 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.machine_check_event*, %struct.machine_check_event** %3, align 8
  %46 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  br label %78

49:                                               ; preds = %2
  %50 = load %struct.mce_error_info*, %struct.mce_error_info** %4, align 8
  %51 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.machine_check_event*, %struct.machine_check_event** %3, align 8
  %55 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  br label %78

58:                                               ; preds = %2
  %59 = load %struct.mce_error_info*, %struct.mce_error_info** %4, align 8
  %60 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.machine_check_event*, %struct.machine_check_event** %3, align 8
  %64 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  br label %78

67:                                               ; preds = %2
  %68 = load %struct.mce_error_info*, %struct.mce_error_info** %4, align 8
  %69 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.machine_check_event*, %struct.machine_check_event** %3, align 8
  %73 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  br label %78

76:                                               ; preds = %2
  br label %77

77:                                               ; preds = %2, %76
  br label %78

78:                                               ; preds = %77, %67, %58, %49, %40, %31, %22, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
