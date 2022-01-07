; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_map.c_get_allocation_granularity.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_map.c_get_allocation_granularity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@get_allocation_granularity.granularity = internal global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_allocation_granularity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_allocation_granularity() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = load i64, i64* @get_allocation_granularity.granularity, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = call i32 @GetSystemInfo(%struct.TYPE_3__* %1)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* @get_allocation_granularity.granularity, align 8
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* @get_allocation_granularity.granularity, align 8
  ret i64 %9
}

declare dso_local i32 @GetSystemInfo(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
