; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_array_delete_sublist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_array_delete_sublist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_xor_c = common dso_local global i32 0, align 4
@f_and_c = common dso_local global i32 0, align 4
@metafile_mode = common dso_local global i32 0, align 4
@M_obj_id_list = common dso_local global i32 0, align 4
@M_global_id_list = common dso_local global i32* null, align 8
@tot_list_entries = common dso_local global i32 0, align 4
@f_cnt = common dso_local global i32 0, align 4
@temp_object_list = common dso_local global i32* null, align 8
@temp_object_list_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @array_delete_sublist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_delete_sublist(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @metafile_get_flags(i32 %6)
  %8 = load i32, i32* @f_xor_c, align 4
  %9 = xor i32 %7, %8
  %10 = load i32, i32* @f_and_c, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @metafile_mode, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @M_obj_id_list, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @OARR_ENTRY(i32 %18, i32 %19)
  %21 = load i32*, i32** @M_global_id_list, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @metafile_get_flags(i32 %26)
  %28 = call i32 @delete_list_entry_aux(i32 %20, i32 %25, i32 %27)
  %29 = load i32, i32* @tot_list_entries, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @tot_list_entries, align 4
  %31 = load i32, i32* @f_cnt, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @f_cnt, align 4
  store i32 0, i32* %3, align 4
  br label %45

33:                                               ; preds = %13
  %34 = load i32, i32* @M_obj_id_list, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @OARR_ENTRY(i32 %34, i32 %35)
  %37 = load i32*, i32** @temp_object_list, align 8
  %38 = load i32, i32* @temp_object_list_size, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @temp_object_list_size, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* @f_cnt, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @f_cnt, align 4
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %33, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @metafile_get_flags(i32) #1

declare dso_local i32 @delete_list_entry_aux(i32, i32, i32) #1

declare dso_local i32 @OARR_ENTRY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
