; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_IRQ_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_IRQ_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.irq_queue = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"IRQ_check: irq %d set ivpr_pr=%d pr=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.openpic*, %struct.irq_queue*)* @IRQ_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IRQ_check(%struct.openpic* %0, %struct.irq_queue* %1) #0 {
  %3 = alloca %struct.openpic*, align 8
  %4 = alloca %struct.irq_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.openpic* %0, %struct.openpic** %3, align 8
  store %struct.irq_queue* %1, %struct.irq_queue** %4, align 8
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  br label %8

8:                                                ; preds = %59, %2
  %9 = load %struct.irq_queue*, %struct.irq_queue** %4, align 8
  %10 = getelementptr inbounds %struct.irq_queue, %struct.irq_queue* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.openpic*, %struct.openpic** %3, align 8
  %13 = getelementptr inbounds %struct.openpic, %struct.openpic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @find_next_bit(i32 %11, i32 %14, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.openpic*, %struct.openpic** %3, align 8
  %20 = getelementptr inbounds %struct.openpic, %struct.openpic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  br label %60

24:                                               ; preds = %8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.openpic*, %struct.openpic** %3, align 8
  %27 = getelementptr inbounds %struct.openpic, %struct.openpic* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IVPR_PRIORITY(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %34, i32 %35)
  %37 = load %struct.openpic*, %struct.openpic** %3, align 8
  %38 = getelementptr inbounds %struct.openpic, %struct.openpic* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @IVPR_PRIORITY(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %24
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %6, align 4
  %50 = load %struct.openpic*, %struct.openpic** %3, align 8
  %51 = getelementptr inbounds %struct.openpic, %struct.openpic* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IVPR_PRIORITY(i32 %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %48, %24
  br label %8

60:                                               ; preds = %23
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.irq_queue*, %struct.irq_queue** %4, align 8
  %63 = getelementptr inbounds %struct.irq_queue, %struct.irq_queue* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.irq_queue*, %struct.irq_queue** %4, align 8
  %66 = getelementptr inbounds %struct.irq_queue, %struct.irq_queue* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  ret void
}

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @IVPR_PRIORITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
