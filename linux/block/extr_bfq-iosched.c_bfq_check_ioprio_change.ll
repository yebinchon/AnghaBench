; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_check_ioprio_change.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_check_ioprio_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_io_cq = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32 }
%struct.bfq_data = type { i32 }
%struct.bfq_queue = type { i32 }

@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_io_cq*, %struct.bio*)* @bfq_check_ioprio_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_check_ioprio_change(%struct.bfq_io_cq* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.bfq_io_cq*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bfq_data*, align 8
  %6 = alloca %struct.bfq_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.bfq_io_cq* %0, %struct.bfq_io_cq** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %9 = call %struct.bfq_data* @bic_to_bfqd(%struct.bfq_io_cq* %8)
  store %struct.bfq_data* %9, %struct.bfq_data** %5, align 8
  %10 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %11 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %17 = icmp ne %struct.bfq_data* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %24 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %2
  br label %60

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %35 = getelementptr inbounds %struct.bfq_io_cq, %struct.bfq_io_cq* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %37 = call %struct.bfq_queue* @bic_to_bfqq(%struct.bfq_io_cq* %36, i32 0)
  store %struct.bfq_queue* %37, %struct.bfq_queue** %6, align 8
  %38 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %39 = icmp ne %struct.bfq_queue* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %42 = call i32 @bfq_put_queue(%struct.bfq_queue* %41)
  %43 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = load i32, i32* @BLK_RW_ASYNC, align 4
  %46 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %47 = call %struct.bfq_queue* @bfq_get_queue(%struct.bfq_data* %43, %struct.bio* %44, i32 %45, %struct.bfq_io_cq* %46)
  store %struct.bfq_queue* %47, %struct.bfq_queue** %6, align 8
  %48 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %49 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %50 = call i32 @bic_set_bfqq(%struct.bfq_io_cq* %48, %struct.bfq_queue* %49, i32 0)
  br label %51

51:                                               ; preds = %40, %32
  %52 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %53 = call %struct.bfq_queue* @bic_to_bfqq(%struct.bfq_io_cq* %52, i32 1)
  store %struct.bfq_queue* %53, %struct.bfq_queue** %6, align 8
  %54 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %55 = icmp ne %struct.bfq_queue* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %58 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %3, align 8
  %59 = call i32 @bfq_set_next_ioprio_data(%struct.bfq_queue* %57, %struct.bfq_io_cq* %58)
  br label %60

60:                                               ; preds = %31, %56, %51
  ret void
}

declare dso_local %struct.bfq_data* @bic_to_bfqd(%struct.bfq_io_cq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.bfq_queue* @bic_to_bfqq(%struct.bfq_io_cq*, i32) #1

declare dso_local i32 @bfq_put_queue(%struct.bfq_queue*) #1

declare dso_local %struct.bfq_queue* @bfq_get_queue(%struct.bfq_data*, %struct.bio*, i32, %struct.bfq_io_cq*) #1

declare dso_local i32 @bic_set_bfqq(%struct.bfq_io_cq*, %struct.bfq_queue*, i32) #1

declare dso_local i32 @bfq_set_next_ioprio_data(%struct.bfq_queue*, %struct.bfq_io_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
