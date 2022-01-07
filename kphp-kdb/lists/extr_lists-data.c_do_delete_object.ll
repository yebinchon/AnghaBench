; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_delete_object.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_delete_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@revlist_metafile_mode = common dso_local global i64 0, align 8
@LEV_LI_DEL_OBJ = common dso_local global i32 0, align 4
@lev_object_id_bytes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_object(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @revlist_metafile_mode, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @prepare_object_metafile(i32 %8, i32 1)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 -2, i32* %2, align 4
  br label %24

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @LEV_LI_DEL_OBJ, align 4
  %14 = load i64, i64* @lev_object_id_bytes, align 8
  %15 = add i64 4, %14
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @FIRST_INT(i32 %16)
  %18 = call i8* @alloc_log_event(i32 %13, i64 %15, i32 %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @upcopy_object_id(i8* %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @delete_object(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %12, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @prepare_object_metafile(i32, i32) #1

declare dso_local i8* @alloc_log_event(i32, i64, i32) #1

declare dso_local i32 @FIRST_INT(i32) #1

declare dso_local i32 @upcopy_object_id(i8*, i32) #1

declare dso_local i32 @delete_object(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
