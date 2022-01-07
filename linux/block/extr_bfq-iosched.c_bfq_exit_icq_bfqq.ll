; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_exit_icq_bfqq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_exit_icq_bfqq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_io_cq = type { i32 }
%struct.bfq_queue = type { i32*, %struct.bfq_data* }
%struct.bfq_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_io_cq*, i32)* @bfq_exit_icq_bfqq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_exit_icq_bfqq(%struct.bfq_io_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.bfq_io_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca %struct.bfq_data*, align 8
  %7 = alloca i64, align 8
  store %struct.bfq_io_cq* %0, %struct.bfq_io_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.bfq_queue* @bic_to_bfqq(%struct.bfq_io_cq* %8, i32 %9)
  store %struct.bfq_queue* %10, %struct.bfq_queue** %5, align 8
  %11 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %12 = icmp ne %struct.bfq_queue* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %15 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %14, i32 0, i32 1
  %16 = load %struct.bfq_data*, %struct.bfq_data** %15, align 8
  store %struct.bfq_data* %16, %struct.bfq_data** %6, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %19 = icmp ne %struct.bfq_queue* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %22 = icmp ne %struct.bfq_data* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %25 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %29 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %31 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %32 = call i32 @bfq_exit_bfqq(%struct.bfq_data* %30, %struct.bfq_queue* %31)
  %33 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @bic_set_bfqq(%struct.bfq_io_cq* %33, i32* null, i32 %34)
  %36 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %37 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %36, i32 0, i32 0
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %23, %20, %17
  ret void
}

declare dso_local %struct.bfq_queue* @bic_to_bfqq(%struct.bfq_io_cq*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfq_exit_bfqq(%struct.bfq_data*, %struct.bfq_queue*) #1

declare dso_local i32 @bic_set_bfqq(%struct.bfq_io_cq*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
