; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_check_new_revlist_metafile_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_check_new_revlist_metafile_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_revlist_entries = common dso_local global i32 0, align 4
@last_metafile_start = common dso_local global i32 0, align 4
@tmp_object_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"New revlist metafile contains %lld items\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_new_revlist_metafile_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @output_revlist_entries, align 4
  %5 = load i32, i32* @last_metafile_start, align 4
  %6 = sub nsw i32 %4, %5
  %7 = icmp slt i32 %6, 1000
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @tmp_object_id, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @object_id_compare(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i32, i32* @output_revlist_entries, align 4
  %17 = load i32, i32* @last_metafile_start, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @output_revlist_entries, align 4
  store i32 %20, i32* @last_metafile_start, align 4
  br label %21

21:                                               ; preds = %8, %15, %9
  ret void
}

declare dso_local i32 @object_id_compare(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
