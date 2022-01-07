; ModuleID = '/home/carl/AnghaBench/git/extr_notes-utils.c_notes_rewrite_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-utils.c_notes_rewrite_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_rewrite_cfg = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"notes.rewrite.\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"notes.rewritemode\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Bad notes.rewriteMode value: '%s'\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"notes.rewriteref\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"refs/notes/\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Refusing to rewrite notes in %s (outside of refs/notes/)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @notes_rewrite_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notes_rewrite_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.notes_rewrite_cfg*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.notes_rewrite_cfg*
  store %struct.notes_rewrite_cfg* %10, %struct.notes_rewrite_cfg** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @starts_with(i8* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 14
  %17 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %8, align 8
  %18 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* %16, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @git_config_bool(i8* %23, i8* %24)
  %26 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %8, align 8
  %27 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %4, align 4
  br label %84

28:                                               ; preds = %14, %3
  %29 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %8, align 8
  %30 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @config_error_nonbool(i8* %41)
  store i32 %42, i32* %4, align 4
  br label %84

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @parse_combine_notes_fn(i8* %44)
  %46 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %8, align 8
  %47 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %8, align 8
  %49 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @error(i32 %53, i8* %54)
  store i32 1, i32* %4, align 4
  br label %84

56:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %84

57:                                               ; preds = %33, %28
  %58 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %8, align 8
  %59 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @starts_with(i8* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.notes_rewrite_cfg*, %struct.notes_rewrite_cfg** %8, align 8
  %72 = getelementptr inbounds %struct.notes_rewrite_cfg, %struct.notes_rewrite_cfg* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @string_list_add_refs_by_glob(i32 %73, i8* %74)
  br label %80

76:                                               ; preds = %66
  %77 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @warning(i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %70
  store i32 0, i32* %4, align 4
  br label %84

81:                                               ; preds = %62, %57
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %80, %56, %52, %40, %22
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @parse_combine_notes_fn(i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @string_list_add_refs_by_glob(i32, i8*) #1

declare dso_local i32 @warning(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
