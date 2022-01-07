; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_fan_apps_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_fan_apps_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_set_entry_text = type { i32, i32, i8*, i64 }

@I = common dso_local global i8** null, align 8
@af_app_id = common dso_local global i64 0, align 8
@af_user_id = common dso_local global i64 0, align 8
@list_id = common dso_local global i8* null, align 8
@LEV_LI_SET_ENTRY = common dso_local global i64 0, align 8
@af_ordering = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@af_message = common dso_local global i64 0, align 8
@S = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@LEV_LI_SET_ENTRY_TEXT = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_fan_apps_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lev_set_entry_text*, align 8
  %3 = load i8**, i8*** @I, align 8
  %4 = load i64, i64* @af_app_id, align 8
  %5 = getelementptr inbounds i8*, i8** %3, i64 %4
  %6 = load i8*, i8** %5, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %1, align 4
  %8 = load i8**, i8*** @I, align 8
  %9 = load i64, i64* @af_user_id, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @list_id, align 8
  %12 = load i8*, i8** @list_id, align 8
  %13 = call i64 @conv_uid(i8* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* %1, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %0
  br label %83

19:                                               ; preds = %15
  %20 = load i64, i64* @LEV_LI_SET_ENTRY, align 8
  %21 = add nsw i64 %20, 19
  %22 = load i32, i32* %1, align 4
  %23 = load i8**, i8*** @I, align 8
  %24 = load i64, i64* @af_ordering, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @log_2ints(i64 %21, i32 %22, i8* %26)
  %28 = load i32*, i32** @L, align 8
  %29 = load i64, i64* @af_message, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %19
  %34 = load i32*, i32** @S, align 8
  %35 = load i64, i64* @af_message, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strcmp(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %33
  %41 = load i32*, i32** @L, align 8
  %42 = load i64, i64* @af_message, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %46, label %80

46:                                               ; preds = %40
  %47 = load i32*, i32** @L, align 8
  %48 = load i64, i64* @af_message, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 12, %50
  %52 = call %struct.lev_set_entry_text* @write_alloc(i32 %51)
  store %struct.lev_set_entry_text* %52, %struct.lev_set_entry_text** %2, align 8
  %53 = load i64, i64* @LEV_LI_SET_ENTRY_TEXT, align 8
  %54 = load i32*, i32** @L, align 8
  %55 = load i64, i64* @af_message, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %53, %58
  %60 = load %struct.lev_set_entry_text*, %struct.lev_set_entry_text** %2, align 8
  %61 = getelementptr inbounds %struct.lev_set_entry_text, %struct.lev_set_entry_text* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load i8*, i8** @list_id, align 8
  %63 = load %struct.lev_set_entry_text*, %struct.lev_set_entry_text** %2, align 8
  %64 = getelementptr inbounds %struct.lev_set_entry_text, %struct.lev_set_entry_text* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %1, align 4
  %66 = load %struct.lev_set_entry_text*, %struct.lev_set_entry_text** %2, align 8
  %67 = getelementptr inbounds %struct.lev_set_entry_text, %struct.lev_set_entry_text* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.lev_set_entry_text*, %struct.lev_set_entry_text** %2, align 8
  %69 = getelementptr inbounds %struct.lev_set_entry_text, %struct.lev_set_entry_text* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** @S, align 8
  %72 = load i64, i64* @af_message, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** @L, align 8
  %76 = load i64, i64* @af_message, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i32 %70, i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %46, %40, %33, %19
  %81 = load i32, i32* @adj_rec, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @adj_rec, align 4
  br label %83

83:                                               ; preds = %80, %18
  ret void
}

declare dso_local i64 @conv_uid(i8*) #1

declare dso_local i32 @log_2ints(i64, i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.lev_set_entry_text* @write_alloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
