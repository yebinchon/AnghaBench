; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_get_detached_from.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_get_detached_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.wt_status_state = type { i32, %struct.object_id, i8* }
%struct.object_id = type { i32 }
%struct.grab_1st_switch_cbdata = type { %struct.TYPE_5__, %struct.object_id }
%struct.TYPE_5__ = type { i32, i32 }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.object_id }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@grab_1st_switch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.wt_status_state*)* @wt_status_get_detached_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_status_get_detached_from(%struct.repository* %0, %struct.wt_status_state* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.wt_status_state*, align 8
  %5 = alloca %struct.grab_1st_switch_cbdata, align 4
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.object_id, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.wt_status_state* %1, %struct.wt_status_state** %4, align 8
  store i8* null, i8** %8, align 8
  %10 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %5, i32 0, i32 0
  %11 = call i32 @strbuf_init(%struct.TYPE_5__* %10, i32 0)
  %12 = load i32, i32* @grab_1st_switch, align 4
  %13 = call i64 @for_each_reflog_ent_reverse(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12, %struct.grab_1st_switch_cbdata* %5)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %5, i32 0, i32 0
  %17 = call i32 @strbuf_release(%struct.TYPE_5__* %16)
  br label %83

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %5, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dwim_ref(i32 %21, i32 %24, %struct.object_id* %7, i8** %8)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %55

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %5, i32 0, i32 1
  %29 = call i64 @oideq(%struct.object_id* %28, %struct.object_id* %7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load %struct.repository*, %struct.repository** %3, align 8
  %33 = call %struct.commit* @lookup_commit_reference_gently(%struct.repository* %32, %struct.object_id* %7, i32 1)
  store %struct.commit* %33, %struct.commit** %6, align 8
  %34 = icmp ne %struct.commit* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %5, i32 0, i32 1
  %37 = load %struct.commit*, %struct.commit** %6, align 8
  %38 = getelementptr inbounds %struct.commit, %struct.commit* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i64 @oideq(%struct.object_id* %36, %struct.object_id* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35, %27
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @skip_prefix(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @skip_prefix(i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i8*, i8** %9, align 8
  %52 = call i8* @xstrdup(i8* %51)
  %53 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %54 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %62

55:                                               ; preds = %35, %31, %18
  %56 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %5, i32 0, i32 1
  %57 = load i32, i32* @DEFAULT_ABBREV, align 4
  %58 = call i8* @find_unique_abbrev(%struct.object_id* %56, i32 %57)
  %59 = call i8* @xstrdup(i8* %58)
  %60 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %61 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %64 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %5, i32 0, i32 1
  %66 = call i32 @oidcpy(%struct.object_id* %64, %struct.object_id* %65)
  %67 = call i32 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %7)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %71 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %70, i32 0, i32 1
  %72 = call i64 @oideq(%struct.object_id* %7, %struct.object_id* %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %69, %62
  %75 = phi i1 [ false, %62 ], [ %73, %69 ]
  %76 = zext i1 %75 to i32
  %77 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %78 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @free(i8* %79)
  %81 = getelementptr inbounds %struct.grab_1st_switch_cbdata, %struct.grab_1st_switch_cbdata* %5, i32 0, i32 0
  %82 = call i32 @strbuf_release(%struct.TYPE_5__* %81)
  br label %83

83:                                               ; preds = %74, %15
  ret void
}

declare dso_local i32 @strbuf_init(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @for_each_reflog_ent_reverse(i8*, i32, %struct.grab_1st_switch_cbdata*) #1

declare dso_local i32 @strbuf_release(%struct.TYPE_5__*) #1

declare dso_local i32 @dwim_ref(i32, i32, %struct.object_id*, i8**) #1

declare dso_local i64 @oideq(%struct.object_id*, %struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_reference_gently(%struct.repository*, %struct.object_id*, i32) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @find_unique_abbrev(%struct.object_id*, i32) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
