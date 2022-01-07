; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_garbage_collect_irq_entries.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_garbage_collect_irq_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_entry = type { %struct.irq_entry*, i32** }

@active_fds = common dso_local global %struct.irq_entry* null, align 8
@MAX_IRQ_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @garbage_collect_irq_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @garbage_collect_irq_entries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_entry*, align 8
  %4 = alloca %struct.irq_entry*, align 8
  %5 = alloca %struct.irq_entry*, align 8
  store %struct.irq_entry* null, %struct.irq_entry** %4, align 8
  %6 = load %struct.irq_entry*, %struct.irq_entry** @active_fds, align 8
  %7 = icmp eq %struct.irq_entry* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %58

9:                                                ; preds = %0
  %10 = load %struct.irq_entry*, %struct.irq_entry** @active_fds, align 8
  store %struct.irq_entry* %10, %struct.irq_entry** %3, align 8
  br label %11

11:                                               ; preds = %52, %9
  %12 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  %13 = icmp ne %struct.irq_entry* %12, null
  br i1 %13, label %14, label %58

14:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @MAX_IRQ_TYPE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  %21 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %33

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %15

33:                                               ; preds = %28, %15
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.irq_entry*, %struct.irq_entry** %4, align 8
  %38 = icmp eq %struct.irq_entry* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  %41 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %40, i32 0, i32 0
  %42 = load %struct.irq_entry*, %struct.irq_entry** %41, align 8
  store %struct.irq_entry* %42, %struct.irq_entry** @active_fds, align 8
  br label %49

43:                                               ; preds = %36
  %44 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  %45 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %44, i32 0, i32 0
  %46 = load %struct.irq_entry*, %struct.irq_entry** %45, align 8
  %47 = load %struct.irq_entry*, %struct.irq_entry** %4, align 8
  %48 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %47, i32 0, i32 0
  store %struct.irq_entry* %46, %struct.irq_entry** %48, align 8
  br label %49

49:                                               ; preds = %43, %39
  %50 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  store %struct.irq_entry* %50, %struct.irq_entry** %5, align 8
  br label %52

51:                                               ; preds = %33
  store %struct.irq_entry* null, %struct.irq_entry** %5, align 8
  br label %52

52:                                               ; preds = %51, %49
  %53 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  %54 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %53, i32 0, i32 0
  %55 = load %struct.irq_entry*, %struct.irq_entry** %54, align 8
  store %struct.irq_entry* %55, %struct.irq_entry** %3, align 8
  %56 = load %struct.irq_entry*, %struct.irq_entry** %5, align 8
  %57 = call i32 @kfree(%struct.irq_entry* %56)
  br label %11

58:                                               ; preds = %8, %11
  ret void
}

declare dso_local i32 @kfree(%struct.irq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
