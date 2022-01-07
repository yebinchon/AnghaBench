; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_e820.c__e820__mapped_any.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_e820.c__e820__mapped_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e820_table = type { i32, %struct.e820_entry* }
%struct.e820_entry = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e820_table*, i64, i64, i32)* @_e820__mapped_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_e820__mapped_any(%struct.e820_table* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.e820_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.e820_entry*, align 8
  store %struct.e820_table* %0, %struct.e820_table** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %52, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.e820_table*, %struct.e820_table** %6, align 8
  %15 = getelementptr inbounds %struct.e820_table, %struct.e820_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load %struct.e820_table*, %struct.e820_table** %6, align 8
  %20 = getelementptr inbounds %struct.e820_table, %struct.e820_table* %19, i32 0, i32 1
  %21 = load %struct.e820_entry*, %struct.e820_entry** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %21, i64 %23
  store %struct.e820_entry* %24, %struct.e820_entry** %11, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.e820_entry*, %struct.e820_entry** %11, align 8
  %29 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %52

34:                                               ; preds = %27, %18
  %35 = load %struct.e820_entry*, %struct.e820_entry** %11, align 8
  %36 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %34
  %41 = load %struct.e820_entry*, %struct.e820_entry** %11, align 8
  %42 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.e820_entry*, %struct.e820_entry** %11, align 8
  %45 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load i64, i64* %7, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40, %34
  br label %52

51:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %56

52:                                               ; preds = %50, %33
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %12

55:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
