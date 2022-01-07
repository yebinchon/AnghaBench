; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_do_merge_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_do_merge_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_filter_cbdata = type { %struct.ref_array*, %struct.ref_filter* }
%struct.ref_array = type { i32, %struct.ref_array_item** }
%struct.ref_array_item = type { i8*, %struct.commit* }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ref_filter = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.rev_info = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@REF_FILTER_MERGED_INCLUDE = common dso_local global i64 0, align 8
@ALL_REV_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref_filter_cbdata*)* @do_merge_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_merge_filter(%struct.ref_filter_cbdata* %0) #0 {
  %2 = alloca %struct.ref_filter_cbdata*, align 8
  %3 = alloca %struct.rev_info, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_filter*, align 8
  %7 = alloca %struct.ref_array*, align 8
  %8 = alloca %struct.commit**, align 8
  %9 = alloca %struct.ref_array_item*, align 8
  %10 = alloca %struct.ref_array_item*, align 8
  %11 = alloca %struct.commit*, align 8
  %12 = alloca i32, align 4
  store %struct.ref_filter_cbdata* %0, %struct.ref_filter_cbdata** %2, align 8
  %13 = load %struct.ref_filter_cbdata*, %struct.ref_filter_cbdata** %2, align 8
  %14 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %13, i32 0, i32 1
  %15 = load %struct.ref_filter*, %struct.ref_filter** %14, align 8
  store %struct.ref_filter* %15, %struct.ref_filter** %6, align 8
  %16 = load %struct.ref_filter_cbdata*, %struct.ref_filter_cbdata** %2, align 8
  %17 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %16, i32 0, i32 0
  %18 = load %struct.ref_array*, %struct.ref_array** %17, align 8
  store %struct.ref_array* %18, %struct.ref_array** %7, align 8
  %19 = load %struct.ref_array*, %struct.ref_array** %7, align 8
  %20 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.commit** @xcalloc(i32 8, i32 %21)
  store %struct.commit** %22, %struct.commit*** %8, align 8
  %23 = load i32, i32* @the_repository, align 4
  %24 = call i32 @repo_init_revisions(i32 %23, %struct.rev_info* %3, i32* null)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %54, %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ref_array*, %struct.ref_array** %7, align 8
  %28 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load %struct.ref_array*, %struct.ref_array** %7, align 8
  %33 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %32, i32 0, i32 1
  %34 = load %struct.ref_array_item**, %struct.ref_array_item*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ref_array_item*, %struct.ref_array_item** %34, i64 %36
  %38 = load %struct.ref_array_item*, %struct.ref_array_item** %37, align 8
  store %struct.ref_array_item* %38, %struct.ref_array_item** %9, align 8
  %39 = load %struct.ref_array_item*, %struct.ref_array_item** %9, align 8
  %40 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %39, i32 0, i32 1
  %41 = load %struct.commit*, %struct.commit** %40, align 8
  %42 = getelementptr inbounds %struct.commit, %struct.commit* %41, i32 0, i32 0
  %43 = load %struct.ref_array_item*, %struct.ref_array_item** %9, align 8
  %44 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @add_pending_object(%struct.rev_info* %3, %struct.TYPE_4__* %42, i8* %45)
  %47 = load %struct.ref_array_item*, %struct.ref_array_item** %9, align 8
  %48 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %47, i32 0, i32 1
  %49 = load %struct.commit*, %struct.commit** %48, align 8
  %50 = load %struct.commit**, %struct.commit*** %8, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.commit*, %struct.commit** %50, i64 %52
  store %struct.commit* %49, %struct.commit** %53, align 8
  br label %54

54:                                               ; preds = %31
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %25

57:                                               ; preds = %25
  %58 = load i32, i32* @UNINTERESTING, align 4
  %59 = load %struct.ref_filter*, %struct.ref_filter** %6, align 8
  %60 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %58
  store i32 %65, i32* %63, align 4
  %66 = load %struct.ref_filter*, %struct.ref_filter** %6, align 8
  %67 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @add_pending_object(%struct.rev_info* %3, %struct.TYPE_4__* %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %71 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = call i64 @prepare_revision_walk(%struct.rev_info* %3)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %57
  %75 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @die(i32 %75)
  br label %77

77:                                               ; preds = %74, %57
  %78 = load %struct.ref_array*, %struct.ref_array** %7, align 8
  %79 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %5, align 4
  %81 = load %struct.ref_array*, %struct.ref_array** %7, align 8
  %82 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %137, %77
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %140

87:                                               ; preds = %83
  %88 = load %struct.ref_array*, %struct.ref_array** %7, align 8
  %89 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %88, i32 0, i32 1
  %90 = load %struct.ref_array_item**, %struct.ref_array_item*** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ref_array_item*, %struct.ref_array_item** %90, i64 %92
  %94 = load %struct.ref_array_item*, %struct.ref_array_item** %93, align 8
  store %struct.ref_array_item* %94, %struct.ref_array_item** %10, align 8
  %95 = load %struct.ref_array_item*, %struct.ref_array_item** %10, align 8
  %96 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %95, i32 0, i32 1
  %97 = load %struct.commit*, %struct.commit** %96, align 8
  store %struct.commit* %97, %struct.commit** %11, align 8
  %98 = load %struct.commit*, %struct.commit** %11, align 8
  %99 = getelementptr inbounds %struct.commit, %struct.commit* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @UNINTERESTING, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.ref_filter*, %struct.ref_filter** %6, align 8
  %110 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @REF_FILTER_MERGED_INCLUDE, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = icmp eq i32 %108, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %87
  %117 = load %struct.ref_array*, %struct.ref_array** %7, align 8
  %118 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %117, i32 0, i32 1
  %119 = load %struct.ref_array_item**, %struct.ref_array_item*** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.ref_array_item*, %struct.ref_array_item** %119, i64 %121
  %123 = load %struct.ref_array_item*, %struct.ref_array_item** %122, align 8
  %124 = load %struct.ref_array*, %struct.ref_array** %7, align 8
  %125 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %124, i32 0, i32 1
  %126 = load %struct.ref_array_item**, %struct.ref_array_item*** %125, align 8
  %127 = load %struct.ref_array*, %struct.ref_array** %7, align 8
  %128 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds %struct.ref_array_item*, %struct.ref_array_item** %126, i64 %131
  store %struct.ref_array_item* %123, %struct.ref_array_item** %132, align 8
  br label %136

133:                                              ; preds = %87
  %134 = load %struct.ref_array_item*, %struct.ref_array_item** %10, align 8
  %135 = call i32 @free_array_item(%struct.ref_array_item* %134)
  br label %136

136:                                              ; preds = %133, %116
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %83

140:                                              ; preds = %83
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.commit**, %struct.commit*** %8, align 8
  %143 = load i32, i32* @ALL_REV_FLAGS, align 4
  %144 = call i32 @clear_commit_marks_many(i32 %141, %struct.commit** %142, i32 %143)
  %145 = load %struct.ref_filter*, %struct.ref_filter** %6, align 8
  %146 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %145, i32 0, i32 1
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load i32, i32* @ALL_REV_FLAGS, align 4
  %149 = call i32 @clear_commit_marks(%struct.TYPE_3__* %147, i32 %148)
  %150 = load %struct.commit**, %struct.commit*** %8, align 8
  %151 = call i32 @free(%struct.commit** %150)
  ret void
}

declare dso_local %struct.commit** @xcalloc(i32, i32) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.TYPE_4__*, i8*) #1

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free_array_item(%struct.ref_array_item*) #1

declare dso_local i32 @clear_commit_marks_many(i32, %struct.commit**, i32) #1

declare dso_local i32 @clear_commit_marks(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @free(%struct.commit**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
