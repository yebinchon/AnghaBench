; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_put_io_context.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-ioc.c_put_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_context = type { i32, i32, i32, i32 }

@system_power_efficient_wq = common dso_local global i32 0, align 4
@iocontext_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_io_context(%struct.io_context* %0) #0 {
  %2 = alloca %struct.io_context*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.io_context* %0, %struct.io_context** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.io_context*, %struct.io_context** %2, align 8
  %6 = icmp eq %struct.io_context* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %46

8:                                                ; preds = %1
  %9 = load %struct.io_context*, %struct.io_context** %2, align 8
  %10 = getelementptr inbounds %struct.io_context, %struct.io_context* %9, i32 0, i32 3
  %11 = call i64 @atomic_long_read(i32* %10)
  %12 = icmp sle i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.io_context*, %struct.io_context** %2, align 8
  %16 = getelementptr inbounds %struct.io_context, %struct.io_context* %15, i32 0, i32 3
  %17 = call i64 @atomic_long_dec_and_test(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %8
  %20 = load %struct.io_context*, %struct.io_context** %2, align 8
  %21 = getelementptr inbounds %struct.io_context, %struct.io_context* %20, i32 0, i32 0
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.io_context*, %struct.io_context** %2, align 8
  %25 = getelementptr inbounds %struct.io_context, %struct.io_context* %24, i32 0, i32 2
  %26 = call i32 @hlist_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @system_power_efficient_wq, align 4
  %30 = load %struct.io_context*, %struct.io_context** %2, align 8
  %31 = getelementptr inbounds %struct.io_context, %struct.io_context* %30, i32 0, i32 1
  %32 = call i32 @queue_work(i32 %29, i32* %31)
  br label %34

33:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load %struct.io_context*, %struct.io_context** %2, align 8
  %36 = getelementptr inbounds %struct.io_context, %struct.io_context* %35, i32 0, i32 0
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %8
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @iocontext_cachep, align 4
  %44 = load %struct.io_context*, %struct.io_context** %2, align 8
  %45 = call i32 @kmem_cache_free(i32 %43, %struct.io_context* %44)
  br label %46

46:                                               ; preds = %7, %42, %39
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @atomic_long_dec_and_test(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.io_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
