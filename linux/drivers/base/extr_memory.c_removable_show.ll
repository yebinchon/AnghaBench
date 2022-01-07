; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_removable_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_removable_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.memory_block = type { i64, i64 }

@MEM_ONLINE = common dso_local global i64 0, align 8
@sections_per_block = common dso_local global i32 0, align 4
@PAGES_PER_SECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @removable_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @removable_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.memory_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.memory_block* @to_memory_block(%struct.device* %11)
  store %struct.memory_block* %12, %struct.memory_block** %7, align 8
  store i32 1, i32* %9, align 4
  %13 = load %struct.memory_block*, %struct.memory_block** %7, align 8
  %14 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MEM_ONLINE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %51

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @sections_per_block, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load %struct.memory_block*, %struct.memory_block** %7, align 8
  %26 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i32 @present_section_nr(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %47

34:                                               ; preds = %24
  %35 = load %struct.memory_block*, %struct.memory_block** %7, align 8
  %36 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i64 @section_nr_to_pfn(i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* @PAGES_PER_SECTION, align 4
  %44 = call i32 @is_mem_section_removable(i64 %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %34, %33
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %20

50:                                               ; preds = %20
  br label %51

51:                                               ; preds = %50, %18
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %53)
  ret i32 %54
}

declare dso_local %struct.memory_block* @to_memory_block(%struct.device*) #1

declare dso_local i32 @present_section_nr(i64) #1

declare dso_local i64 @section_nr_to_pfn(i64) #1

declare dso_local i32 @is_mem_section_removable(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
