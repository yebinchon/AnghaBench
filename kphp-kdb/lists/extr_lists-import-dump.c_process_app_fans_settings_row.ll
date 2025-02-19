; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_app_fans_settings_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_app_fans_settings_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = common dso_local global i8** null, align 8
@as_user_id = common dso_local global i64 0, align 8
@as_app_id = common dso_local global i64 0, align 8
@list_id = common dso_local global i8* null, align 8
@as_can_notify = common dso_local global i64 0, align 8
@as_can_access_audio = common dso_local global i32 0, align 4
@LEV_LI_DECR_FLAGS = common dso_local global i64 0, align 8
@LEV_LI_INCR_FLAGS = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_app_fans_settings_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i8**, i8*** @I, align 8
  %5 = load i64, i64* @as_user_id, align 8
  %6 = getelementptr inbounds i8*, i8** %4, i64 %5
  %7 = load i8*, i8** %6, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %9 = load i8**, i8*** @I, align 8
  %10 = load i64, i64* @as_app_id, align 8
  %11 = getelementptr inbounds i8*, i8** %9, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** @list_id, align 8
  %13 = load i8*, i8** @list_id, align 8
  %14 = call i64 @conv_uid(i8* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %0
  br label %67

20:                                               ; preds = %16
  %21 = load i64, i64* @as_can_notify, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %40, %20
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @as_can_access_audio, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i8**, i8*** @I, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load i8**, i8*** @I, align 8
  %45 = load i64, i64* @as_can_notify, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* @LEV_LI_DECR_FLAGS, align 8
  %51 = load i64, i64* @as_can_notify, align 8
  %52 = trunc i64 %51 to i32
  %53 = shl i32 1, %52
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @log_1int(i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %43
  %59 = load i64, i64* @LEV_LI_INCR_FLAGS, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @log_1int(i64 %62, i32 %63)
  %65 = load i32, i32* @adj_rec, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @adj_rec, align 4
  br label %67

67:                                               ; preds = %58, %19
  ret void
}

declare dso_local i64 @conv_uid(i8*) #1

declare dso_local i32 @log_1int(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
