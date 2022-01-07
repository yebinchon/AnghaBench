; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_get_head_description.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_get_head_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.wt_status_state = type { i64, i64, i64, i64, i64, i64, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no branch, rebasing %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"no branch, rebasing detached HEAD %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"no branch, bisect started on %s\00", align 1
@HEAD_DETACHED_AT = common dso_local global i64 0, align 8
@HEAD_DETACHED_FROM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"no branch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_head_description() #0 {
  %1 = alloca %struct.strbuf, align 4
  %2 = alloca %struct.wt_status_state, align 8
  %3 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %4 = call i32 @memset(%struct.wt_status_state* %2, i32 0, i32 56)
  %5 = load i32, i32* @the_repository, align 4
  %6 = call i32 @wt_status_get_state(i32 %5, %struct.wt_status_state* %2, i32 1)
  %7 = call i32 @strbuf_addch(%struct.strbuf* %1, i8 signext 40)
  %8 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11, %0
  %16 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = call i64 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @strbuf_addf(%struct.strbuf* %1, i64 %20, i64 %22)
  br label %29

24:                                               ; preds = %15
  %25 = call i64 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @strbuf_addf(%struct.strbuf* %1, i64 %25, i64 %27)
  br label %29

29:                                               ; preds = %24, %19
  br label %62

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = call i64 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @strbuf_addf(%struct.strbuf* %1, i64 %35, i64 %37)
  br label %61

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* @HEAD_DETACHED_AT, align 8
  %49 = call i32 @strbuf_addstr(%struct.strbuf* %1, i64 %48)
  br label %53

50:                                               ; preds = %43
  %51 = load i64, i64* @HEAD_DETACHED_FROM, align 8
  %52 = call i32 @strbuf_addstr(%struct.strbuf* %1, i64 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @strbuf_addstr(%struct.strbuf* %1, i64 %55)
  br label %60

57:                                               ; preds = %39
  %58 = call i64 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 @strbuf_addstr(%struct.strbuf* %1, i64 %58)
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %34
  br label %62

62:                                               ; preds = %61, %29
  %63 = call i32 @strbuf_addch(%struct.strbuf* %1, i8 signext 41)
  %64 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @free(i64 %65)
  %67 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @free(i64 %68)
  %70 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %2, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @free(i64 %71)
  %73 = call i8* @strbuf_detach(%struct.strbuf* %1, i32* null)
  ret i8* %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.wt_status_state*, i32, i32) #2

declare dso_local i32 @wt_status_get_state(i32, %struct.wt_status_state*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i64, i64) #2

declare dso_local i64 @_(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i64) #2

declare dso_local i32 @free(i64) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
