; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_get_shallow_commits_by_rev_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_get_shallow_commits_by_rev_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.object, %struct.commit_list* }
%struct.object = type { i32, i32 }
%struct.rev_info = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@save_commit_buffer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@show_commit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"no commits selected for shallow requests\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to parse commit %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_list* @get_shallow_commits_by_rev_list(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca %struct.rev_info, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.commit*, align 8
  %15 = alloca %struct.commit_list*, align 8
  %16 = alloca %struct.object*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.commit_list* null, %struct.commit_list** %9, align 8
  store %struct.commit_list* null, %struct.commit_list** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @clear_object_flags(i32 %20)
  %22 = load i32, i32* @the_repository, align 4
  %23 = call i32 @is_repository_shallow(i32 %22)
  %24 = load i32, i32* @the_repository, align 4
  %25 = call i32 @repo_init_revisions(i32 %24, %struct.rev_info* %12, i32* null)
  store i64 0, i64* @save_commit_buffer, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i8**, i8*** %6, align 8
  %28 = call i32 @setup_revisions(i32 %26, i8** %27, %struct.rev_info* %12, i32* null)
  %29 = call i64 @prepare_revision_walk(%struct.rev_info* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %4
  %34 = load i32, i32* @show_commit, align 4
  %35 = call i32 @traverse_commit_list(%struct.rev_info* %12, i32 %34, i32* null, %struct.commit_list** %11)
  %36 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %37 = icmp ne %struct.commit_list* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  store %struct.commit_list* %41, %struct.commit_list** %10, align 8
  br label %42

42:                                               ; preds = %54, %40
  %43 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %44 = icmp ne %struct.commit_list* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %48 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %47, i32 0, i32 0
  %49 = load %struct.commit*, %struct.commit** %48, align 8
  %50 = getelementptr inbounds %struct.commit, %struct.commit* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.object, %struct.object* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %46
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %45
  %55 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %56 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %55, i32 0, i32 1
  %57 = load %struct.commit_list*, %struct.commit_list** %56, align 8
  store %struct.commit_list* %57, %struct.commit_list** %10, align 8
  br label %42

58:                                               ; preds = %42
  %59 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  store %struct.commit_list* %59, %struct.commit_list** %10, align 8
  br label %60

60:                                               ; preds = %108, %58
  %61 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %62 = icmp ne %struct.commit_list* %61, null
  br i1 %62, label %63, label %112

63:                                               ; preds = %60
  %64 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %65 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %64, i32 0, i32 0
  %66 = load %struct.commit*, %struct.commit** %65, align 8
  store %struct.commit* %66, %struct.commit** %14, align 8
  %67 = load %struct.commit*, %struct.commit** %14, align 8
  %68 = call i64 @parse_commit(%struct.commit* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.commit*, %struct.commit** %14, align 8
  %72 = getelementptr inbounds %struct.commit, %struct.commit* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.object, %struct.object* %72, i32 0, i32 1
  %74 = call i32 @oid_to_hex(i32* %73)
  %75 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.commit*, %struct.commit** %14, align 8
  %78 = getelementptr inbounds %struct.commit, %struct.commit* %77, i32 0, i32 1
  %79 = load %struct.commit_list*, %struct.commit_list** %78, align 8
  store %struct.commit_list* %79, %struct.commit_list** %15, align 8
  br label %80

80:                                               ; preds = %103, %76
  %81 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %82 = icmp ne %struct.commit_list* %81, null
  br i1 %82, label %83, label %107

83:                                               ; preds = %80
  %84 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %85 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %84, i32 0, i32 0
  %86 = load %struct.commit*, %struct.commit** %85, align 8
  %87 = getelementptr inbounds %struct.commit, %struct.commit* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.object, %struct.object* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.commit*, %struct.commit** %14, align 8
  %96 = getelementptr inbounds %struct.commit, %struct.commit* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.object, %struct.object* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 8
  %100 = load %struct.commit*, %struct.commit** %14, align 8
  %101 = call i32 @commit_list_insert(%struct.commit* %100, %struct.commit_list** %9)
  br label %107

102:                                              ; preds = %83
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %105 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %104, i32 0, i32 1
  %106 = load %struct.commit_list*, %struct.commit_list** %105, align 8
  store %struct.commit_list* %106, %struct.commit_list** %15, align 8
  br label %80

107:                                              ; preds = %93, %80
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %110 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %109, i32 0, i32 1
  %111 = load %struct.commit_list*, %struct.commit_list** %110, align 8
  store %struct.commit_list* %111, %struct.commit_list** %10, align 8
  br label %60

112:                                              ; preds = %60
  %113 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %114 = call i32 @free_commit_list(%struct.commit_list* %113)
  %115 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  store %struct.commit_list* %115, %struct.commit_list** %10, align 8
  br label %116

116:                                              ; preds = %139, %112
  %117 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %118 = icmp ne %struct.commit_list* %117, null
  br i1 %118, label %119, label %143

119:                                              ; preds = %116
  %120 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %121 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %120, i32 0, i32 0
  %122 = load %struct.commit*, %struct.commit** %121, align 8
  %123 = getelementptr inbounds %struct.commit, %struct.commit* %122, i32 0, i32 0
  store %struct.object* %123, %struct.object** %16, align 8
  %124 = load %struct.object*, %struct.object** %16, align 8
  %125 = getelementptr inbounds %struct.object, %struct.object* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %13, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* %13, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %119
  %132 = load i32, i32* %8, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.object*, %struct.object** %16, align 8
  %135 = getelementptr inbounds %struct.object, %struct.object* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %131, %119
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %141 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %140, i32 0, i32 1
  %142 = load %struct.commit_list*, %struct.commit_list** %141, align 8
  store %struct.commit_list* %142, %struct.commit_list** %10, align 8
  br label %116

143:                                              ; preds = %116
  %144 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  ret %struct.commit_list* %144
}

declare dso_local i32 @clear_object_flags(i32) #1

declare dso_local i32 @is_repository_shallow(i32) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #1

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, i32*) #1

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @traverse_commit_list(%struct.rev_info*, i32, i32*, %struct.commit_list**) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
