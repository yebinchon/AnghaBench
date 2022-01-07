; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_register_irq_client.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_register_irq_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.pmf_irq_client = type { %struct.pmf_function*, i32 }
%struct.pmf_function = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.pmf_function*)* }

@pmf_lock = common dso_local global i32 0, align 4
@PMF_FLAGS_INT_GEN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@pmf_irq_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmf_register_irq_client(%struct.device_node* %0, i8* %1, %struct.pmf_irq_client* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pmf_irq_client*, align 8
  %8 = alloca %struct.pmf_function*, align 8
  %9 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.pmf_irq_client* %2, %struct.pmf_irq_client** %7, align 8
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @pmf_lock, i64 %10)
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @PMF_FLAGS_INT_GEN, align 4
  %15 = call %struct.pmf_function* @__pmf_find_function(%struct.device_node* %12, i8* %13, i32 %14)
  store %struct.pmf_function* %15, %struct.pmf_function** %8, align 8
  %16 = load %struct.pmf_function*, %struct.pmf_function** %8, align 8
  %17 = icmp ne %struct.pmf_function* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.pmf_function*, %struct.pmf_function** %8, align 8
  %20 = call %struct.pmf_function* @pmf_get_function(%struct.pmf_function* %19)
  store %struct.pmf_function* %20, %struct.pmf_function** %8, align 8
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* @pmf_lock, i64 %22)
  %24 = load %struct.pmf_function*, %struct.pmf_function** %8, align 8
  %25 = icmp eq %struct.pmf_function* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %59

29:                                               ; preds = %21
  %30 = call i32 @mutex_lock(i32* @pmf_irq_mutex)
  %31 = load %struct.pmf_function*, %struct.pmf_function** %8, align 8
  %32 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %31, i32 0, i32 0
  %33 = call i64 @list_empty(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.pmf_function*, %struct.pmf_function** %8, align 8
  %37 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.pmf_function*)*, i32 (%struct.pmf_function*)** %41, align 8
  %43 = load %struct.pmf_function*, %struct.pmf_function** %8, align 8
  %44 = call i32 %42(%struct.pmf_function* %43)
  br label %45

45:                                               ; preds = %35, %29
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_lock_irqsave(i32* @pmf_lock, i64 %46)
  %48 = load %struct.pmf_irq_client*, %struct.pmf_irq_client** %7, align 8
  %49 = getelementptr inbounds %struct.pmf_irq_client, %struct.pmf_irq_client* %48, i32 0, i32 1
  %50 = load %struct.pmf_function*, %struct.pmf_function** %8, align 8
  %51 = getelementptr inbounds %struct.pmf_function, %struct.pmf_function* %50, i32 0, i32 0
  %52 = call i32 @list_add(i32* %49, i32* %51)
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* @pmf_lock, i64 %53)
  %55 = load %struct.pmf_function*, %struct.pmf_function** %8, align 8
  %56 = load %struct.pmf_irq_client*, %struct.pmf_irq_client** %7, align 8
  %57 = getelementptr inbounds %struct.pmf_irq_client, %struct.pmf_irq_client* %56, i32 0, i32 0
  store %struct.pmf_function* %55, %struct.pmf_function** %57, align 8
  %58 = call i32 @mutex_unlock(i32* @pmf_irq_mutex)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %45, %26
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pmf_function* @__pmf_find_function(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.pmf_function* @pmf_get_function(%struct.pmf_function*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
