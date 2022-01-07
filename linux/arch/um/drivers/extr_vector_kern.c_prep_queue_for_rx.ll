; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_prep_queue_for_rx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_prep_queue_for_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_queue = type { i8**, i32, %struct.mmsghdr*, i32 }
%struct.mmsghdr = type { i32 }
%struct.vector_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vector_queue*)* @prep_queue_for_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_queue_for_rx(%struct.vector_queue* %0) #0 {
  %2 = alloca %struct.vector_queue*, align 8
  %3 = alloca %struct.vector_private*, align 8
  %4 = alloca %struct.mmsghdr*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.vector_queue* %0, %struct.vector_queue** %2, align 8
  %7 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %8 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.vector_private* @netdev_priv(i32 %9)
  store %struct.vector_private* %10, %struct.vector_private** %3, align 8
  %11 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %12 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %11, i32 0, i32 2
  %13 = load %struct.mmsghdr*, %struct.mmsghdr** %12, align 8
  store %struct.mmsghdr* %13, %struct.mmsghdr** %4, align 8
  %14 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %15 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  store i8** %16, i8*** %5, align 8
  %17 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %18 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %45

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %26 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %31 = load %struct.mmsghdr*, %struct.mmsghdr** %4, align 8
  %32 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %31, i32 0, i32 0
  %33 = call i8* @prep_skb(%struct.vector_private* %30, i32* %32)
  %34 = load i8**, i8*** %5, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %5, align 8
  %37 = load %struct.mmsghdr*, %struct.mmsghdr** %4, align 8
  %38 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %37, i32 1
  store %struct.mmsghdr* %38, %struct.mmsghdr** %4, align 8
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load %struct.vector_queue*, %struct.vector_queue** %2, align 8
  %44 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %21
  ret void
}

declare dso_local %struct.vector_private* @netdev_priv(i32) #1

declare dso_local i8* @prep_skb(%struct.vector_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
