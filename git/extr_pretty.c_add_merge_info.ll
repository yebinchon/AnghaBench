; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_add_merge_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_add_merge_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pretty_print_context = type { i64, i32 }
%struct.strbuf = type { i32 }
%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.object_id }
%struct.object_id = type { i32 }

@CMIT_FMT_ONELINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Merge:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pretty_print_context*, %struct.strbuf*, %struct.commit*)* @add_merge_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_merge_info(%struct.pretty_print_context* %0, %struct.strbuf* %1, %struct.commit* %2) #0 {
  %4 = alloca %struct.pretty_print_context*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.object_id*, align 8
  store %struct.pretty_print_context* %0, %struct.pretty_print_context** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store %struct.commit* %2, %struct.commit** %6, align 8
  %9 = load %struct.commit*, %struct.commit** %6, align 8
  %10 = getelementptr inbounds %struct.commit, %struct.commit* %9, i32 0, i32 0
  %11 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %11, %struct.commit_list** %7, align 8
  %12 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %13 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CMIT_FMT_ONELINE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %31, label %17

17:                                               ; preds = %3
  %18 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %19 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @cmit_fmt_is_mail(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %25 = icmp ne %struct.commit_list* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %28 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %27, i32 0, i32 0
  %29 = load %struct.commit_list*, %struct.commit_list** %28, align 8
  %30 = icmp ne %struct.commit_list* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %23, %17, %3
  br label %69

32:                                               ; preds = %26
  %33 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %34 = call i32 @strbuf_addstr(%struct.strbuf* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %62, %32
  %36 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %37 = icmp ne %struct.commit_list* %36, null
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %40 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.object_id* %43, %struct.object_id** %8, align 8
  %44 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %45 = call i32 @strbuf_addch(%struct.strbuf* %44, i8 signext 32)
  %46 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %47 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %52 = load %struct.object_id*, %struct.object_id** %8, align 8
  %53 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %54 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %51, %struct.object_id* %52, i32 %55)
  br label %62

57:                                               ; preds = %38
  %58 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %59 = load %struct.object_id*, %struct.object_id** %8, align 8
  %60 = call i8* @oid_to_hex(%struct.object_id* %59)
  %61 = call i32 @strbuf_addstr(%struct.strbuf* %58, i8* %60)
  br label %62

62:                                               ; preds = %57, %50
  %63 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %64 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %63, i32 0, i32 0
  %65 = load %struct.commit_list*, %struct.commit_list** %64, align 8
  store %struct.commit_list* %65, %struct.commit_list** %7, align 8
  br label %35

66:                                               ; preds = %35
  %67 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %68 = call i32 @strbuf_addch(%struct.strbuf* %67, i8 signext 10)
  br label %69

69:                                               ; preds = %66, %31
  ret void
}

declare dso_local i64 @cmit_fmt_is_mail(i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_add_unique_abbrev(%struct.strbuf*, %struct.object_id*, i32) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
