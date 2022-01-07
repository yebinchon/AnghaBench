; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_unmerged_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_unmerged_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.wt_status = type { i32 }
%struct.string_list_item = type { i32, %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i32 }

@WT_STATUS_UNMERGED = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@wt_longstatus_print_unmerged_data.padding = internal global i8* null, align 8
@wt_longstatus_print_unmerged_data.label_width = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@WT_STATUS_HEADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s%.*s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, %struct.string_list_item*)* @wt_longstatus_print_unmerged_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_unmerged_data(%struct.wt_status* %0, %struct.string_list_item* %1) #0 {
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca %struct.string_list_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wt_status_change_data*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store %struct.string_list_item* %1, %struct.string_list_item** %4, align 8
  %11 = load i32, i32* @WT_STATUS_UNMERGED, align 4
  %12 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %13 = call i8* @color(i32 %11, %struct.wt_status* %12)
  store i8* %13, i8** %5, align 8
  %14 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %15 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %14, i32 0, i32 1
  %16 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %15, align 8
  store %struct.wt_status_change_data* %16, %struct.wt_status_change_data** %6, align 8
  %17 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = load i8*, i8** @wt_longstatus_print_unmerged_data.padding, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = call i32 @maxwidth(i8* (i32)* @wt_status_unmerged_status_string, i32 1, i32 7)
  store i32 %21, i32* @wt_longstatus_print_unmerged_data.label_width, align 4
  %22 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @wt_longstatus_print_unmerged_data.label_width, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* @wt_longstatus_print_unmerged_data.label_width, align 4
  %27 = load i32, i32* @wt_longstatus_print_unmerged_data.label_width, align 4
  %28 = call i8* @xmallocz(i32 %27)
  store i8* %28, i8** @wt_longstatus_print_unmerged_data.padding, align 8
  %29 = load i8*, i8** @wt_longstatus_print_unmerged_data.padding, align 8
  %30 = load i32, i32* @wt_longstatus_print_unmerged_data.label_width, align 4
  %31 = call i32 @memset(i8* %29, i8 signext 32, i32 %30)
  br label %32

32:                                               ; preds = %20, %2
  %33 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %34 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %37 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @quote_path(i32 %35, i32 %38, %struct.strbuf* %7)
  store i8* %39, i8** %8, align 8
  %40 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %41 = load i32, i32* @WT_STATUS_HEADER, align 4
  %42 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %43 = call i8* @color(i32 %41, %struct.wt_status* %42)
  %44 = call i32 @status_printf(%struct.wt_status* %40, i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %6, align 8
  %46 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @wt_status_unmerged_status_string(i32 %47)
  store i8* %48, i8** %9, align 8
  %49 = load i32, i32* @wt_longstatus_print_unmerged_data.label_width, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @utf8_strwidth(i8* %50)
  %52 = sub nsw i32 %49, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i8*, i8** @wt_longstatus_print_unmerged_data.padding, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @status_printf_more(%struct.wt_status* %53, i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %56, i8* %57, i8* %58)
  %60 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

declare dso_local i8* @color(i32, %struct.wt_status*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @maxwidth(i8* (i32)*, i32, i32) #1

declare dso_local i8* @wt_status_unmerged_status_string(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xmallocz(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i8* @quote_path(i32, i32, %struct.strbuf*) #1

declare dso_local i32 @status_printf(%struct.wt_status*, i8*, i8*) #1

declare dso_local i32 @utf8_strwidth(i8*) #1

declare dso_local i32 @status_printf_more(%struct.wt_status*, i8*, i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
