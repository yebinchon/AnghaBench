; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c_find_equiv_id.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c_find_equiv_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.equiv_cpu_table = type { i32, %struct.equiv_cpu_entry* }
%struct.equiv_cpu_entry = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.equiv_cpu_table*, i64)* @find_equiv_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_equiv_id(%struct.equiv_cpu_table* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.equiv_cpu_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.equiv_cpu_entry*, align 8
  store %struct.equiv_cpu_table* %0, %struct.equiv_cpu_table** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.equiv_cpu_table*, %struct.equiv_cpu_table** %4, align 8
  %9 = icmp ne %struct.equiv_cpu_table* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.equiv_cpu_table*, %struct.equiv_cpu_table** %4, align 8
  %12 = getelementptr inbounds %struct.equiv_cpu_table, %struct.equiv_cpu_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %46

16:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.equiv_cpu_table*, %struct.equiv_cpu_table** %4, align 8
  %20 = getelementptr inbounds %struct.equiv_cpu_table, %struct.equiv_cpu_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load %struct.equiv_cpu_table*, %struct.equiv_cpu_table** %4, align 8
  %25 = getelementptr inbounds %struct.equiv_cpu_table, %struct.equiv_cpu_table* %24, i32 0, i32 1
  %26 = load %struct.equiv_cpu_entry*, %struct.equiv_cpu_entry** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.equiv_cpu_entry, %struct.equiv_cpu_entry* %26, i64 %28
  store %struct.equiv_cpu_entry* %29, %struct.equiv_cpu_entry** %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.equiv_cpu_entry*, %struct.equiv_cpu_entry** %7, align 8
  %32 = getelementptr inbounds %struct.equiv_cpu_entry, %struct.equiv_cpu_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.equiv_cpu_entry*, %struct.equiv_cpu_entry** %7, align 8
  %37 = getelementptr inbounds %struct.equiv_cpu_entry, %struct.equiv_cpu_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %23
  %40 = load %struct.equiv_cpu_entry*, %struct.equiv_cpu_entry** %7, align 8
  %41 = getelementptr inbounds %struct.equiv_cpu_entry, %struct.equiv_cpu_entry* %40, i32 1
  store %struct.equiv_cpu_entry* %41, %struct.equiv_cpu_entry** %7, align 8
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %17

45:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %35, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
