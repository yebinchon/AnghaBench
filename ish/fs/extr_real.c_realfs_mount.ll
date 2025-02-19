; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_mount.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i64, i32 }

@O_DIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @realfs_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  %4 = load %struct.mount*, %struct.mount** %3, align 8
  %5 = getelementptr inbounds %struct.mount, %struct.mount* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @O_DIRECTORY, align 4
  %8 = call i64 @open(i32 %6, i32 %7)
  %9 = load %struct.mount*, %struct.mount** %3, align 8
  %10 = getelementptr inbounds %struct.mount, %struct.mount* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.mount*, %struct.mount** %3, align 8
  %12 = getelementptr inbounds %struct.mount, %struct.mount* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (...) @errno_map()
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @open(i32, i32) #1

declare dso_local i32 @errno_map(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
