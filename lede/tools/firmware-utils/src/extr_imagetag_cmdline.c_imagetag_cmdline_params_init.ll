; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag_cmdline.c_imagetag_cmdline_params_init.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag_cmdline.c_imagetag_cmdline_params_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imagetag_cmdline_params = type { i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imagetag_cmdline_params_init(%struct.imagetag_cmdline_params* %0) #0 {
  %2 = alloca %struct.imagetag_cmdline_params*, align 8
  store %struct.imagetag_cmdline_params* %0, %struct.imagetag_cmdline_params** %2, align 8
  %3 = load %struct.imagetag_cmdline_params*, %struct.imagetag_cmdline_params** %2, align 8
  %4 = icmp ne %struct.imagetag_cmdline_params* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.imagetag_cmdline_params*, %struct.imagetag_cmdline_params** %2, align 8
  %7 = getelementptr inbounds %struct.imagetag_cmdline_params, %struct.imagetag_cmdline_params* %6, i32 0, i32 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.imagetag_cmdline_params*, %struct.imagetag_cmdline_params** %2, align 8
  %9 = getelementptr inbounds %struct.imagetag_cmdline_params, %struct.imagetag_cmdline_params* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.imagetag_cmdline_params*, %struct.imagetag_cmdline_params** %2, align 8
  %11 = getelementptr inbounds %struct.imagetag_cmdline_params, %struct.imagetag_cmdline_params* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.imagetag_cmdline_params*, %struct.imagetag_cmdline_params** %2, align 8
  %13 = getelementptr inbounds %struct.imagetag_cmdline_params, %struct.imagetag_cmdline_params* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.imagetag_cmdline_params*, %struct.imagetag_cmdline_params** %2, align 8
  %15 = getelementptr inbounds %struct.imagetag_cmdline_params, %struct.imagetag_cmdline_params* %14, i32 0, i32 2
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
