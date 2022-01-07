; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_consume_vector_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_consume_vector_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_queue = type { i32, %struct.TYPE_4__*, %struct.sk_buff** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_queue*, i32)* @consume_vector_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consume_vector_skbs(%struct.vector_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.vector_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vector_queue* %0, %struct.vector_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %9 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %42, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %14 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %15, %16
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %11
  %20 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %21 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %20, i32 0, i32 2
  %22 = load %struct.sk_buff**, %struct.sk_buff*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %22, i64 %24
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %35 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %34, i32 0, i32 2
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %36, i64 %38
  store %struct.sk_buff* null, %struct.sk_buff** %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @dev_consume_skb_any(%struct.sk_buff* %40)
  br label %42

42:                                               ; preds = %19
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %11

45:                                               ; preds = %11
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %48 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %46
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %56 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %54
  store i32 %61, i32* %59, align 4
  %62 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %63 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @netdev_completed_queue(%struct.TYPE_4__* %64, i32 %65, i32 %66)
  %68 = load %struct.vector_queue*, %struct.vector_queue** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @vector_advancehead(%struct.vector_queue* %68, i32 %69)
  ret i32 %70
}

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_completed_queue(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @vector_advancehead(%struct.vector_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
