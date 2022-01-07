; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c_free_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c_free_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.master = type { i32, %struct.component_match* }
%struct.component_match = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.component* }
%struct.component = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.master*)* @free_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_master(%struct.master* %0) #0 {
  %2 = alloca %struct.master*, align 8
  %3 = alloca %struct.component_match*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.component*, align 8
  store %struct.master* %0, %struct.master** %2, align 8
  %6 = load %struct.master*, %struct.master** %2, align 8
  %7 = getelementptr inbounds %struct.master, %struct.master* %6, i32 0, i32 1
  %8 = load %struct.component_match*, %struct.component_match** %7, align 8
  store %struct.component_match* %8, %struct.component_match** %3, align 8
  %9 = load %struct.master*, %struct.master** %2, align 8
  %10 = call i32 @component_master_debugfs_del(%struct.master* %9)
  %11 = load %struct.master*, %struct.master** %2, align 8
  %12 = getelementptr inbounds %struct.master, %struct.master* %11, i32 0, i32 0
  %13 = call i32 @list_del(i32* %12)
  %14 = load %struct.component_match*, %struct.component_match** %3, align 8
  %15 = icmp ne %struct.component_match* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.component_match*, %struct.component_match** %3, align 8
  %20 = getelementptr inbounds %struct.component_match, %struct.component_match* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.component_match*, %struct.component_match** %3, align 8
  %25 = getelementptr inbounds %struct.component_match, %struct.component_match* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.component*, %struct.component** %30, align 8
  store %struct.component* %31, %struct.component** %5, align 8
  %32 = load %struct.component*, %struct.component** %5, align 8
  %33 = icmp ne %struct.component* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.component*, %struct.component** %5, align 8
  %36 = getelementptr inbounds %struct.component, %struct.component* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %34, %23
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %17

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.master*, %struct.master** %2, align 8
  %44 = call i32 @kfree(%struct.master* %43)
  ret void
}

declare dso_local i32 @component_master_debugfs_del(%struct.master*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
