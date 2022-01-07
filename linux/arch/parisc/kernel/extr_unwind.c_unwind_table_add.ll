; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_unwind.c_unwind_table_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_unwind.c_unwind_table_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_table = type { i32 }
%struct.unwind_table_entry = type { i32 }

@GFP_USER = common dso_local global i32 0, align 4
@unwind_lock = common dso_local global i32 0, align 4
@unwind_tables = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.unwind_table* @unwind_table_add(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.unwind_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.unwind_table*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.unwind_table_entry*, align 8
  %15 = alloca %struct.unwind_table_entry*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.unwind_table_entry*
  store %struct.unwind_table_entry* %17, %struct.unwind_table_entry** %14, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to %struct.unwind_table_entry*
  store %struct.unwind_table_entry* %19, %struct.unwind_table_entry** %15, align 8
  %20 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %14, align 8
  %21 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %15, align 8
  %22 = call i32 @unwind_table_sort(%struct.unwind_table_entry* %20, %struct.unwind_table_entry* %21)
  %23 = load i32, i32* @GFP_USER, align 4
  %24 = call %struct.unwind_table* @kmalloc(i32 4, i32 %23)
  store %struct.unwind_table* %24, %struct.unwind_table** %12, align 8
  %25 = load %struct.unwind_table*, %struct.unwind_table** %12, align 8
  %26 = icmp eq %struct.unwind_table* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store %struct.unwind_table* null, %struct.unwind_table** %6, align 8
  br label %44

28:                                               ; preds = %5
  %29 = load %struct.unwind_table*, %struct.unwind_table** %12, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @unwind_table_init(%struct.unwind_table* %29, i8* %30, i64 %31, i64 %32, i8* %33, i8* %34)
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @spin_lock_irqsave(i32* @unwind_lock, i64 %36)
  %38 = load %struct.unwind_table*, %struct.unwind_table** %12, align 8
  %39 = getelementptr inbounds %struct.unwind_table, %struct.unwind_table* %38, i32 0, i32 0
  %40 = call i32 @list_add_tail(i32* %39, i32* @unwind_tables)
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* @unwind_lock, i64 %41)
  %43 = load %struct.unwind_table*, %struct.unwind_table** %12, align 8
  store %struct.unwind_table* %43, %struct.unwind_table** %6, align 8
  br label %44

44:                                               ; preds = %28, %27
  %45 = load %struct.unwind_table*, %struct.unwind_table** %6, align 8
  ret %struct.unwind_table* %45
}

declare dso_local i32 @unwind_table_sort(%struct.unwind_table_entry*, %struct.unwind_table_entry*) #1

declare dso_local %struct.unwind_table* @kmalloc(i32, i32) #1

declare dso_local i32 @unwind_table_init(%struct.unwind_table*, i8*, i64, i64, i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
