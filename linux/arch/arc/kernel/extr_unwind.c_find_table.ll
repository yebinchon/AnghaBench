; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unwind.c_find_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unwind.c_find_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_table = type { %struct.TYPE_3__, %struct.TYPE_4__, %struct.unwind_table* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@root_table = common dso_local global %struct.unwind_table zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.unwind_table* (i64)* @find_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.unwind_table* @find_table(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.unwind_table*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.unwind_table* @root_table, %struct.unwind_table** %3, align 8
  br label %4

4:                                                ; preds = %47, %1
  %5 = load %struct.unwind_table*, %struct.unwind_table** %3, align 8
  %6 = icmp ne %struct.unwind_table* %5, null
  br i1 %6, label %7, label %51

7:                                                ; preds = %4
  %8 = load i64, i64* %2, align 8
  %9 = load %struct.unwind_table*, %struct.unwind_table** %3, align 8
  %10 = getelementptr inbounds %struct.unwind_table, %struct.unwind_table* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %8, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = load i64, i64* %2, align 8
  %16 = load %struct.unwind_table*, %struct.unwind_table** %3, align 8
  %17 = getelementptr inbounds %struct.unwind_table, %struct.unwind_table* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.unwind_table*, %struct.unwind_table** %3, align 8
  %21 = getelementptr inbounds %struct.unwind_table, %struct.unwind_table* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %19, %23
  %25 = icmp ult i64 %15, %24
  br i1 %25, label %45, label %26

26:                                               ; preds = %14, %7
  %27 = load i64, i64* %2, align 8
  %28 = load %struct.unwind_table*, %struct.unwind_table** %3, align 8
  %29 = getelementptr inbounds %struct.unwind_table, %struct.unwind_table* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %27, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load i64, i64* %2, align 8
  %35 = load %struct.unwind_table*, %struct.unwind_table** %3, align 8
  %36 = getelementptr inbounds %struct.unwind_table, %struct.unwind_table* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.unwind_table*, %struct.unwind_table** %3, align 8
  %40 = getelementptr inbounds %struct.unwind_table, %struct.unwind_table* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %38, %42
  %44 = icmp ult i64 %34, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33, %14
  br label %51

46:                                               ; preds = %33, %26
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.unwind_table*, %struct.unwind_table** %3, align 8
  %49 = getelementptr inbounds %struct.unwind_table, %struct.unwind_table* %48, i32 0, i32 2
  %50 = load %struct.unwind_table*, %struct.unwind_table** %49, align 8
  store %struct.unwind_table* %50, %struct.unwind_table** %3, align 8
  br label %4

51:                                               ; preds = %45, %4
  %52 = load %struct.unwind_table*, %struct.unwind_table** %3, align 8
  ret %struct.unwind_table* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
