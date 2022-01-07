; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_flush_busy_kcq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_flush_busy_kcq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap = type { i32 }
%struct.flush_kcq_data = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kyber_ctx_queue* }
%struct.kyber_ctx_queue = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbitmap*, i32, i8*)* @flush_busy_kcq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_busy_kcq(%struct.sbitmap* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sbitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.flush_kcq_data*, align 8
  %8 = alloca %struct.kyber_ctx_queue*, align 8
  store %struct.sbitmap* %0, %struct.sbitmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.flush_kcq_data*
  store %struct.flush_kcq_data* %10, %struct.flush_kcq_data** %7, align 8
  %11 = load %struct.flush_kcq_data*, %struct.flush_kcq_data** %7, align 8
  %12 = getelementptr inbounds %struct.flush_kcq_data, %struct.flush_kcq_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.kyber_ctx_queue*, %struct.kyber_ctx_queue** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.kyber_ctx_queue, %struct.kyber_ctx_queue* %15, i64 %17
  store %struct.kyber_ctx_queue* %18, %struct.kyber_ctx_queue** %8, align 8
  %19 = load %struct.kyber_ctx_queue*, %struct.kyber_ctx_queue** %8, align 8
  %20 = getelementptr inbounds %struct.kyber_ctx_queue, %struct.kyber_ctx_queue* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.kyber_ctx_queue*, %struct.kyber_ctx_queue** %8, align 8
  %23 = getelementptr inbounds %struct.kyber_ctx_queue, %struct.kyber_ctx_queue* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.flush_kcq_data*, %struct.flush_kcq_data** %7, align 8
  %26 = getelementptr inbounds %struct.flush_kcq_data, %struct.flush_kcq_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load %struct.flush_kcq_data*, %struct.flush_kcq_data** %7, align 8
  %30 = getelementptr inbounds %struct.flush_kcq_data, %struct.flush_kcq_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @list_splice_tail_init(i32* %28, i32 %31)
  %33 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @sbitmap_clear_bit(%struct.sbitmap* %33, i32 %34)
  %36 = load %struct.kyber_ctx_queue*, %struct.kyber_ctx_queue** %8, align 8
  %37 = getelementptr inbounds %struct.kyber_ctx_queue, %struct.kyber_ctx_queue* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  ret i32 1
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32) #1

declare dso_local i32 @sbitmap_clear_bit(%struct.sbitmap*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
