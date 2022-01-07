; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_get_domain_token.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_get_domain_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kyber_queue_data = type { %struct.sbitmap_queue* }
%struct.sbitmap_queue = type { i32 }
%struct.kyber_hctx_data = type { i32, %struct.sbq_wait_state**, i32*, %struct.sbq_wait* }
%struct.sbq_wait_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sbq_wait = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.blk_mq_hw_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kyber_queue_data*, %struct.kyber_hctx_data*, %struct.blk_mq_hw_ctx*)* @kyber_get_domain_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kyber_get_domain_token(%struct.kyber_queue_data* %0, %struct.kyber_hctx_data* %1, %struct.blk_mq_hw_ctx* %2) #0 {
  %4 = alloca %struct.kyber_queue_data*, align 8
  %5 = alloca %struct.kyber_hctx_data*, align 8
  %6 = alloca %struct.blk_mq_hw_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sbitmap_queue*, align 8
  %9 = alloca %struct.sbq_wait*, align 8
  %10 = alloca %struct.sbq_wait_state*, align 8
  %11 = alloca i32, align 4
  store %struct.kyber_queue_data* %0, %struct.kyber_queue_data** %4, align 8
  store %struct.kyber_hctx_data* %1, %struct.kyber_hctx_data** %5, align 8
  store %struct.blk_mq_hw_ctx* %2, %struct.blk_mq_hw_ctx** %6, align 8
  %12 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %5, align 8
  %13 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %4, align 8
  %16 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %15, i32 0, i32 0
  %17 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %17, i64 %19
  store %struct.sbitmap_queue* %20, %struct.sbitmap_queue** %8, align 8
  %21 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %5, align 8
  %22 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %21, i32 0, i32 3
  %23 = load %struct.sbq_wait*, %struct.sbq_wait** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %23, i64 %25
  store %struct.sbq_wait* %26, %struct.sbq_wait** %9, align 8
  %27 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %8, align 8
  %28 = call i32 @__sbitmap_queue_get(%struct.sbitmap_queue* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %3
  %32 = load %struct.sbq_wait*, %struct.sbq_wait** %9, align 8
  %33 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i64 @list_empty_careful(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %31
  %38 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %8, align 8
  %39 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %5, align 8
  %40 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call %struct.sbq_wait_state* @sbq_wait_ptr(%struct.sbitmap_queue* %38, i32* %44)
  store %struct.sbq_wait_state* %45, %struct.sbq_wait_state** %10, align 8
  %46 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %10, align 8
  %47 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %5, align 8
  %48 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %47, i32 0, i32 1
  %49 = load %struct.sbq_wait_state**, %struct.sbq_wait_state*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sbq_wait_state*, %struct.sbq_wait_state** %49, i64 %51
  store %struct.sbq_wait_state* %46, %struct.sbq_wait_state** %52, align 8
  %53 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %8, align 8
  %54 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %10, align 8
  %55 = load %struct.sbq_wait*, %struct.sbq_wait** %9, align 8
  %56 = call i32 @sbitmap_add_wait_queue(%struct.sbitmap_queue* %53, %struct.sbq_wait_state* %54, %struct.sbq_wait* %55)
  %57 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %8, align 8
  %58 = call i32 @__sbitmap_queue_get(%struct.sbitmap_queue* %57)
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %37, %31, %3
  %60 = load i32, i32* %11, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %59
  %63 = load %struct.sbq_wait*, %struct.sbq_wait** %9, align 8
  %64 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i64 @list_empty_careful(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %62
  %69 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %5, align 8
  %70 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %69, i32 0, i32 1
  %71 = load %struct.sbq_wait_state**, %struct.sbq_wait_state*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sbq_wait_state*, %struct.sbq_wait_state** %71, i64 %73
  %75 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %74, align 8
  store %struct.sbq_wait_state* %75, %struct.sbq_wait_state** %10, align 8
  %76 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %10, align 8
  %77 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @spin_lock_irq(i32* %78)
  %80 = load %struct.sbq_wait*, %struct.sbq_wait** %9, align 8
  %81 = call i32 @sbitmap_del_wait_queue(%struct.sbq_wait* %80)
  %82 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %10, align 8
  %83 = getelementptr inbounds %struct.sbq_wait_state, %struct.sbq_wait_state* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_irq(i32* %84)
  br label %86

86:                                               ; preds = %68, %62, %59
  %87 = load i32, i32* %11, align 4
  ret i32 %87
}

declare dso_local i32 @__sbitmap_queue_get(%struct.sbitmap_queue*) #1

declare dso_local i64 @list_empty_careful(i32*) #1

declare dso_local %struct.sbq_wait_state* @sbq_wait_ptr(%struct.sbitmap_queue*, i32*) #1

declare dso_local i32 @sbitmap_add_wait_queue(%struct.sbitmap_queue*, %struct.sbq_wait_state*, %struct.sbq_wait*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sbitmap_del_wait_queue(%struct.sbq_wait*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
