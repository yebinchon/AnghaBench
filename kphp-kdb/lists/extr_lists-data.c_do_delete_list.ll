; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_delete_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_delete_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32 }

@metafile_mode = common dso_local global i64 0, align 8
@LEV_LI_DEL_LIST = common dso_local global i32 0, align 4
@lev_list_id_bytes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @conv_list_id(i32 %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load i64, i64* @metafile_mode, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @prepare_list_metafile(i32 %13, i32 1)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -2, i32* %2, align 4
  br label %31

17:                                               ; preds = %12, %9
  %18 = load i32, i32* @LEV_LI_DEL_LIST, align 4
  %19 = load i64, i64* @lev_list_id_bytes, align 8
  %20 = add i64 4, %19
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @FIRST_INT(i32 %21)
  %23 = call i8* @alloc_log_event(i32 %18, i64 %20, i32 %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @upcopy_list_id(i8* %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to %struct.lev_generic*
  %30 = call i32 @delete_list(i32 %27, %struct.lev_generic* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %17, %16, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @conv_list_id(i32) #1

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local i8* @alloc_log_event(i32, i64, i32) #1

declare dso_local i32 @FIRST_INT(i32) #1

declare dso_local i32 @upcopy_list_id(i8*, i32) #1

declare dso_local i32 @delete_list(i32, %struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
