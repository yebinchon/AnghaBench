; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_l2c-common.c_outer_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_l2c-common.c_outer_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@outer_cache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @outer_disable() #0 {
  %1 = call i32 (...) @irqs_disabled()
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @WARN_ON(i32 %4)
  %6 = call i32 (...) @num_online_cpus()
  %7 = icmp sgt i32 %6, 1
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_cache, i32 0, i32 0), align 8
  %11 = icmp ne i32 (...)* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_cache, i32 0, i32 0), align 8
  %14 = call i32 (...) %13()
  br label %15

15:                                               ; preds = %12, %0
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @num_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
