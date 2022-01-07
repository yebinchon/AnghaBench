; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c___bfq_put_async_bfqq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c___bfq_put_async_bfqq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32 }
%struct.bfq_queue = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"put_async_bfqq: %p\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"put_async_bfqq: putting %p, %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_data*, %struct.bfq_queue**)* @__bfq_put_async_bfqq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bfq_put_async_bfqq(%struct.bfq_data* %0, %struct.bfq_queue** %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_queue**, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_queue** %1, %struct.bfq_queue*** %4, align 8
  %6 = load %struct.bfq_queue**, %struct.bfq_queue*** %4, align 8
  %7 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  store %struct.bfq_queue* %7, %struct.bfq_queue** %5, align 8
  %8 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %9 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %10 = call i32 @bfq_log(%struct.bfq_data* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.bfq_queue* %9)
  %11 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %12 = icmp ne %struct.bfq_queue* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %15 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %16 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %17 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfq_bfqq_move(%struct.bfq_data* %14, %struct.bfq_queue* %15, i32 %18)
  %20 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %21 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %22 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %23 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %24 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bfq_log_bfqq(%struct.bfq_data* %20, %struct.bfq_queue* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.bfq_queue* %22, i32 %25)
  %27 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %28 = call i32 @bfq_put_queue(%struct.bfq_queue* %27)
  %29 = load %struct.bfq_queue**, %struct.bfq_queue*** %4, align 8
  store %struct.bfq_queue* null, %struct.bfq_queue** %29, align 8
  br label %30

30:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @bfq_log(%struct.bfq_data*, i8*, %struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_move(%struct.bfq_data*, %struct.bfq_queue*, i32) #1

declare dso_local i32 @bfq_log_bfqq(%struct.bfq_data*, %struct.bfq_queue*, i8*, %struct.bfq_queue*, i32) #1

declare dso_local i32 @bfq_put_queue(%struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
