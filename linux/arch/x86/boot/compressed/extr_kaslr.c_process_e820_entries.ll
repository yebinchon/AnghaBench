; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_process_e820_entries.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_process_e820_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.boot_e820_entry* }
%struct.boot_e820_entry = type { i64, i32, i32 }
%struct.mem_vector = type { i32, i32 }

@boot_params = common dso_local global %struct.TYPE_2__* null, align 8
@E820_TYPE_RAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @process_e820_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_e820_entries(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_vector, align 4
  %7 = alloca %struct.boot_e820_entry*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %42, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @boot_params, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @boot_params, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %17, i64 %19
  store %struct.boot_e820_entry* %20, %struct.boot_e820_entry** %7, align 8
  %21 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %7, align 8
  %22 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @E820_TYPE_RAM, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %42

27:                                               ; preds = %14
  %28 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %7, align 8
  %29 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.boot_e820_entry*, %struct.boot_e820_entry** %7, align 8
  %33 = getelementptr inbounds %struct.boot_e820_entry, %struct.boot_e820_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.mem_vector, %struct.mem_vector* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @process_mem_region(%struct.mem_vector* %6, i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %45

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %8

45:                                               ; preds = %40, %8
  ret void
}

declare dso_local i64 @process_mem_region(%struct.mem_vector*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
