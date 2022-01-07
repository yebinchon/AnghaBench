; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_rerere_gc.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_rerere_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.repository = type { i32 }
%struct.dirent = type { i32 }
%struct.rerere_dir = type { i64, i64* }
%struct.rerere_id = type { i64, %struct.rerere_dir* }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"gc.rerereresolved\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gc.rerereunresolved\00", align 1
@git_default_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"rr-cache\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"unable to open rr-cache directory\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rr-cache/%s\00", align 1
@write_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rerere_gc(%struct.repository* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.string_list, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rerere_dir*, align 8
  %13 = alloca %struct.rerere_id, align 8
  %14 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %15 = bitcast %struct.string_list* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %16 = call i64 @time(i32* null)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = sub nsw i64 %17, 1296000
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = sub nsw i64 %19, 5184000
  store i64 %20, i64* %11, align 8
  %21 = load %struct.repository*, %struct.repository** %3, align 8
  %22 = load %struct.string_list*, %struct.string_list** %4, align 8
  %23 = call i64 @setup_rerere(%struct.repository* %21, %struct.string_list* %22, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %124

26:                                               ; preds = %2
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @git_config_get_expiry_in_days(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64* %11, i64 %27)
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @git_config_get_expiry_in_days(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64* %10, i64 %29)
  %31 = load i32, i32* @git_default_config, align 4
  %32 = call i32 @git_config(i32 %31, i32* null)
  %33 = call i32 (i8*, ...) @git_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32* @opendir(i32 %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @die_errno(i32 %38)
  br label %40

40:                                               ; preds = %37, %26
  br label %41

41:                                               ; preds = %99, %59, %51, %40
  %42 = load i32*, i32** %6, align 8
  %43 = call %struct.dirent* @readdir(i32* %42)
  store %struct.dirent* %43, %struct.dirent** %7, align 8
  %44 = icmp ne %struct.dirent* %43, null
  br i1 %44, label %45, label %100

45:                                               ; preds = %41
  %46 = load %struct.dirent*, %struct.dirent** %7, align 8
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @is_dot_or_dotdot(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %41

52:                                               ; preds = %45
  %53 = load %struct.dirent*, %struct.dirent** %7, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.rerere_dir* @find_rerere_dir(i32 %55)
  store %struct.rerere_dir* %56, %struct.rerere_dir** %12, align 8
  %57 = load %struct.rerere_dir*, %struct.rerere_dir** %12, align 8
  %58 = icmp ne %struct.rerere_dir* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %41

60:                                               ; preds = %52
  store i32 1, i32* %14, align 4
  %61 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %13, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.rerere_dir*, %struct.rerere_dir** %12, align 8
  %63 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %13, i32 0, i32 1
  store %struct.rerere_dir* %62, %struct.rerere_dir** %63, align 8
  br label %64

64:                                               ; preds = %87, %60
  %65 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %13, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %13, i32 0, i32 1
  %68 = load %struct.rerere_dir*, %struct.rerere_dir** %67, align 8
  %69 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %64
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @prune_one(%struct.rerere_id* %13, i64 %73, i64 %74)
  %76 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %13, i32 0, i32 1
  %77 = load %struct.rerere_dir*, %struct.rerere_dir** %76, align 8
  %78 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %13, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %85, %72
  br label %87

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %88, align 8
  br label %64

91:                                               ; preds = %64
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.dirent*, %struct.dirent** %7, align 8
  %96 = getelementptr inbounds %struct.dirent, %struct.dirent* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @string_list_append(%struct.string_list* %5, i32 %97)
  br label %99

99:                                               ; preds = %94, %91
  br label %41

100:                                              ; preds = %41
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @closedir(i32* %101)
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %118, %100
  %104 = load i32, i32* %8, align 4
  %105 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @git_path(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = call i32 @rmdir(i32 %116)
  br label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %103

121:                                              ; preds = %103
  %122 = call i32 @string_list_clear(%struct.string_list* %5, i32 0)
  %123 = call i32 @rollback_lock_file(i32* @write_lock)
  br label %124

124:                                              ; preds = %121, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @time(i32*) #2

declare dso_local i64 @setup_rerere(%struct.repository*, %struct.string_list*, i32) #2

declare dso_local i32 @git_config_get_expiry_in_days(i8*, i64*, i64) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32* @opendir(i32) #2

declare dso_local i32 @git_path(i8*, ...) #2

declare dso_local i32 @die_errno(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @is_dot_or_dotdot(i32) #2

declare dso_local %struct.rerere_dir* @find_rerere_dir(i32) #2

declare dso_local i32 @prune_one(%struct.rerere_id*, i64, i64) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @rmdir(i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @rollback_lock_file(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
