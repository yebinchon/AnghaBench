; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_unregister_irq_client.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_unregister_irq_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmf_irq_client = type { i32, %struct.pmf_function* }
%struct.pmf_function = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.pmf_function*)* }

@pmf_irq_mutex = common dso_local global i32 0, align 4
@pmf_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmf_unregister_irq_client(%struct.pmf_irq_client* %0) #0 {
  %2 = alloca %struct.pmf_irq_client*, align 8
  %3 = alloca %struct.pmf_function*, align 8
  %4 = alloca i64, align 8
  store %struct.pmf_irq_client* %0, %struct.pmf_irq_client** %2, align 8
  %5 = load %struct.pmf_irq_client*, %struct.pmf_irq_client** %2, align 8
  %6 = getelementptr inbounds %struct.pmf_irq_client, %struct.pmf_irq_client* %5, i32 0, i32 1
  %7 = load %struct.pmf_function*, %struct.pmf_function** %6, align 8
  store %struct.pmf_function* %7, %struct.pmf_function** %3, align 8
  %8 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %9 = icmp eq %struct.pmf_function* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = call i32 @mutex_lock(i32* @pmf_irq_mutex)
  %13 = load %struct.pmf_irq_client*, %struct.pmf_irq_client** %2, align 8
  %14 = getelementptr inbounds %struct.pmf_irq_client, %struct.pmf_irq_client* %13, i32 0, i32 1
  store %struct.pmf_function* null, %struct.pmf_function** %14, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @pmf_lock, i64 %15)
  %17 = load %struct.pmf_irq_client*, %struct.pmf_irq_client** %2, align 8
  %18 = getelementptr inbounds %struct.pmf_irq_client, %struct.pmf_irq_client* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @pmf_lock, i64 %20)
  %22 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %23 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %22, i32 0, i32 1
  %24 = call i64 @list_empty(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %28 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.pmf_function*)*, i32 (%struct.pmf_function*)** %32, align 8
  %34 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %35 = call i32 %33(%struct.pmf_function* %34)
  br label %36

36:                                               ; preds = %26, %1
  %37 = call i32 @mutex_unlock(i32* @pmf_irq_mutex)
  %38 = load %struct.pmf_function*, %struct.pmf_function** %3, align 8
  %39 = call i32 @pmf_put_function(%struct.pmf_function* %38)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pmf_put_function(%struct.pmf_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
