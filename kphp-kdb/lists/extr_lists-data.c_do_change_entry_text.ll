; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_change_entry_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_change_entry_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_set_entry_text = type { i32, i32 }
%struct.lev_set_entry_text_long = type { i32, i32 }
%struct.lev_generic = type { i32 }

@max_text_len = common dso_local global i32 0, align 4
@metafile_mode = common dso_local global i64 0, align 8
@LEV_LI_SET_ENTRY_TEXT = common dso_local global i64 0, align 8
@lev_list_object_bytes = common dso_local global i64 0, align 8
@LEV_LI_SET_ENTRY_TEXT_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_change_entry_text(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_set_entry_text*, align 8
  %11 = alloca %struct.lev_set_entry_text_long*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @conv_list_id(i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @max_text_len, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %98

20:                                               ; preds = %15
  %21 = load i64, i64* @metafile_mode, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @prepare_list_metafile(i32 %24, i32 1)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -2, i32* %5, align 4
  br label %98

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %66

31:                                               ; preds = %28
  %32 = load i64, i64* @LEV_LI_SET_ENTRY_TEXT, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 8, %37
  %39 = load i64, i64* @lev_list_object_bytes, align 8
  %40 = add i64 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @FIRST_INT(i32 %41)
  %43 = call %struct.lev_set_entry_text_long* @alloc_log_event(i64 %35, i64 %40, i32 %42)
  %44 = bitcast %struct.lev_set_entry_text_long* %43 to %struct.lev_set_entry_text*
  store %struct.lev_set_entry_text* %44, %struct.lev_set_entry_text** %10, align 8
  %45 = load %struct.lev_set_entry_text*, %struct.lev_set_entry_text** %10, align 8
  %46 = bitcast %struct.lev_set_entry_text* %45 to %struct.lev_set_entry_text_long*
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @upcopy_list_object_id(%struct.lev_set_entry_text_long* %46, i32 %47, i32 %48)
  %50 = load %struct.lev_set_entry_text*, %struct.lev_set_entry_text** %10, align 8
  %51 = bitcast %struct.lev_set_entry_text* %50 to %struct.lev_set_entry_text_long*
  %52 = call i64 @LEV_ADJUST_LO(%struct.lev_set_entry_text_long* %51)
  %53 = inttoptr i64 %52 to %struct.lev_set_entry_text*
  %54 = getelementptr inbounds %struct.lev_set_entry_text, %struct.lev_set_entry_text* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @memcpy(i32 %55, i8* %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.lev_set_entry_text*, %struct.lev_set_entry_text** %10, align 8
  %64 = bitcast %struct.lev_set_entry_text* %63 to %struct.lev_generic*
  %65 = call i32 @set_entry_text(i32 %59, i32 %60, i8* %61, i32 %62, %struct.lev_generic* %64)
  store i32 %65, i32* %5, align 4
  br label %98

66:                                               ; preds = %28
  %67 = load i64, i64* @LEV_LI_SET_ENTRY_TEXT_LONG, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 8, %69
  %71 = load i64, i64* @lev_list_object_bytes, align 8
  %72 = add i64 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @FIRST_INT(i32 %73)
  %75 = call %struct.lev_set_entry_text_long* @alloc_log_event(i64 %67, i64 %72, i32 %74)
  store %struct.lev_set_entry_text_long* %75, %struct.lev_set_entry_text_long** %11, align 8
  %76 = load %struct.lev_set_entry_text_long*, %struct.lev_set_entry_text_long** %11, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @upcopy_list_object_id(%struct.lev_set_entry_text_long* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.lev_set_entry_text_long*, %struct.lev_set_entry_text_long** %11, align 8
  %82 = getelementptr inbounds %struct.lev_set_entry_text_long, %struct.lev_set_entry_text_long* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.lev_set_entry_text_long*, %struct.lev_set_entry_text_long** %11, align 8
  %84 = call i64 @LEV_ADJUST_LO(%struct.lev_set_entry_text_long* %83)
  %85 = inttoptr i64 %84 to %struct.lev_set_entry_text*
  %86 = getelementptr inbounds %struct.lev_set_entry_text, %struct.lev_set_entry_text* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @memcpy(i32 %87, i8* %88, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.lev_set_entry_text_long*, %struct.lev_set_entry_text_long** %11, align 8
  %96 = bitcast %struct.lev_set_entry_text_long* %95 to %struct.lev_generic*
  %97 = call i32 @set_entry_text(i32 %91, i32 %92, i8* %93, i32 %94, %struct.lev_generic* %96)
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %66, %31, %27, %19
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i64 @conv_list_id(i32) #1

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local %struct.lev_set_entry_text_long* @alloc_log_event(i64, i64, i32) #1

declare dso_local i32 @FIRST_INT(i32) #1

declare dso_local i32 @upcopy_list_object_id(%struct.lev_set_entry_text_long*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @LEV_ADJUST_LO(%struct.lev_set_entry_text_long*) #1

declare dso_local i32 @set_entry_text(i32, i32, i8*, i32, %struct.lev_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
