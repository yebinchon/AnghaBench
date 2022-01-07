; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_devres_remove_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_devres_remove_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devres_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"REM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devres_remove_group(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.devres_group*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.devres_group* @find_group(%struct.device* %11, i8* %12)
  store %struct.devres_group* %13, %struct.devres_group** %5, align 8
  %14 = load %struct.devres_group*, %struct.devres_group** %5, align 8
  %15 = icmp ne %struct.devres_group* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.devres_group*, %struct.devres_group** %5, align 8
  %18 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @list_del_init(i32* %21)
  %23 = load %struct.devres_group*, %struct.devres_group** %5, align 8
  %24 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @list_del_init(i32* %27)
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load %struct.devres_group*, %struct.devres_group** %5, align 8
  %31 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = call i32 @devres_log(%struct.device* %29, %struct.TYPE_2__* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %37

35:                                               ; preds = %2
  %36 = call i32 @WARN_ON(i32 1)
  br label %37

37:                                               ; preds = %35, %16
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.devres_group*, %struct.devres_group** %5, align 8
  %43 = call i32 @kfree(%struct.devres_group* %42)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.devres_group* @find_group(%struct.device*, i8*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @devres_log(%struct.device*, %struct.TYPE_2__*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.devres_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
