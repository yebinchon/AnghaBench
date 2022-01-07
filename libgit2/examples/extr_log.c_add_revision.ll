; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_log.c_add_revision.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_log.c_add_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_state = type { i32 }
%struct.TYPE_3__ = type { i32, i32*, i32* }

@GIT_REVPARSE_SINGLE = common dso_local global i32 0, align 4
@GIT_REVPARSE_MERGE_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Could not find merge base\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not find merge base commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.log_state*, i8*)* @add_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_revision(%struct.log_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.log_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.log_state* %0, %struct.log_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.log_state*, %struct.log_state** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @push_rev(%struct.log_state* %12, i32* null, i32 %13)
  store i32 0, i32* %3, align 4
  br label %104

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 94
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load i32, i32* @GIT_REVPARSE_SINGLE, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %28 = load %struct.log_state*, %struct.log_state** %4, align 8
  %29 = getelementptr inbounds %struct.log_state, %struct.log_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i64 @git_revparse_single(i32** %27, i32 %30, i8* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %104

36:                                               ; preds = %20
  br label %46

37:                                               ; preds = %15
  %38 = load %struct.log_state*, %struct.log_state** %4, align 8
  %39 = getelementptr inbounds %struct.log_state, %struct.log_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @git_revparse(%struct.TYPE_3__* %6, i32 %40, i8* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %104

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %36
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GIT_REVPARSE_SINGLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.log_state*, %struct.log_state** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @push_rev(%struct.log_state* %53, i32* %55, i32 %56)
  br label %103

58:                                               ; preds = %46
  %59 = load %struct.log_state*, %struct.log_state** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @push_rev(%struct.log_state* %59, i32* %61, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @GIT_REVPARSE_MERGE_BASE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %58
  %70 = load %struct.log_state*, %struct.log_state** %4, align 8
  %71 = getelementptr inbounds %struct.log_state, %struct.log_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @git_object_id(i32* %74)
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @git_object_id(i32* %77)
  %79 = call i32 @git_merge_base(i32* %8, i32 %72, i32 %75, i32 %78)
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @check_lg2(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %83 = load %struct.log_state*, %struct.log_state** %4, align 8
  %84 = getelementptr inbounds %struct.log_state, %struct.log_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %87 = call i32 @git_object_lookup(i32** %82, i32 %85, i32* %8, i32 %86)
  %88 = call i32 @check_lg2(i32 %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* null)
  %89 = load %struct.log_state*, %struct.log_state** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @push_rev(%struct.log_state* %89, i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %69, %58
  %95 = load %struct.log_state*, %struct.log_state** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @push_rev(%struct.log_state* %95, i32* %97, i32 %101)
  br label %103

103:                                              ; preds = %94, %52
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %44, %35, %11
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @push_rev(%struct.log_state*, i32*, i32) #1

declare dso_local i64 @git_revparse_single(i32**, i32, i8*) #1

declare dso_local i64 @git_revparse(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i32 @check_lg2(i32, i8*, i8*) #1

declare dso_local i32 @git_merge_base(i32*, i32, i32, i32) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
