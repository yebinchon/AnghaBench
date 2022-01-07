; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c___check_limbo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c___check_limbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i64 }
%struct.rdt_domain = type { i32 }
%struct.rmid_entry = type { i32, i32, i32 }

@rdt_resources_all = common dso_local global %struct.rdt_resource* null, align 8
@RDT_RESOURCE_L3 = common dso_local global i64 0, align 8
@rmid_limbo_count = common dso_local global i32 0, align 4
@rmid_free_lru = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__check_limbo(%struct.rdt_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.rdt_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmid_entry*, align 8
  %6 = alloca %struct.rdt_resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rdt_domain* %0, %struct.rdt_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 1, i64* %7, align 8
  %9 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %10 = load i64, i64* @RDT_RESOURCE_L3, align 8
  %11 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %9, i64 %10
  store %struct.rdt_resource* %11, %struct.rdt_resource** %6, align 8
  br label %12

12:                                               ; preds = %56, %2
  %13 = load %struct.rdt_domain*, %struct.rdt_domain** %3, align 8
  %14 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %17 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @find_next_bit(i32 %15, i64 %18, i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %23 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  br label %59

27:                                               ; preds = %12
  %28 = load i64, i64* %8, align 8
  %29 = call %struct.rmid_entry* @__rmid_entry(i64 %28)
  store %struct.rmid_entry* %29, %struct.rmid_entry** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load %struct.rmid_entry*, %struct.rmid_entry** %5, align 8
  %34 = call i32 @rmid_dirty(%struct.rmid_entry* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.rmid_entry*, %struct.rmid_entry** %5, align 8
  %38 = getelementptr inbounds %struct.rmid_entry, %struct.rmid_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rdt_domain*, %struct.rdt_domain** %3, align 8
  %41 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clear_bit(i32 %39, i32 %42)
  %44 = load %struct.rmid_entry*, %struct.rmid_entry** %5, align 8
  %45 = getelementptr inbounds %struct.rmid_entry, %struct.rmid_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %36
  %50 = load i32, i32* @rmid_limbo_count, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* @rmid_limbo_count, align 4
  %52 = load %struct.rmid_entry*, %struct.rmid_entry** %5, align 8
  %53 = getelementptr inbounds %struct.rmid_entry, %struct.rmid_entry* %52, i32 0, i32 0
  %54 = call i32 @list_add_tail(i32* %53, i32* @rmid_free_lru)
  br label %55

55:                                               ; preds = %49, %36
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %12

59:                                               ; preds = %26
  ret void
}

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

declare dso_local %struct.rmid_entry* @__rmid_entry(i64) #1

declare dso_local i32 @rmid_dirty(%struct.rmid_entry*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
