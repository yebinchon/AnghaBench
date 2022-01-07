; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-softirq.c___blk_complete_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-softirq.c___blk_complete_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_3__*, %struct.request_queue* }
%struct.TYPE_3__ = type { i32 }
%struct.request_queue = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.list_head = type { i32* }

@QUEUE_FLAG_SAME_COMP = common dso_local global i32 0, align 4
@QUEUE_FLAG_SAME_FORCE = common dso_local global i32 0, align 4
@blk_cpu_done = common dso_local global i32 0, align 4
@BLOCK_SOFTIRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__blk_complete_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %9 = load %struct.request*, %struct.request** %2, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 2
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %3, align 8
  %12 = load %struct.request*, %struct.request** %2, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @local_irq_save(i64 %26)
  %28 = call i32 (...) @smp_processor_id()
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @QUEUE_FLAG_SAME_COMP, align 4
  %30 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32, i32* @QUEUE_FLAG_SAME_FORCE, align 4
  %39 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %40 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @cpus_share_cache(i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %37
  br label %50

48:                                               ; preds = %34, %1
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %79, %57
  %59 = call %struct.list_head* @this_cpu_ptr(i32* @blk_cpu_done)
  store %struct.list_head* %59, %struct.list_head** %8, align 8
  %60 = load %struct.request*, %struct.request** %2, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 0
  %62 = load %struct.list_head*, %struct.list_head** %8, align 8
  %63 = call i32 @list_add_tail(i32* %61, %struct.list_head* %62)
  %64 = load %struct.list_head*, %struct.list_head** %8, align 8
  %65 = getelementptr inbounds %struct.list_head, %struct.list_head* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.request*, %struct.request** %2, align 8
  %68 = getelementptr inbounds %struct.request, %struct.request* %67, i32 0, i32 0
  %69 = icmp eq i32* %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i32, i32* @BLOCK_SOFTIRQ, align 4
  %72 = call i32 @raise_softirq_irqoff(i32 %71)
  br label %73

73:                                               ; preds = %70, %58
  br label %81

74:                                               ; preds = %54
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.request*, %struct.request** %2, align 8
  %77 = call i64 @raise_blk_irq(i32 %75, %struct.request* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %58

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @local_irq_restore(i64 %82)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cpus_share_cache(i32, i32) #1

declare dso_local %struct.list_head* @this_cpu_ptr(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @raise_softirq_irqoff(i32) #1

declare dso_local i64 @raise_blk_irq(i32, %struct.request*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
