; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_load_command_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_load_command_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@cmdname_compare = common dso_local global i32 0, align 4
@PATH_SEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_command_list(i8* %0, %struct.cmdnames* %1, %struct.cmdnames* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cmdnames*, align 8
  %6 = alloca %struct.cmdnames*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.cmdnames* %1, %struct.cmdnames** %5, align 8
  store %struct.cmdnames* %2, %struct.cmdnames** %6, align 8
  %12 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %7, align 8
  %13 = call i8* (...) @git_exec_path()
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @list_commands_in_dir(%struct.cmdnames* %17, i8* %18, i8* %19)
  %21 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %22 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %25 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @cmdname_compare, align 4
  %28 = call i32 @QSORT(i32 %23, i32 %26, i32 %27)
  %29 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %30 = call i32 @uniq(%struct.cmdnames* %29)
  br label %31

31:                                               ; preds = %16, %3
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %77

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @xstrdup(i8* %35)
  store i8* %36, i8** %9, align 8
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %34, %61
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @PATH_SEP, align 4
  %40 = call i8* @strchr(i8* %38, i32 %39)
  store i8* %40, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @strcmp(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47, %44
  %53 = load %struct.cmdnames*, %struct.cmdnames** %6, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @list_commands_in_dir(%struct.cmdnames* %53, i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %64

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %10, align 8
  br label %37

64:                                               ; preds = %60
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load %struct.cmdnames*, %struct.cmdnames** %6, align 8
  %68 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cmdnames*, %struct.cmdnames** %6, align 8
  %71 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @cmdname_compare, align 4
  %74 = call i32 @QSORT(i32 %69, i32 %72, i32 %73)
  %75 = load %struct.cmdnames*, %struct.cmdnames** %6, align 8
  %76 = call i32 @uniq(%struct.cmdnames* %75)
  br label %77

77:                                               ; preds = %64, %31
  %78 = load %struct.cmdnames*, %struct.cmdnames** %6, align 8
  %79 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %80 = call i32 @exclude_cmds(%struct.cmdnames* %78, %struct.cmdnames* %79)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @git_exec_path(...) #1

declare dso_local i32 @list_commands_in_dir(%struct.cmdnames*, i8*, i8*) #1

declare dso_local i32 @QSORT(i32, i32, i32) #1

declare dso_local i32 @uniq(%struct.cmdnames*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @exclude_cmds(%struct.cmdnames*, %struct.cmdnames*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
