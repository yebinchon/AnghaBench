; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_clone.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RM_INIT_MAGIC = common dso_local global i64 0, align 8
@RM_TMP_MAGIC = common dso_local global i64 0, align 8
@rwm_total_msgs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rwm_clone(%struct.raw_message* %0, %struct.raw_message* %1) #0 {
  %3 = alloca %struct.raw_message*, align 8
  %4 = alloca %struct.raw_message*, align 8
  store %struct.raw_message* %0, %struct.raw_message** %3, align 8
  store %struct.raw_message* %1, %struct.raw_message** %4, align 8
  %5 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %6 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RM_INIT_MAGIC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %12 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RM_TMP_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ true, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.raw_message*, %struct.raw_message** %3, align 8
  %21 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %22 = call i32 @memcpy(%struct.raw_message* %20, %struct.raw_message* %21, i32 16)
  %23 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %24 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RM_INIT_MAGIC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %16
  %29 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %30 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %35 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %28, %16
  %41 = load i32, i32* @rwm_total_msgs, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @rwm_total_msgs, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(%struct.raw_message*, %struct.raw_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
