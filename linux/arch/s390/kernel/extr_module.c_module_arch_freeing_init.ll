; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_module.c_module_arch_freeing_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_module.c_module_arch_freeing_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@MODULE_STATE_LIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @module_arch_freeing_init(%struct.module* %0) #0 {
  %2 = alloca %struct.module*, align 8
  store %struct.module* %0, %struct.module** %2, align 8
  %3 = load %struct.module*, %struct.module** %2, align 8
  %4 = call i64 @is_livepatch_module(%struct.module* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.module*, %struct.module** %2, align 8
  %8 = getelementptr inbounds %struct.module, %struct.module* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MODULE_STATE_LIVE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %22

13:                                               ; preds = %6, %1
  %14 = load %struct.module*, %struct.module** %2, align 8
  %15 = getelementptr inbounds %struct.module, %struct.module* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @vfree(i32* %17)
  %19 = load %struct.module*, %struct.module** %2, align 8
  %20 = getelementptr inbounds %struct.module, %struct.module* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @is_livepatch_module(%struct.module*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
