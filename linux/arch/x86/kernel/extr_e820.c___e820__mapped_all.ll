; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_e820.c___e820__mapped_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_e820.c___e820__mapped_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.e820_entry* }
%struct.e820_entry = type { i32, i64, i64 }

@e820_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.e820_entry* (i64, i64, i32)* @__e820__mapped_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.e820_entry* @__e820__mapped_all(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.e820_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.e820_entry*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %70, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @e820_table, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %10
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @e820_table, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.e820_entry*, %struct.e820_entry** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %19, i64 %21
  store %struct.e820_entry* %22, %struct.e820_entry** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.e820_entry*, %struct.e820_entry** %9, align 8
  %27 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %70

32:                                               ; preds = %25, %16
  %33 = load %struct.e820_entry*, %struct.e820_entry** %9, align 8
  %34 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = load %struct.e820_entry*, %struct.e820_entry** %9, align 8
  %40 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.e820_entry*, %struct.e820_entry** %9, align 8
  %43 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load i64, i64* %5, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38, %32
  br label %70

49:                                               ; preds = %38
  %50 = load %struct.e820_entry*, %struct.e820_entry** %9, align 8
  %51 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.e820_entry*, %struct.e820_entry** %9, align 8
  %57 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.e820_entry*, %struct.e820_entry** %9, align 8
  %60 = getelementptr inbounds %struct.e820_entry, %struct.e820_entry* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %55, %49
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load %struct.e820_entry*, %struct.e820_entry** %9, align 8
  store %struct.e820_entry* %68, %struct.e820_entry** %4, align 8
  br label %74

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %48, %31
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %10

73:                                               ; preds = %10
  store %struct.e820_entry* null, %struct.e820_entry** %4, align 8
  br label %74

74:                                               ; preds = %73, %67
  %75 = load %struct.e820_entry*, %struct.e820_entry** %4, align 8
  ret %struct.e820_entry* %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
