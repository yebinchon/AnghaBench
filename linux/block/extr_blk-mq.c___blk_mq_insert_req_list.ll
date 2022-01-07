; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_insert_req_list.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_insert_req_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, i32 }
%struct.request = type { i32, %struct.blk_mq_ctx* }
%struct.blk_mq_ctx = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, %struct.request*, i32)* @__blk_mq_insert_req_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blk_mq_insert_req_list(%struct.blk_mq_hw_ctx* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blk_mq_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.request*, %struct.request** %5, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 1
  %11 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %10, align 8
  store %struct.blk_mq_ctx* %11, %struct.blk_mq_ctx** %7, align 8
  %12 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.request*, %struct.request** %5, align 8
  %22 = call i32 @trace_block_rq_insert(i32 %20, %struct.request* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.request*, %struct.request** %5, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 0
  %28 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @list_add(i32* %27, i32* %33)
  br label %45

35:                                               ; preds = %3
  %36 = load %struct.request*, %struct.request** %5, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 0
  %38 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @list_add_tail(i32* %37, i32* %43)
  br label %45

45:                                               ; preds = %35, %25
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @trace_block_rq_insert(i32, %struct.request*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
