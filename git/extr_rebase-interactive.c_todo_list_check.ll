; ModuleID = '/home/carl/AnghaBench/git/extr_rebase-interactive.c_todo_list_check.c'
source_filename = "/home/carl/AnghaBench/git/extr_rebase-interactive.c_todo_list_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.todo_list = type { i32, %struct.todo_item* }
%struct.todo_item = type { i32, %struct.commit* }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.commit_seen = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@MISSING_COMMIT_CHECK_IGNORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c" - %s %.*s\0A\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@MISSING_COMMIT_CHECK_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [93 x i8] c"Warning: some commits may have been dropped accidentally.\0ADropped commits (newer to older):\0A\00", align 1
@.str.2 = private unnamed_addr constant [195 x i8] c"To avoid this message, use \22drop\22 to explicitly remove a commit.\0A\0AUse 'git config rebase.missingCommitsCheck' to change the level of warnings.\0AThe possible behaviours are: ignore, warn, error.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @todo_list_check(%struct.todo_list* %0, %struct.todo_list* %1) #0 {
  %3 = alloca %struct.todo_list*, align 8
  %4 = alloca %struct.todo_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit_seen, align 4
  %10 = alloca %struct.commit*, align 8
  %11 = alloca %struct.todo_item*, align 8
  %12 = alloca %struct.commit*, align 8
  store %struct.todo_list* %0, %struct.todo_list** %3, align 8
  store %struct.todo_list* %1, %struct.todo_list** %4, align 8
  %13 = call i32 (...) @get_missing_commit_check_level()
  store i32 %13, i32* %5, align 4
  %14 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %7, align 4
  %15 = call i32 @init_commit_seen(%struct.commit_seen* %9)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MISSING_COMMIT_CHECK_IGNORE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %111

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %42, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %24 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %29 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %28, i32 0, i32 1
  %30 = load %struct.todo_item*, %struct.todo_item** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %30, i64 %32
  %34 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %33, i32 0, i32 1
  %35 = load %struct.commit*, %struct.commit** %34, align 8
  store %struct.commit* %35, %struct.commit** %10, align 8
  %36 = load %struct.commit*, %struct.commit** %10, align 8
  %37 = icmp ne %struct.commit* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load %struct.commit*, %struct.commit** %10, align 8
  %40 = call i32* @commit_seen_at(%struct.commit_seen* %9, %struct.commit* %39)
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %21

45:                                               ; preds = %21
  %46 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %47 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %86, %45
  %51 = load i32, i32* %8, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %50
  %54 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %55 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %54, i32 0, i32 1
  %56 = load %struct.todo_item*, %struct.todo_item** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %56, i64 %58
  store %struct.todo_item* %59, %struct.todo_item** %11, align 8
  %60 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %61 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %60, i32 0, i32 1
  %62 = load %struct.commit*, %struct.commit** %61, align 8
  store %struct.commit* %62, %struct.commit** %12, align 8
  %63 = load %struct.commit*, %struct.commit** %12, align 8
  %64 = icmp ne %struct.commit* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %53
  %66 = load %struct.commit*, %struct.commit** %12, align 8
  %67 = call i32* @commit_seen_at(%struct.commit_seen* %9, %struct.commit* %66)
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %65
  %71 = load %struct.commit*, %struct.commit** %12, align 8
  %72 = getelementptr inbounds %struct.commit, %struct.commit* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* @DEFAULT_ABBREV, align 4
  %75 = call i32 @find_unique_abbrev(i32* %73, i32 %74)
  %76 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %77 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.todo_list*, %struct.todo_list** %3, align 8
  %80 = load %struct.todo_item*, %struct.todo_item** %11, align 8
  %81 = call i32 @todo_item_get_arg(%struct.todo_list* %79, %struct.todo_item* %80)
  %82 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78, i32 %81)
  %83 = load %struct.commit*, %struct.commit** %12, align 8
  %84 = call i32* @commit_seen_at(%struct.commit_seen* %9, %struct.commit* %83)
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %70, %65, %53
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %8, align 4
  br label %50

89:                                               ; preds = %50
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  br label %111

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @MISSING_COMMIT_CHECK_ERROR, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i32, i32* @stderr, align 4
  %101 = call i8* @_(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0))
  %102 = call i32 @fprintf(i32 %100, i8* %101)
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 @fputs(i32 %104, i32 %105)
  %107 = call i32 @strbuf_release(%struct.strbuf* %6)
  %108 = load i32, i32* @stderr, align 4
  %109 = call i8* @_(i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.2, i64 0, i64 0))
  %110 = call i32 @fprintf(i32 %108, i8* %109)
  br label %111

111:                                              ; preds = %99, %93, %19
  %112 = call i32 @clear_commit_seen(%struct.commit_seen* %9)
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @get_missing_commit_check_level(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_commit_seen(%struct.commit_seen*) #1

declare dso_local i32* @commit_seen_at(%struct.commit_seen*, %struct.commit*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32, i32) #1

declare dso_local i32 @find_unique_abbrev(i32*, i32) #1

declare dso_local i32 @todo_item_get_arg(%struct.todo_list*, %struct.todo_item*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @clear_commit_seen(%struct.commit_seen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
