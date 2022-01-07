; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__case_matters.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__case_matters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"DIFFERS-IN-CASE.TXT\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Differs-In-Case.txt\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@GIT_INDEX_STAGE_ANCESTOR = common dso_local global i32 0, align 4
@CONFLICTS_ONE_ANCESTOR_OID = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i8* null, align 8
@GIT_INDEX_STAGE_OURS = common dso_local global i32 0, align 4
@CONFLICTS_ONE_OUR_OID = common dso_local global i32 0, align 4
@GIT_INDEX_STAGE_THEIRS = common dso_local global i32 0, align 4
@CONFLICTS_ONE_THEIR_OID = common dso_local global i32 0, align 4
@repo_index = common dso_local global i32 0, align 4
@CONFLICTS_TWO_ANCESTOR_OID = common dso_local global i32 0, align 4
@CONFLICTS_TWO_OUR_OID = common dso_local global i32 0, align 4
@CONFLICTS_TWO_THEIR_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_conflicts__case_matters() #0 {
  %1 = alloca [3 x %struct.TYPE_10__*], align 16
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %10 = load i32, i32* @repo, align 4
  %11 = call i32 @cl_repo_get_bool(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = call i32 @memset(%struct.TYPE_10__* %7, i32 0, i32 24)
  %13 = call i32 @memset(%struct.TYPE_10__* %8, i32 0, i32 24)
  %14 = call i32 @memset(%struct.TYPE_10__* %9, i32 0, i32 24)
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @GIT_INDEX_STAGE_ANCESTOR, align 4
  %18 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_10__* %7, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %20 = load i32, i32* @CONFLICTS_ONE_ANCESTOR_OID, align 4
  %21 = call i32 @git_oid_fromstr(i32* %19, i32 %20)
  %22 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @GIT_INDEX_STAGE_OURS, align 4
  %27 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_10__* %8, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %29 = load i32, i32* @CONFLICTS_ONE_OUR_OID, align 4
  %30 = call i32 @git_oid_fromstr(i32* %28, i32 %29)
  %31 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @GIT_INDEX_STAGE_THEIRS, align 4
  %36 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_10__* %9, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %38 = load i32, i32* @CONFLICTS_ONE_THEIR_OID, align 4
  %39 = call i32 @git_oid_fromstr(i32* %37, i32 %38)
  %40 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* @repo_index, align 4
  %43 = call i32 @git_index_conflict_add(i32 %42, %struct.TYPE_10__* %7, %struct.TYPE_10__* %8, %struct.TYPE_10__* %9)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @GIT_INDEX_STAGE_ANCESTOR, align 4
  %48 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_10__* %7, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %50 = load i32, i32* @CONFLICTS_TWO_ANCESTOR_OID, align 4
  %51 = call i32 @git_oid_fromstr(i32* %49, i32 %50)
  %52 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* @GIT_INDEX_STAGE_ANCESTOR, align 4
  %57 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_10__* %7, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %59 = load i32, i32* @CONFLICTS_TWO_OUR_OID, align 4
  %60 = call i32 @git_oid_fromstr(i32* %58, i32 %59)
  %61 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* @GIT_INDEX_STAGE_THEIRS, align 4
  %66 = call i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_10__* %9, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %68 = load i32, i32* @CONFLICTS_TWO_THEIR_OID, align 4
  %69 = call i32 @git_oid_fromstr(i32* %67, i32 %68)
  %70 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* @repo_index, align 4
  %73 = call i32 @git_index_conflict_add(i32 %72, %struct.TYPE_10__* %7, %struct.TYPE_10__* %8, %struct.TYPE_10__* %9)
  %74 = call i32 @cl_git_pass(i32 %73)
  %75 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 0
  %76 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 1
  %77 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 2
  %78 = load i32, i32* @repo_index, align 4
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 @git_index_conflict_get(%struct.TYPE_10__** %75, %struct.TYPE_10__** %76, %struct.TYPE_10__** %77, i32 %78, i8* %79)
  %81 = call i32 @cl_git_pass(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %0
  %85 = load i8*, i8** %4, align 8
  store i8* %85, i8** %5, align 8
  br label %88

86:                                               ; preds = %0
  %87 = load i8*, i8** %3, align 8
  store i8* %87, i8** %5, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 16
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @cl_assert_equal_s(i8* %89, i8* %93)
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @CONFLICTS_TWO_ANCESTOR_OID, align 4
  br label %101

99:                                               ; preds = %88
  %100 = load i32, i32* @CONFLICTS_ONE_ANCESTOR_OID, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = call i32 @git_oid_fromstr(i32* %2, i32 %102)
  %104 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 16
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = call i32 @cl_assert_equal_oid(i32* %2, i32* %106)
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @cl_assert_equal_s(i8* %108, i8* %112)
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = load i32, i32* @CONFLICTS_TWO_OUR_OID, align 4
  br label %120

118:                                              ; preds = %101
  %119 = load i32, i32* @CONFLICTS_ONE_OUR_OID, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = call i32 @git_oid_fromstr(i32* %2, i32 %121)
  %123 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = call i32 @cl_assert_equal_oid(i32* %2, i32* %125)
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 2
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 16
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @cl_assert_equal_s(i8* %127, i8* %131)
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %120
  %136 = load i32, i32* @CONFLICTS_TWO_THEIR_OID, align 4
  br label %139

137:                                              ; preds = %120
  %138 = load i32, i32* @CONFLICTS_ONE_THEIR_OID, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  %141 = call i32 @git_oid_fromstr(i32* %2, i32 %140)
  %142 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 2
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 16
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = call i32 @cl_assert_equal_oid(i32* %2, i32* %144)
  %146 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 0
  %147 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 1
  %148 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 2
  %149 = load i32, i32* @repo_index, align 4
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 @git_index_conflict_get(%struct.TYPE_10__** %146, %struct.TYPE_10__** %147, %struct.TYPE_10__** %148, i32 %149, i8* %150)
  %152 = call i32 @cl_git_pass(i32 %151)
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 0
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 16
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @cl_assert_equal_s(i8* %153, i8* %157)
  %159 = load i32, i32* @CONFLICTS_TWO_ANCESTOR_OID, align 4
  %160 = call i32 @git_oid_fromstr(i32* %2, i32 %159)
  %161 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 16
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = call i32 @cl_assert_equal_oid(i32* %2, i32* %163)
  %165 = load i8*, i8** %4, align 8
  %166 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 1
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @cl_assert_equal_s(i8* %165, i8* %169)
  %171 = load i32, i32* @CONFLICTS_TWO_OUR_OID, align 4
  %172 = call i32 @git_oid_fromstr(i32* %2, i32 %171)
  %173 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 1
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = call i32 @cl_assert_equal_oid(i32* %2, i32* %175)
  %177 = load i8*, i8** %4, align 8
  %178 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 2
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 16
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @cl_assert_equal_s(i8* %177, i8* %181)
  %183 = load i32, i32* @CONFLICTS_TWO_THEIR_OID, align 4
  %184 = call i32 @git_oid_fromstr(i32* %2, i32 %183)
  %185 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %1, i64 0, i64 2
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 16
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = call i32 @cl_assert_equal_oid(i32* %2, i32* %187)
  ret void
}

declare dso_local i32 @cl_repo_get_bool(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE_SET(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_conflict_add(i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @git_index_conflict_get(%struct.TYPE_10__**, %struct.TYPE_10__**, %struct.TYPE_10__**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
