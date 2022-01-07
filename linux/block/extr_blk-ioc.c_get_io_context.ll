; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_get_io_context.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_get_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_io_context(%struct.io_context* %0) #0 {
  %2 = alloca %struct.io_context*, align 8
  store %struct.io_context* %0, %struct.io_context** %2, align 8
  %3 = load %struct.io_context*, %struct.io_context** %2, align 8
  %4 = getelementptr inbounds %struct.io_context, %struct.io_context* %3, i32 0, i32 0
  %5 = call i64 @atomic_long_read(i32* %4)
  %6 = icmp sle i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.io_context*, %struct.io_context** %2, align 8
  %10 = getelementptr inbounds %struct.io_context, %struct.io_context* %9, i32 0, i32 0
  %11 = call i32 @atomic_long_inc(i32* %10)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
