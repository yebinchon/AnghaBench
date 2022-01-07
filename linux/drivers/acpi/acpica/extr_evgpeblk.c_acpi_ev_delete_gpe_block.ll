; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_delete_gpe_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_delete_gpe_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_block_info = type { %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }

@ev_install_gpe_block = common dso_local global i32 0, align 4
@ACPI_MTX_EVENTS = common dso_local global i32 0, align 4
@acpi_gbl_gpe_lock = common dso_local global i32 0, align 4
@acpi_current_gpe_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_delete_gpe_block(%struct.acpi_gpe_block_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_gpe_block_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_gpe_block_info* %0, %struct.acpi_gpe_block_info** %3, align 8
  %6 = load i32, i32* @ev_install_gpe_block, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %9 = call i32 @acpi_ut_acquire_mutex(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @ACPI_FAILURE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @return_ACPI_STATUS(i32 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %17, i32 0, i32 5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %21 = call i32 @acpi_hw_disable_gpe_block(%struct.TYPE_7__* %19, %struct.acpi_gpe_block_info* %20, i32* null)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %16
  %27 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %27, i32 0, i32 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %32, i32 0, i32 5
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = call i32 @acpi_ev_delete_gpe_xrupt(%struct.TYPE_7__* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %99

40:                                               ; preds = %31
  br label %81

41:                                               ; preds = %26, %16
  %42 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %43 = call i32 @acpi_os_acquire_lock(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %49, i32 0, i32 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %53 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %52, i32 0, i32 3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %55, align 8
  br label %64

56:                                               ; preds = %41
  %57 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %58 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %57, i32 0, i32 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %60, i32 0, i32 5
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %63, align 8
  br label %64

64:                                               ; preds = %56, %48
  %65 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %66 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %71 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %74 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %76, align 8
  br label %77

77:                                               ; preds = %69, %64
  %78 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @acpi_os_release_lock(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %40
  %82 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %83 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @acpi_current_gpe_count, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* @acpi_current_gpe_count, align 4
  %89 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %90 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %89, i32 0, i32 1
  %91 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %90, align 8
  %92 = call i32 @ACPI_FREE(%struct.acpi_gpe_block_info* %91)
  %93 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %94 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %93, i32 0, i32 0
  %95 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %94, align 8
  %96 = call i32 @ACPI_FREE(%struct.acpi_gpe_block_info* %95)
  %97 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %3, align 8
  %98 = call i32 @ACPI_FREE(%struct.acpi_gpe_block_info* %97)
  br label %99

99:                                               ; preds = %81, %39
  %100 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %101 = call i32 @acpi_ut_release_mutex(i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @return_ACPI_STATUS(i32 %102)
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_hw_disable_gpe_block(%struct.TYPE_7__*, %struct.acpi_gpe_block_info*, i32*) #1

declare dso_local i32 @acpi_ev_delete_gpe_xrupt(%struct.TYPE_7__*) #1

declare dso_local i32 @acpi_os_acquire_lock(i32) #1

declare dso_local i32 @acpi_os_release_lock(i32, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_gpe_block_info*) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
