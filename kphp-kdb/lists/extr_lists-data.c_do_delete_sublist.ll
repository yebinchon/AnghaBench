; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_delete_sublist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_delete_sublist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_sublist_flags = type { i32, i32, i64, i64 }
%struct.lev_generic = type { i32 }

@metafile_mode = common dso_local global i64 0, align 8
@LEV_LI_DEL_SUBLIST = common dso_local global i32 0, align 4
@lev_list_id_bytes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_sublist(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_sublist_flags*, align 8
  %9 = alloca %struct.lev_sublist_flags*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @conv_list_id(i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %51

14:                                               ; preds = %3
  %15 = load i64, i64* @metafile_mode, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @prepare_list_metafile(i32 %18, i32 1)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -2, i32* %4, align 4
  br label %51

22:                                               ; preds = %17, %14
  %23 = load i32, i32* @LEV_LI_DEL_SUBLIST, align 4
  %24 = load i64, i64* @lev_list_id_bytes, align 8
  %25 = add i64 4, %24
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @FIRST_INT(i32 %26)
  %28 = call %struct.lev_sublist_flags* @alloc_log_event(i32 %23, i64 %25, i32 %27)
  store %struct.lev_sublist_flags* %28, %struct.lev_sublist_flags** %9, align 8
  %29 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @upcopy_list_id(%struct.lev_sublist_flags* %29, i32 %30)
  %32 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %9, align 8
  %33 = call %struct.lev_sublist_flags* @LEV_ADJUST_L(%struct.lev_sublist_flags* %32)
  store %struct.lev_sublist_flags* %33, %struct.lev_sublist_flags** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %8, align 8
  %36 = getelementptr inbounds %struct.lev_sublist_flags, %struct.lev_sublist_flags* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %8, align 8
  %39 = getelementptr inbounds %struct.lev_sublist_flags, %struct.lev_sublist_flags* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %8, align 8
  %41 = getelementptr inbounds %struct.lev_sublist_flags, %struct.lev_sublist_flags* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %8, align 8
  %43 = getelementptr inbounds %struct.lev_sublist_flags, %struct.lev_sublist_flags* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %8, align 8
  %46 = getelementptr inbounds %struct.lev_sublist_flags, %struct.lev_sublist_flags* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.lev_sublist_flags*, %struct.lev_sublist_flags** %9, align 8
  %49 = bitcast %struct.lev_sublist_flags* %48 to %struct.lev_generic*
  %50 = call i32 @delete_sublist(i32 %44, i32 %47, %struct.lev_generic* %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %22, %21, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @conv_list_id(i32) #1

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local %struct.lev_sublist_flags* @alloc_log_event(i32, i64, i32) #1

declare dso_local i32 @FIRST_INT(i32) #1

declare dso_local i32 @upcopy_list_id(%struct.lev_sublist_flags*, i32) #1

declare dso_local %struct.lev_sublist_flags* @LEV_ADJUST_L(%struct.lev_sublist_flags*) #1

declare dso_local i32 @delete_sublist(i32, i32, %struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
