; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_dom_data_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_dom_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmid_entry = type { i32, i32 }
%struct.rdt_resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@rmid_ptrs = common dso_local global %struct.rmid_entry* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@rmid_free_lru = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdt_resource*)* @dom_data_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dom_data_init(%struct.rdt_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdt_resource*, align 8
  %4 = alloca %struct.rmid_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rdt_resource* %0, %struct.rdt_resource** %3, align 8
  store %struct.rmid_entry* null, %struct.rmid_entry** %4, align 8
  %7 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %8 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rmid_entry* @kcalloc(i32 %10, i32 8, i32 %11)
  store %struct.rmid_entry* %12, %struct.rmid_entry** @rmid_ptrs, align 8
  %13 = load %struct.rmid_entry*, %struct.rmid_entry** @rmid_ptrs, align 8
  %14 = icmp ne %struct.rmid_entry* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.rmid_entry*, %struct.rmid_entry** @rmid_ptrs, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rmid_entry, %struct.rmid_entry* %24, i64 %26
  store %struct.rmid_entry* %27, %struct.rmid_entry** %4, align 8
  %28 = load %struct.rmid_entry*, %struct.rmid_entry** %4, align 8
  %29 = getelementptr inbounds %struct.rmid_entry, %struct.rmid_entry* %28, i32 0, i32 1
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.rmid_entry*, %struct.rmid_entry** %4, align 8
  %33 = getelementptr inbounds %struct.rmid_entry, %struct.rmid_entry* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.rmid_entry*, %struct.rmid_entry** %4, align 8
  %35 = getelementptr inbounds %struct.rmid_entry, %struct.rmid_entry* %34, i32 0, i32 1
  %36 = call i32 @list_add_tail(i32* %35, i32* @rmid_free_lru)
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %19

40:                                               ; preds = %19
  %41 = call %struct.rmid_entry* @__rmid_entry(i32 0)
  store %struct.rmid_entry* %41, %struct.rmid_entry** %4, align 8
  %42 = load %struct.rmid_entry*, %struct.rmid_entry** %4, align 8
  %43 = getelementptr inbounds %struct.rmid_entry, %struct.rmid_entry* %42, i32 0, i32 1
  %44 = call i32 @list_del(i32* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.rmid_entry* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.rmid_entry* @__rmid_entry(i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
