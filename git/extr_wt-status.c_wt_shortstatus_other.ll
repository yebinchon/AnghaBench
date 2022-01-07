; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_shortstatus_other.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_shortstatus_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list_item = type { i8* }
%struct.wt_status = type { i32, i32, i64 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s %s%c\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@WT_STATUS_UNTRACKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list_item*, %struct.wt_status*, i8*)* @wt_shortstatus_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_shortstatus_other(%struct.string_list_item* %0, %struct.wt_status* %1, i8* %2) #0 {
  %4 = alloca %struct.string_list_item*, align 8
  %5 = alloca %struct.wt_status*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i8*, align 8
  store %struct.string_list_item* %0, %struct.string_list_item** %4, align 8
  store %struct.wt_status* %1, %struct.wt_status** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.wt_status*, %struct.wt_status** %5, align 8
  %10 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* @stdout, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %17 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %18, i32 0)
  br label %40

20:                                               ; preds = %3
  %21 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %22 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %23 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.wt_status*, %struct.wt_status** %5, align 8
  %26 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @quote_path(i8* %24, i32 %27, %struct.strbuf* %7)
  store i8* %28, i8** %8, align 8
  %29 = load %struct.wt_status*, %struct.wt_status** %5, align 8
  %30 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @WT_STATUS_UNTRACKED, align 4
  %33 = load %struct.wt_status*, %struct.wt_status** %5, align 8
  %34 = call i32 @color(i32 %32, %struct.wt_status* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @color_fprintf(i32 %31, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %40

40:                                               ; preds = %20, %13
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @quote_path(i8*, i32, %struct.strbuf*) #1

declare dso_local i32 @color_fprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @color(i32, %struct.wt_status*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
