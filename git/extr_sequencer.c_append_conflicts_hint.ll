; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_append_conflicts_hint.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_append_conflicts_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }
%struct.strbuf = type { i32 }

@COMMIT_MSG_CLEANUP_SCISSORS = common dso_local global i32 0, align 4
@comment_line_char = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [12 x i8] c"Conflicts:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @append_conflicts_hint(%struct.index_state* %0, %struct.strbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @COMMIT_MSG_CLEANUP_SCISSORS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %14 = call i32 @strbuf_addch(%struct.strbuf* %13, i8 signext 10)
  %15 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %16 = call i32 @wt_status_append_cut_line(%struct.strbuf* %15)
  %17 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %18 = load i8, i8* @comment_line_char, align 1
  %19 = call i32 @strbuf_addch(%struct.strbuf* %17, i8 signext %18)
  br label %20

20:                                               ; preds = %12, %3
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = call i32 @strbuf_addch(%struct.strbuf* %21, i8 signext 10)
  %23 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %24 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_commented_addf(%struct.strbuf* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %77, %20
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.index_state*, %struct.index_state** %4, align 8
  %28 = getelementptr inbounds %struct.index_state, %struct.index_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %25
  %32 = load %struct.index_state*, %struct.index_state** %4, align 8
  %33 = getelementptr inbounds %struct.index_state, %struct.index_state* %32, i32 0, i32 1
  %34 = load %struct.cache_entry**, %struct.cache_entry*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %34, i64 %37
  %39 = load %struct.cache_entry*, %struct.cache_entry** %38, align 8
  store %struct.cache_entry* %39, %struct.cache_entry** %8, align 8
  %40 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %41 = call i64 @ce_stage(%struct.cache_entry* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %31
  %44 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %45 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_commented_addf(%struct.strbuf* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %73, %43
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.index_state*, %struct.index_state** %4, align 8
  %52 = getelementptr inbounds %struct.index_state, %struct.index_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %57 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.index_state*, %struct.index_state** %4, align 8
  %60 = getelementptr inbounds %struct.index_state, %struct.index_state* %59, i32 0, i32 1
  %61 = load %struct.cache_entry**, %struct.cache_entry*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %61, i64 %63
  %65 = load %struct.cache_entry*, %struct.cache_entry** %64, align 8
  %66 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcmp(i32 %58, i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %55, %49
  %72 = phi i1 [ false, %49 ], [ %70, %55 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %49

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %31
  br label %25

78:                                               ; preds = %25
  ret void
}

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @wt_status_append_cut_line(%struct.strbuf*) #1

declare dso_local i32 @strbuf_commented_addf(%struct.strbuf*, i8*, ...) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
