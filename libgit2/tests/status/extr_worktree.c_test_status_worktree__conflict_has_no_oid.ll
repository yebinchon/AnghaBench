; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__conflict_has_no_oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__conflict_has_no_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i8*, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, %struct.TYPE_24__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"modified_file\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"452e4244b5d083ddf0460acf1ecc74db9dcfa11a\00", align 1
@GIT_STATUS_CONFLICTED = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG_VALID_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__conflict_has_no_oid() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_19__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %1, align 8
  %8 = bitcast %struct.TYPE_19__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = bitcast %struct.TYPE_18__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  store i32 33188, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 2
  %13 = call i32 @git_oid_fromstr(i32* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_repository_index(i32** %2, i32* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_index_conflict_add(i32* %17, %struct.TYPE_19__* %3, %struct.TYPE_19__* %3, %struct.TYPE_19__* %3)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_status_list_new(i32** %4, i32* %20, i32* null)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @git_status_list_entrycount(i32* %22)
  %24 = call i32 @cl_assert_equal_i(i32 16, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call %struct.TYPE_28__* @git_status_byindex(i32* %25, i32 2)
  store %struct.TYPE_28__* %26, %struct.TYPE_28__** %5, align 8
  %27 = load i32, i32* @GIT_STATUS_CONFLICTED, align 4
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @cl_assert_equal_i(i32 %27, i32 %30)
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = call i32 @git_oid_equal(%struct.TYPE_18__* %6, i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 0, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @cl_assert(i32 %56)
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 2
  %70 = call i32 @cl_assert_equal_oid(%struct.TYPE_18__* %6, i32* %69)
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cl_assert_equal_i(i32 0, i32 %76)
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @cl_assert_equal_i(i32 0, i32 %83)
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 2
  %97 = call i32 @cl_assert_equal_oid(%struct.TYPE_18__* %6, i32* %96)
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cl_assert_equal_i(i32 0, i32 %103)
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @cl_assert_equal_i(i32 0, i32 %110)
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 3
  %124 = call i32 @git_oid_equal(%struct.TYPE_18__* %6, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %0
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br label %137

137:                                              ; preds = %126, %0
  %138 = phi i1 [ true, %0 ], [ %136, %126 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 @cl_assert(i32 %139)
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 0, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @cl_assert(i32 %148)
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 0, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @cl_assert(i32 %157)
  %159 = load i32*, i32** %2, align 8
  %160 = call i32 @git_index_free(i32* %159)
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @git_status_list_free(i32* %161)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_conflict_add(i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @git_status_list_new(i32**, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_status_list_entrycount(i32*) #1

declare dso_local %struct.TYPE_28__* @git_status_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oid_equal(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @cl_assert_equal_oid(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_status_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
