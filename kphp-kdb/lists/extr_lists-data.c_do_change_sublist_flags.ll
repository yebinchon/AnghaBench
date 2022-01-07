; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_change_sublist_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_change_sublist_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_sublist_flags = type { i32, i32, i32, i32 }
%struct.lev_generic = type { i32 }

@metafile_mode = common dso_local global i64 0, align 8
@LEV_LI_SUBLIST_FLAGS = common dso_local global i32 0, align 4
@lev_list_id_bytes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_change_sublist_flags(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lev_sublist_flags*, align 8
  %13 = alloca %struct.lev_sublist_flags*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @conv_list_id(i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %57

18:                                               ; preds = %5
  %19 = load i64, i64* @metafile_mode, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @prepare_list_metafile(i32 %22, i32 1)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -2, i32* %6, align 4
  br label %57

26:                                               ; preds = %21, %18
  %27 = load i32, i32* @LEV_LI_SUBLIST_FLAGS, align 4
  %28 = load i64, i64* @lev_list_id_bytes, align 8
  %29 = add i64 16, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @FIRST_INT(i32 %30)
  %32 = call %struct.lev_sublist_flags* @alloc_log_event(i32 %27, i64 %29, i32 %31)
  store %struct.lev_sublist_flags* %32, %struct.lev_sublist_flags** %13, align 8
  %33 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %13, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @upcopy_list_id(%struct.lev_sublist_flags* %33, i32 %34)
  %36 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %13, align 8
  %37 = call %struct.lev_sublist_flags* @LEV_ADJUST_L(%struct.lev_sublist_flags* %36)
  store %struct.lev_sublist_flags* %37, %struct.lev_sublist_flags** %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %12, align 8
  %40 = getelementptr inbounds %struct.lev_sublist_flags, %struct.lev_sublist_flags* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %12, align 8
  %43 = getelementptr inbounds %struct.lev_sublist_flags, %struct.lev_sublist_flags* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %12, align 8
  %46 = getelementptr inbounds %struct.lev_sublist_flags, %struct.lev_sublist_flags* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %12, align 8
  %49 = getelementptr inbounds %struct.lev_sublist_flags, %struct.lev_sublist_flags* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %12, align 8
  %52 = getelementptr inbounds %struct.lev_sublist_flags, %struct.lev_sublist_flags* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %13, align 8
  %55 = bitcast %struct.lev_sublist_flags* %54 to %struct.lev_generic*
  %56 = call i32 @change_sublist_flags(i32 %50, i32 %53, %struct.lev_generic* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %26, %25, %17
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @conv_list_id(i32) #1

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local %struct.lev_sublist_flags* @alloc_log_event(i32, i64, i32) #1

declare dso_local i32 @FIRST_INT(i32) #1

declare dso_local i32 @upcopy_list_id(%struct.lev_sublist_flags*, i32) #1

declare dso_local %struct.lev_sublist_flags* @LEV_ADJUST_L(%struct.lev_sublist_flags*) #1

declare dso_local i32 @change_sublist_flags(i32, i32, %struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
