; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_devres_release_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_devres_release_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.list_head }
%struct.list_head = type { %struct.list_head* }
%struct.devres_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.list_head }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devres_release_group(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.devres_group*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.list_head*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct.devres_group* @find_group(%struct.device* %14, i8* %15)
  store %struct.devres_group* %16, %struct.devres_group** %5, align 8
  %17 = load %struct.devres_group*, %struct.devres_group** %5, align 8
  %18 = icmp ne %struct.devres_group* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %2
  %20 = load %struct.devres_group*, %struct.devres_group** %5, align 8
  %21 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.list_head* %24, %struct.list_head** %8, align 8
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 1
  store %struct.list_head* %26, %struct.list_head** %9, align 8
  %27 = load %struct.devres_group*, %struct.devres_group** %5, align 8
  %28 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @list_empty(%struct.list_head* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %19
  %35 = load %struct.devres_group*, %struct.devres_group** %5, align 8
  %36 = getelementptr inbounds %struct.devres_group, %struct.devres_group* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.list_head, %struct.list_head* %39, i32 0, i32 0
  %41 = load %struct.list_head*, %struct.list_head** %40, align 8
  store %struct.list_head* %41, %struct.list_head** %9, align 8
  br label %42

42:                                               ; preds = %34, %19
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load %struct.list_head*, %struct.list_head** %8, align 8
  %45 = load %struct.list_head*, %struct.list_head** %9, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @release_nodes(%struct.device* %43, %struct.list_head* %44, %struct.list_head* %45, i64 %46)
  store i32 %47, i32* %7, align 4
  br label %54

48:                                               ; preds = %2
  %49 = call i32 @WARN_ON(i32 1)
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %48, %42
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.devres_group* @find_group(%struct.device*, i8*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @release_nodes(%struct.device*, %struct.list_head*, %struct.list_head*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
