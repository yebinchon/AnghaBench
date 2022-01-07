; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_delete_list_entry.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_delete_list_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_del_entry = type { i32 }
%struct.lev_generic = type { i32 }

@metafile_mode = common dso_local global i64 0, align 8
@LEV_LI_DEL_ENTRY = common dso_local global i32 0, align 4
@lev_list_object_bytes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_list_entry(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_del_entry*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @conv_list_id(i32 %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %35

11:                                               ; preds = %2
  %12 = load i64, i64* @metafile_mode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @prepare_list_metafile(i32 %15, i32 1)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -2, i32* %3, align 4
  br label %35

19:                                               ; preds = %14, %11
  %20 = load i32, i32* @LEV_LI_DEL_ENTRY, align 4
  %21 = load i64, i64* @lev_list_object_bytes, align 8
  %22 = add i64 4, %21
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @FIRST_INT(i32 %23)
  %25 = call %struct.lev_del_entry* @alloc_log_event(i32 %20, i64 %22, i32 %24)
  store %struct.lev_del_entry* %25, %struct.lev_del_entry** %6, align 8
  %26 = load %struct.lev_del_entry*, %struct.lev_del_entry** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @upcopy_list_object_id(%struct.lev_del_entry* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.lev_del_entry*, %struct.lev_del_entry** %6, align 8
  %33 = bitcast %struct.lev_del_entry* %32 to %struct.lev_generic*
  %34 = call i32 @delete_entry(i32 %30, i32 %31, i32 1, %struct.lev_generic* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %19, %18, %10
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @conv_list_id(i32) #1

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local %struct.lev_del_entry* @alloc_log_event(i32, i64, i32) #1

declare dso_local i32 @FIRST_INT(i32) #1

declare dso_local i32 @upcopy_list_object_id(%struct.lev_del_entry*, i32, i32) #1

declare dso_local i32 @delete_entry(i32, i32, i32, %struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
