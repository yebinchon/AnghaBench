; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_clear.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i64, i64 }

@RM_INIT_MAGIC = common dso_local global i64 0, align 8
@RM_TMP_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rwm_clear(%struct.raw_message* %0) #0 {
  %2 = alloca %struct.raw_message*, align 8
  store %struct.raw_message* %0, %struct.raw_message** %2, align 8
  %3 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %4 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RM_INIT_MAGIC, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %10 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RM_TMP_MAGIC, align 8
  %13 = icmp eq i64 %11, %12
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %19 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %24 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @msg_part_decref(i64 %25)
  br label %27

27:                                               ; preds = %22, %14
  %28 = load %struct.raw_message*, %struct.raw_message** %2, align 8
  %29 = call i32 @rwm_clean(%struct.raw_message* %28)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @msg_part_decref(i64) #1

declare dso_local i32 @rwm_clean(%struct.raw_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
