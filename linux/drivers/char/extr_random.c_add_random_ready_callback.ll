; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_add_random_ready_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_add_random_ready_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.random_ready_callback = type { i32, %struct.module* }
%struct.module = type { i32 }

@EALREADY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@random_ready_list_lock = common dso_local global i32 0, align 4
@random_ready_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_random_ready_callback(%struct.random_ready_callback* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.random_ready_callback*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.random_ready_callback* %0, %struct.random_ready_callback** %3, align 8
  %7 = load i32, i32* @EALREADY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = call i64 (...) @crng_ready()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.random_ready_callback*, %struct.random_ready_callback** %3, align 8
  %15 = getelementptr inbounds %struct.random_ready_callback, %struct.random_ready_callback* %14, i32 0, i32 1
  %16 = load %struct.module*, %struct.module** %15, align 8
  store %struct.module* %16, %struct.module** %4, align 8
  %17 = load %struct.module*, %struct.module** %4, align 8
  %18 = call i32 @try_module_get(%struct.module* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %13
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @random_ready_list_lock, i64 %24)
  %26 = call i64 (...) @crng_ready()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %33

29:                                               ; preds = %23
  store %struct.module* null, %struct.module** %4, align 8
  %30 = load %struct.random_ready_callback*, %struct.random_ready_callback** %3, align 8
  %31 = getelementptr inbounds %struct.random_ready_callback, %struct.random_ready_callback* %30, i32 0, i32 0
  %32 = call i32 @list_add(i32* %31, i32* @random_ready_list)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %28
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @random_ready_list_lock, i64 %34)
  %36 = load %struct.module*, %struct.module** %4, align 8
  %37 = call i32 @module_put(%struct.module* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %20, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @crng_ready(...) #1

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
