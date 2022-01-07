; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_fan_apps_notify_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_fan_apps_notify_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = common dso_local global i8** null, align 8
@an_app_id = common dso_local global i64 0, align 8
@an_user_id = common dso_local global i64 0, align 8
@list_id = common dso_local global i8* null, align 8
@LEV_LI_ADD_ENTRY = common dso_local global i64 0, align 8
@an_inviter_id = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_fan_apps_notify_row() #0 {
  %1 = alloca i32, align 4
  %2 = load i8**, i8*** @I, align 8
  %3 = load i64, i64* @an_app_id, align 8
  %4 = getelementptr inbounds i8*, i8** %2, i64 %3
  %5 = load i8*, i8** %4, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %1, align 4
  %7 = load i8**, i8*** @I, align 8
  %8 = load i64, i64* @an_user_id, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 %8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @list_id, align 8
  %11 = load i8*, i8** @list_id, align 8
  %12 = call i64 @conv_uid(i8* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %0
  %15 = load i8*, i8** @list_id, align 8
  %16 = icmp ule i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %1, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %0
  br label %32

21:                                               ; preds = %17
  %22 = load i64, i64* @LEV_LI_ADD_ENTRY, align 8
  %23 = add nsw i64 %22, 2
  %24 = load i32, i32* %1, align 4
  %25 = load i8**, i8*** @I, align 8
  %26 = load i64, i64* @an_inviter_id, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @log_2ints(i64 %23, i32 %24, i8* %28)
  %30 = load i32, i32* @adj_rec, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @adj_rec, align 4
  br label %32

32:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @conv_uid(i8*) #1

declare dso_local i32 @log_2ints(i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
