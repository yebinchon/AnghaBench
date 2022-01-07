; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-submodule-config.c_cmd__submodule_config.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-submodule-config.c_cmd__submodule_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.submodule = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"--url\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--name\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Wrong number of arguments.\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Commit not found.\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Submodule not found.\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Submodule url: '%s' for path '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Submodule name: '%s' for path '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__submodule_config(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id, align 4
  %10 = alloca %struct.submodule*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %13 = load i8**, i8*** %4, align 8
  store i8** %13, i8*** %5, align 8
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %16, i8*** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %46, %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @starts_with(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i1 [ false, %19 ], [ %29, %24 ]
  br i1 %31, label %32, label %51

32:                                               ; preds = %30
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  br label %19

51:                                               ; preds = %30
  %52 = load i32, i32* %6, align 4
  %53 = srem i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = load i8**, i8*** %4, align 8
  %58 = call i32 @die_usage(i32 %56, i8** %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %51
  %60 = call i32 (...) @setup_git_directory()
  br label %61

61:                                               ; preds = %125, %59
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %128

65:                                               ; preds = %61
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %11, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = call i32 @oidclr(%struct.object_id* %9)
  br label %88

79:                                               ; preds = %65
  %80 = load i8*, i8** %11, align 8
  %81 = call i64 @get_oid(i8* %80, %struct.object_id* %9)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %3, align 4
  %85 = load i8**, i8*** %4, align 8
  %86 = call i32 @die_usage(i32 %84, i8** %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %77
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @the_repository, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = call %struct.submodule* @submodule_from_name(i32 %92, %struct.object_id* %9, i8* %93)
  store %struct.submodule* %94, %struct.submodule** %10, align 8
  br label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @the_repository, align 4
  %97 = load i8*, i8** %12, align 8
  %98 = call %struct.submodule* @submodule_from_path(i32 %96, %struct.object_id* %9, i8* %97)
  store %struct.submodule* %98, %struct.submodule** %10, align 8
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.submodule*, %struct.submodule** %10, align 8
  %101 = icmp ne %struct.submodule* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %3, align 4
  %104 = load i8**, i8*** %4, align 8
  %105 = call i32 @die_usage(i32 %103, i8** %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load %struct.submodule*, %struct.submodule** %10, align 8
  %111 = getelementptr inbounds %struct.submodule, %struct.submodule* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.submodule*, %struct.submodule** %10, align 8
  %114 = getelementptr inbounds %struct.submodule, %struct.submodule* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %112, i8* %115)
  br label %125

117:                                              ; preds = %106
  %118 = load %struct.submodule*, %struct.submodule** %10, align 8
  %119 = getelementptr inbounds %struct.submodule, %struct.submodule* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.submodule*, %struct.submodule** %10, align 8
  %122 = getelementptr inbounds %struct.submodule, %struct.submodule* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %120, i8* %123)
  br label %125

125:                                              ; preds = %117, %109
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 2
  store i8** %127, i8*** %5, align 8
  br label %61

128:                                              ; preds = %61
  %129 = load i32, i32* @the_repository, align 4
  %130 = call i32 @submodule_free(i32 %129)
  ret i32 0
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @die_usage(i32, i8**, i8*) #1

declare dso_local i32 @setup_git_directory(...) #1

declare dso_local i32 @oidclr(%struct.object_id*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.submodule* @submodule_from_name(i32, %struct.object_id*, i8*) #1

declare dso_local %struct.submodule* @submodule_from_path(i32, %struct.object_id*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @submodule_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
