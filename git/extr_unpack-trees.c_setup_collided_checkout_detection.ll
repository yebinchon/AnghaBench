; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_setup_collided_checkout_detection.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_setup_collided_checkout_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout = type { i32 }
%struct.index_state = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@CE_MATCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.checkout*, %struct.index_state*)* @setup_collided_checkout_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_collided_checkout_detection(%struct.checkout* %0, %struct.index_state* %1) #0 {
  %3 = alloca %struct.checkout*, align 8
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i32, align 4
  store %struct.checkout* %0, %struct.checkout** %3, align 8
  store %struct.index_state* %1, %struct.index_state** %4, align 8
  %6 = load %struct.checkout*, %struct.checkout** %3, align 8
  %7 = getelementptr inbounds %struct.checkout, %struct.checkout* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.index_state*, %struct.index_state** %4, align 8
  %11 = getelementptr inbounds %struct.index_state, %struct.index_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load i32, i32* @CE_MATCHED, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.index_state*, %struct.index_state** %4, align 8
  %18 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %16
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %8

30:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
