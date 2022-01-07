; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_misc.c_misc_deregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_misc.c_misc_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miscdevice = type { i32, i32 }

@DYNAMIC_MINORS = common dso_local global i32 0, align 4
@misc_mtx = common dso_local global i32 0, align 4
@misc_class = common dso_local global i32 0, align 4
@MISC_MAJOR = common dso_local global i32 0, align 4
@misc_minors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @misc_deregister(%struct.miscdevice* %0) #0 {
  %2 = alloca %struct.miscdevice*, align 8
  %3 = alloca i32, align 4
  store %struct.miscdevice* %0, %struct.miscdevice** %2, align 8
  %4 = load i32, i32* @DYNAMIC_MINORS, align 4
  %5 = load %struct.miscdevice*, %struct.miscdevice** %2, align 8
  %6 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 %4, %7
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.miscdevice*, %struct.miscdevice** %2, align 8
  %11 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %10, i32 0, i32 1
  %12 = call i32 @list_empty(i32* %11)
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = call i32 @mutex_lock(i32* @misc_mtx)
  %18 = load %struct.miscdevice*, %struct.miscdevice** %2, align 8
  %19 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  %21 = load i32, i32* @misc_class, align 4
  %22 = load i32, i32* @MISC_MAJOR, align 4
  %23 = load %struct.miscdevice*, %struct.miscdevice** %2, align 8
  %24 = getelementptr inbounds %struct.miscdevice, %struct.miscdevice* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MKDEV(i32 %22, i32 %25)
  %27 = call i32 @device_destroy(i32 %21, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @DYNAMIC_MINORS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %16
  %32 = load i32, i32* %3, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @misc_minors, align 4
  %37 = call i32 @clear_bit(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %31, %16
  %39 = call i32 @mutex_unlock(i32* @misc_mtx)
  br label %40

40:                                               ; preds = %38, %15
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
