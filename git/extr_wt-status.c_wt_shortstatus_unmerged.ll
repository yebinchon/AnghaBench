; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_shortstatus_unmerged.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_shortstatus_unmerged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list_item = type { i8*, %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i32 }
%struct.wt_status = type { i32, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"DD\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"UD\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"UA\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"DU\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"UU\00", align 1
@WT_STATUS_UNMERGED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c" %s%c\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list_item*, %struct.wt_status*)* @wt_shortstatus_unmerged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_shortstatus_unmerged(%struct.string_list_item* %0, %struct.wt_status* %1) #0 {
  %3 = alloca %struct.string_list_item*, align 8
  %4 = alloca %struct.wt_status*, align 8
  %5 = alloca %struct.wt_status_change_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i8*, align 8
  store %struct.string_list_item* %0, %struct.string_list_item** %3, align 8
  store %struct.wt_status* %1, %struct.wt_status** %4, align 8
  %9 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %10 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %9, i32 0, i32 1
  %11 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %10, align 8
  store %struct.wt_status_change_data* %11, %struct.wt_status_change_data** %5, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %12 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %13 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %22 [
    i32 1, label %15
    i32 2, label %16
    i32 3, label %17
    i32 4, label %18
    i32 5, label %19
    i32 6, label %20
    i32 7, label %21
  ]

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %22

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %22

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %22

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %22

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %22

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %22

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %22

22:                                               ; preds = %2, %21, %20, %19, %18, %17, %16, %15
  %23 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %24 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @WT_STATUS_UNMERGED, align 4
  %27 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %28 = call i32 @color(i32 %26, %struct.wt_status* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @color_fprintf(i32 %25, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %29)
  %31 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %32 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load i32, i32* @stdout, align 4
  %37 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %38 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %39, i32 0)
  br label %53

41:                                               ; preds = %22
  %42 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %43 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %44 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %47 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @quote_path(i8* %45, i32 %48, %struct.strbuf* %7)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %50)
  %52 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %53

53:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32 @color_fprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @color(i32, %struct.wt_status*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @quote_path(i8*, i32, %struct.strbuf*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
