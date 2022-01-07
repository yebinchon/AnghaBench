; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdt_pseudo_lock_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_rdt_pseudo_lock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"pseudo_lock\00", align 1
@pseudo_lock_dev_fops = common dso_local global i32 0, align 4
@pseudo_lock_major = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@pseudo_lock_class = common dso_local global %struct.TYPE_5__* null, align 8
@pseudo_lock_devnode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdt_pseudo_lock_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @register_chrdev(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* @pseudo_lock_dev_fops)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %1, align 4
  br label %25

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* @pseudo_lock_major, align 4
  %10 = load i32, i32* @THIS_MODULE, align 4
  %11 = call %struct.TYPE_5__* @class_create(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** @pseudo_lock_class, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pseudo_lock_class, align 8
  %13 = call i64 @IS_ERR(%struct.TYPE_5__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pseudo_lock_class, align 8
  %17 = call i32 @PTR_ERR(%struct.TYPE_5__* %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* @pseudo_lock_major, align 4
  %19 = call i32 @unregister_chrdev(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %1, align 4
  br label %25

21:                                               ; preds = %8
  %22 = load i32, i32* @pseudo_lock_devnode, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pseudo_lock_class, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %21, %15, %6
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @register_chrdev(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @unregister_chrdev(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
