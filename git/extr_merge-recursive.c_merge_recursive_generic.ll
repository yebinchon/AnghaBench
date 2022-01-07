; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_recursive_generic.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_recursive_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.merge_options = type { i8*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }
%struct.commit_list = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not parse object '%s'\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"constructed merge base\00", align 1
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@COMMIT_LOCK = common dso_local global i32 0, align 4
@SKIP_IF_UNCHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unable to write index.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_recursive_generic(%struct.merge_options* %0, %struct.object_id* %1, %struct.object_id* %2, i32 %3, %struct.object_id** %4, %struct.commit** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.merge_options*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.object_id**, align 8
  %13 = alloca %struct.commit**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.lock_file, align 4
  %16 = alloca %struct.commit*, align 8
  %17 = alloca %struct.commit*, align 8
  %18 = alloca %struct.commit_list*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.commit*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %8, align 8
  store %struct.object_id* %1, %struct.object_id** %9, align 8
  store %struct.object_id* %2, %struct.object_id** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.object_id** %4, %struct.object_id*** %12, align 8
  store %struct.commit** %5, %struct.commit*** %13, align 8
  %21 = bitcast %struct.lock_file* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %22 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %23 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.object_id*, %struct.object_id** %9, align 8
  %26 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %27 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.commit* @get_ref(%struct.TYPE_3__* %24, %struct.object_id* %25, i32 %28)
  store %struct.commit* %29, %struct.commit** %16, align 8
  %30 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %31 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load %struct.object_id*, %struct.object_id** %10, align 8
  %34 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %35 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.commit* @get_ref(%struct.TYPE_3__* %32, %struct.object_id* %33, i32 %36)
  store %struct.commit* %37, %struct.commit** %17, align 8
  store %struct.commit_list* null, %struct.commit_list** %18, align 8
  %38 = load %struct.object_id**, %struct.object_id*** %12, align 8
  %39 = icmp ne %struct.object_id** %38, null
  br i1 %39, label %40, label %85

40:                                               ; preds = %6
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %75, %40
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %47 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.object_id**, %struct.object_id*** %12, align 8
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.object_id*, %struct.object_id** %49, i64 %51
  %53 = load %struct.object_id*, %struct.object_id** %52, align 8
  %54 = load %struct.object_id**, %struct.object_id*** %12, align 8
  %55 = load i32, i32* %19, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.object_id*, %struct.object_id** %54, i64 %56
  %58 = load %struct.object_id*, %struct.object_id** %57, align 8
  %59 = call i32 @oid_to_hex(%struct.object_id* %58)
  %60 = call %struct.commit* @get_ref(%struct.TYPE_3__* %48, %struct.object_id* %53, i32 %59)
  store %struct.commit* %60, %struct.commit** %20, align 8
  %61 = icmp ne %struct.commit* %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %45
  %63 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %64 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.object_id**, %struct.object_id*** %12, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.object_id*, %struct.object_id** %65, i64 %67
  %69 = load %struct.object_id*, %struct.object_id** %68, align 8
  %70 = call i32 @oid_to_hex(%struct.object_id* %69)
  %71 = call i32 (%struct.merge_options*, i32, ...) @err(%struct.merge_options* %63, i32 %64, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %122

72:                                               ; preds = %45
  %73 = load %struct.commit*, %struct.commit** %20, align 8
  %74 = call i32 @commit_list_insert(%struct.commit* %73, %struct.commit_list** %18)
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %19, align 4
  br label %41

78:                                               ; preds = %41
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %83 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %82, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %6
  %86 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %87 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %90 = call i32 @repo_hold_locked_index(%struct.TYPE_3__* %88, %struct.lock_file* %15, i32 %89)
  %91 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %92 = load %struct.commit*, %struct.commit** %16, align 8
  %93 = load %struct.commit*, %struct.commit** %17, align 8
  %94 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %95 = load %struct.commit**, %struct.commit*** %13, align 8
  %96 = call i32 @merge_recursive(%struct.merge_options* %91, %struct.commit* %92, %struct.commit* %93, %struct.commit_list* %94, %struct.commit** %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %85
  %100 = call i32 @rollback_lock_file(%struct.lock_file* %15)
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %7, align 4
  br label %122

102:                                              ; preds = %85
  %103 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %104 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @COMMIT_LOCK, align 4
  %109 = load i32, i32* @SKIP_IF_UNCHANGED, align 4
  %110 = or i32 %108, %109
  %111 = call i64 @write_locked_index(i32 %107, %struct.lock_file* %15, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %102
  %114 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %115 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %116 = call i32 (%struct.merge_options*, i32, ...) @err(%struct.merge_options* %114, i32 %115)
  store i32 %116, i32* %7, align 4
  br label %122

117:                                              ; preds = %102
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 0, i32 1
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %117, %113, %99, %62
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.commit* @get_ref(%struct.TYPE_3__*, %struct.object_id*, i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @err(%struct.merge_options*, i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #2

declare dso_local i32 @repo_hold_locked_index(%struct.TYPE_3__*, %struct.lock_file*, i32) #2

declare dso_local i32 @merge_recursive(%struct.merge_options*, %struct.commit*, %struct.commit*, %struct.commit_list*, %struct.commit**) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i64 @write_locked_index(i32, %struct.lock_file*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
