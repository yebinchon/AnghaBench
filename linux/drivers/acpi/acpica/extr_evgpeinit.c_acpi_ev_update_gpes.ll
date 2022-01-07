; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpeinit.c_acpi_ev_update_gpes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evgpeinit.c_acpi_ev_update_gpes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info* }
%struct.acpi_gpe_block_info = type { %struct.acpi_gpe_block_info*, i32 }
%struct.acpi_gpe_walk_info = type { i64, i32, %struct.acpi_gpe_block_info*, i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_MTX_EVENTS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_gpe_xrupt_list_head = common dso_local global %struct.acpi_gpe_xrupt_info* null, align 8
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_NS_WALK_NO_UNLOCK = common dso_local global i32 0, align 4
@acpi_ev_match_gpe_method = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"While decoding _Lxx/_Exx methods\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Enabled %u new GPEs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ev_update_gpes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %4 = alloca %struct.acpi_gpe_block_info*, align 8
  %5 = alloca %struct.acpi_gpe_walk_info, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @AE_OK, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %9 = call i32 @acpi_ut_acquire_mutex(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @ACPI_FAILURE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %72

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %5, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %2, align 4
  %17 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %5, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @TRUE, align 4
  %19 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %5, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8
  store %struct.acpi_gpe_xrupt_info* %20, %struct.acpi_gpe_xrupt_info** %3, align 8
  br label %21

21:                                               ; preds = %56, %14
  %22 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %23 = icmp ne %struct.acpi_gpe_xrupt_info* %22, null
  br i1 %23, label %24, label %60

24:                                               ; preds = %21
  %25 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %25, i32 0, i32 1
  %27 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %26, align 8
  store %struct.acpi_gpe_block_info* %27, %struct.acpi_gpe_block_info** %4, align 8
  br label %28

28:                                               ; preds = %52, %24
  %29 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %4, align 8
  %30 = icmp ne %struct.acpi_gpe_block_info* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %5, i32 0, i32 2
  store %struct.acpi_gpe_block_info* %32, %struct.acpi_gpe_block_info** %33, align 8
  %34 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %4, align 8
  %35 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %5, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %39 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %42 = load i32, i32* @ACPI_NS_WALK_NO_UNLOCK, align 4
  %43 = load i32, i32* @acpi_ev_match_gpe_method, align 4
  %44 = call i32 @acpi_ns_walk_namespace(i32 %38, i32 %40, i32 %41, i32 %42, i32 %43, i32* null, %struct.acpi_gpe_walk_info* %5, i32* null)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %31
  %49 = load i32, i32* @AE_INFO, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([33 x i8]* @.str to i32))
  br label %52

52:                                               ; preds = %48, %31
  %53 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %4, align 8
  %54 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %53, i32 0, i32 0
  %55 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %54, align 8
  store %struct.acpi_gpe_block_info* %55, %struct.acpi_gpe_block_info** %4, align 8
  br label %28

56:                                               ; preds = %28
  %57 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %58 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %57, i32 0, i32 0
  %59 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %58, align 8
  store %struct.acpi_gpe_xrupt_info* %59, %struct.acpi_gpe_xrupt_info** %3, align 8
  br label %21

60:                                               ; preds = %21
  %61 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %5, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %5, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @ACPI_INFO(i8* %67)
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %71 = call i32 @acpi_ut_release_mutex(i32 %70)
  br label %72

72:                                               ; preds = %69, %13
  ret void
}

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_walk_namespace(i32, i32, i32, i32, i32, i32*, %struct.acpi_gpe_walk_info*, i32*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @ACPI_INFO(i8*) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
