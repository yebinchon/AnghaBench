; ModuleID = '/home/carl/AnghaBench/git/extr_notes-utils.c_init_copy_notes_for_rewrite.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-utils.c_init_copy_notes_for_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_rewrite_cfg = type { i8*, i32, i32, i32, i32, %struct.notes_rewrite_cfg*, i32, i32, i32 }

@GIT_NOTES_REWRITE_MODE_ENVIRONMENT = common dso_local global i32 0, align 4
@GIT_NOTES_REWRITE_REF_ENVIRONMENT = common dso_local global i32 0, align 4
@combine_notes_concatenate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Bad %s value: '%s'\00", align 1
@notes_rewrite_config = common dso_local global i32 0, align 4
@NOTES_INIT_WRITABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.notes_rewrite_cfg* @init_copy_notes_for_rewrite(i8* %0) #0 {
  %2 = alloca %struct.notes_rewrite_cfg*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.notes_rewrite_cfg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call %struct.notes_rewrite_cfg* @xmalloc(i32 48)
  store %struct.notes_rewrite_cfg* %7, %struct.notes_rewrite_cfg** %4, align 8
  %8 = load i32, i32* @GIT_NOTES_REWRITE_MODE_ENVIRONMENT, align 4
  %9 = call i8* @getenv(i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load i32, i32* @GIT_NOTES_REWRITE_REF_ENVIRONMENT, align 4
  %11 = call i8* @getenv(i32 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %15, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @combine_notes_concatenate, align 4
  %18 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  %20 = call %struct.notes_rewrite_cfg* @xcalloc(i32 1, i32 4)
  %21 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %21, i32 0, i32 5
  store %struct.notes_rewrite_cfg* %20, %struct.notes_rewrite_cfg** %22, align 8
  %23 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %23, i32 0, i32 5
  %25 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %24, align 8
  %26 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %25, i32 0, i32 2
  store i32 1, i32* %26, align 4
  %27 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %28 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %27, i32 0, i32 3
  store i32 0, i32* %28, align 8
  %29 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %29, i32 0, i32 4
  store i32 0, i32* %30, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %1
  %34 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %35 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %34, i32 0, i32 4
  store i32 1, i32* %35, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @parse_combine_notes_fn(i8* %36)
  %38 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %39 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %41 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %33
  %45 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @GIT_NOTES_REWRITE_MODE_ENVIRONMENT, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @error(i32 %45, i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %44, %33
  br label %50

50:                                               ; preds = %49, %1
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %55 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %54, i32 0, i32 3
  store i32 1, i32* %55, align 8
  %56 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %57 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %56, i32 0, i32 5
  %58 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @string_list_add_refs_from_colon_sep(%struct.notes_rewrite_cfg* %58, i8* %59)
  br label %61

61:                                               ; preds = %53, %50
  %62 = load i32, i32* @notes_rewrite_config, align 4
  %63 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %64 = call i32 @git_config(i32 %62, %struct.notes_rewrite_cfg* %63)
  %65 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %66 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %71 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %70, i32 0, i32 5
  %72 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %71, align 8
  %73 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %69, %61
  %77 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %78 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %77, i32 0, i32 5
  %79 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %78, align 8
  %80 = call i32 @string_list_clear(%struct.notes_rewrite_cfg* %79, i32 0)
  %81 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %82 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %81, i32 0, i32 5
  %83 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %82, align 8
  %84 = call i32 @free(%struct.notes_rewrite_cfg* %83)
  %85 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %86 = call i32 @free(%struct.notes_rewrite_cfg* %85)
  store %struct.notes_rewrite_cfg* null, %struct.notes_rewrite_cfg** %2, align 8
  br label %104

87:                                               ; preds = %69
  %88 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %89 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %88, i32 0, i32 5
  %90 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %89, align 8
  %91 = load i32, i32* @NOTES_INIT_WRITABLE, align 4
  %92 = call i32 @load_notes_trees(%struct.notes_rewrite_cfg* %90, i32 %91)
  %93 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %94 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  %95 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %96 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %95, i32 0, i32 5
  %97 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %96, align 8
  %98 = call i32 @string_list_clear(%struct.notes_rewrite_cfg* %97, i32 0)
  %99 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  %100 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %99, i32 0, i32 5
  %101 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %100, align 8
  %102 = call i32 @free(%struct.notes_rewrite_cfg* %101)
  %103 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %4, align 8
  store %struct.notes_rewrite_cfg* %103, %struct.notes_rewrite_cfg** %2, align 8
  br label %104

104:                                              ; preds = %87, %76
  %105 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %2, align 8
  ret %struct.notes_rewrite_cfg* %105
}

declare dso_local %struct.notes_rewrite_cfg* @xmalloc(i32) #1

declare dso_local i8* @getenv(i32) #1

declare dso_local %struct.notes_rewrite_cfg* @xcalloc(i32, i32) #1

declare dso_local i32 @parse_combine_notes_fn(i8*) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @string_list_add_refs_from_colon_sep(%struct.notes_rewrite_cfg*, i8*) #1

declare dso_local i32 @git_config(i32, %struct.notes_rewrite_cfg*) #1

declare dso_local i32 @string_list_clear(%struct.notes_rewrite_cfg*, i32) #1

declare dso_local i32 @free(%struct.notes_rewrite_cfg*) #1

declare dso_local i32 @load_notes_trees(%struct.notes_rewrite_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
