; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_32.c_irq_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_32.c_irq_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_bucket = type { i64, %struct.irq_bucket* }

@NR_IRQS = common dso_local global i32 0, align 4
@irq_map_lock = common dso_local global i32 0, align 4
@irq_table = common dso_local global %struct.irq_bucket* null, align 8
@SUN4D_MAX_IRQ = common dso_local global i64 0, align 8
@irq_map = common dso_local global %struct.irq_bucket** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_unlink(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_bucket*, align 8
  %4 = alloca %struct.irq_bucket**, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @NR_IRQS, align 4
  %8 = icmp uge i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @irq_map_lock, i64 %11)
  %13 = load %struct.irq_bucket*, %struct.irq_bucket** @irq_table, align 8
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %13, i64 %15
  store %struct.irq_bucket* %16, %struct.irq_bucket** %3, align 8
  %17 = load %struct.irq_bucket*, %struct.irq_bucket** %3, align 8
  %18 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SUN4D_MAX_IRQ, align 8
  %21 = icmp uge i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.irq_bucket**, %struct.irq_bucket*** @irq_map, align 8
  %25 = load %struct.irq_bucket*, %struct.irq_bucket** %3, align 8
  %26 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.irq_bucket*, %struct.irq_bucket** %24, i64 %27
  store %struct.irq_bucket** %28, %struct.irq_bucket*** %4, align 8
  br label %29

29:                                               ; preds = %34, %1
  %30 = load %struct.irq_bucket**, %struct.irq_bucket*** %4, align 8
  %31 = load %struct.irq_bucket*, %struct.irq_bucket** %30, align 8
  %32 = load %struct.irq_bucket*, %struct.irq_bucket** %3, align 8
  %33 = icmp ne %struct.irq_bucket* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.irq_bucket**, %struct.irq_bucket*** %4, align 8
  %36 = load %struct.irq_bucket*, %struct.irq_bucket** %35, align 8
  %37 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %36, i32 0, i32 1
  store %struct.irq_bucket** %37, %struct.irq_bucket*** %4, align 8
  br label %29

38:                                               ; preds = %29
  %39 = load %struct.irq_bucket*, %struct.irq_bucket** %3, align 8
  %40 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %39, i32 0, i32 1
  %41 = load %struct.irq_bucket*, %struct.irq_bucket** %40, align 8
  %42 = load %struct.irq_bucket**, %struct.irq_bucket*** %4, align 8
  store %struct.irq_bucket* %41, %struct.irq_bucket** %42, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* @irq_map_lock, i64 %43)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
