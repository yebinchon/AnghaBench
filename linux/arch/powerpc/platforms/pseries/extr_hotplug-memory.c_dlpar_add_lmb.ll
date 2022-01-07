; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_dlpar_add_lmb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_dlpar_add_lmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drmem_lmb = type { i32, i32, i32, i32 }

@DRCONF_MEM_ASSIGNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drmem_lmb*)* @dlpar_add_lmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlpar_add_lmb(%struct.drmem_lmb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drmem_lmb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.drmem_lmb* %0, %struct.drmem_lmb** %3, align 8
  %6 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %7 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DRCONF_MEM_ASSIGNED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %17 = call i32 @update_lmb_associativity_index(%struct.drmem_lmb* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %22 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dlpar_release_drc(i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %70

26:                                               ; preds = %15
  %27 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %28 = call i32 @lmb_set_nid(%struct.drmem_lmb* %27)
  %29 = call i64 (...) @memory_block_size_bytes()
  store i64 %29, i64* %4, align 8
  %30 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %31 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %34 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @__add_memory(i32 %32, i32 %35, i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %42 = call i32 @invalidate_lmb_associativity_index(%struct.drmem_lmb* %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %70

44:                                               ; preds = %26
  %45 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %46 = call i32 @dlpar_online_lmb(%struct.drmem_lmb* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %51 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %54 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @__remove_memory(i32 %52, i32 %55, i64 %56)
  %58 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %59 = call i32 @invalidate_lmb_associativity_index(%struct.drmem_lmb* %58)
  %60 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %61 = call i32 @lmb_clear_nid(%struct.drmem_lmb* %60)
  br label %68

62:                                               ; preds = %44
  %63 = load i32, i32* @DRCONF_MEM_ASSIGNED, align 4
  %64 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %65 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %49
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %40, %20, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @update_lmb_associativity_index(%struct.drmem_lmb*) #1

declare dso_local i32 @dlpar_release_drc(i32) #1

declare dso_local i32 @lmb_set_nid(%struct.drmem_lmb*) #1

declare dso_local i64 @memory_block_size_bytes(...) #1

declare dso_local i32 @__add_memory(i32, i32, i64) #1

declare dso_local i32 @invalidate_lmb_associativity_index(%struct.drmem_lmb*) #1

declare dso_local i32 @dlpar_online_lmb(%struct.drmem_lmb*) #1

declare dso_local i32 @__remove_memory(i32, i32, i64) #1

declare dso_local i32 @lmb_clear_nid(%struct.drmem_lmb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
