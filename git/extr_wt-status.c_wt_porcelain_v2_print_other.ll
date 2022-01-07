; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_print_other.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_print_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list_item = type { i8* }
%struct.wt_status = type { i32, i32, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"%c %s%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list_item*, %struct.wt_status*, i8)* @wt_porcelain_v2_print_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_porcelain_v2_print_other(%struct.string_list_item* %0, %struct.wt_status* %1, i8 signext %2) #0 {
  %4 = alloca %struct.string_list_item*, align 8
  %5 = alloca %struct.wt_status*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store %struct.string_list_item* %0, %struct.string_list_item** %4, align 8
  store %struct.wt_status* %1, %struct.wt_status** %5, align 8
  store i8 %2, i8* %6, align 1
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load %struct.wt_status*, %struct.wt_status** %5, align 8
  %12 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %17 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  store i8 0, i8* %9, align 1
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %21 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.wt_status*, %struct.wt_status** %5, align 8
  %24 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @quote_path(i8* %22, i32 %25, %struct.strbuf* %7)
  store i8* %26, i8** %8, align 8
  store i8 10, i8* %9, align 1
  br label %27

27:                                               ; preds = %19, %15
  %28 = load %struct.wt_status*, %struct.wt_status** %5, align 8
  %29 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i8, i8* %6, align 1
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %9, align 1
  %34 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %31, i8* %32, i8 signext %33)
  %35 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @quote_path(i8*, i32, %struct.strbuf*) #2

declare dso_local i32 @fprintf(i32, i8*, i8 signext, i8*, i8 signext) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
