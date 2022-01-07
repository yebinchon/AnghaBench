; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c_remove_component.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c_remove_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.master = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.component* }
%struct.component = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.master*, %struct.component*)* @remove_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_component(%struct.master* %0, %struct.component* %1) #0 {
  %3 = alloca %struct.master*, align 8
  %4 = alloca %struct.component*, align 8
  %5 = alloca i64, align 8
  store %struct.master* %0, %struct.master** %3, align 8
  store %struct.component* %1, %struct.component** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %36, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.master*, %struct.master** %3, align 8
  %9 = getelementptr inbounds %struct.master, %struct.master* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %7, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %6
  %15 = load %struct.master*, %struct.master** %3, align 8
  %16 = getelementptr inbounds %struct.master, %struct.master* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.component*, %struct.component** %22, align 8
  %24 = load %struct.component*, %struct.component** %4, align 8
  %25 = icmp eq %struct.component* %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %14
  %27 = load %struct.master*, %struct.master** %3, align 8
  %28 = getelementptr inbounds %struct.master, %struct.master* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.component* null, %struct.component** %34, align 8
  br label %35

35:                                               ; preds = %26, %14
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %6

39:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
