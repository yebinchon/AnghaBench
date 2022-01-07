; ModuleID = '/home/carl/AnghaBench/git/extr_rebase-interactive.c_edit_todo_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_rebase-interactive.c_edit_todo_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.todo_list = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@TODO_LIST_SHORTEN_IDS = common dso_local global i32 0, align 4
@TODO_LIST_APPEND_TODO_HELP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"could not write '%s'\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not copy '%s' to '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edit_todo_list(%struct.repository* %0, %struct.todo_list* %1, %struct.todo_list* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.repository*, align 8
  %9 = alloca %struct.todo_list*, align 8
  %10 = alloca %struct.todo_list*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %8, align 8
  store %struct.todo_list* %1, %struct.todo_list** %9, align 8
  store %struct.todo_list* %2, %struct.todo_list** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = call i8* (...) @rebase_path_todo()
  store i8* %16, i8** %14, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %19, %6
  %23 = phi i1 [ false, %6 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load %struct.repository*, %struct.repository** %8, align 8
  %29 = load %struct.todo_list*, %struct.todo_list** %9, align 8
  %30 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.todo_list*, %struct.todo_list** %9, align 8
  %34 = call i32 @todo_list_parse_insn_buffer(%struct.repository* %28, i32 %32, %struct.todo_list* %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.repository*, %struct.repository** %8, align 8
  %37 = load %struct.todo_list*, %struct.todo_list** %9, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @TODO_LIST_SHORTEN_IDS, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @TODO_LIST_APPEND_TODO_HELP, align 4
  %45 = or i32 %43, %44
  %46 = call i64 @todo_list_write_to_file(%struct.repository* %36, %struct.todo_list* %37, i8* %38, i8* %39, i8* %40, i32 -1, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @error_errno(i32 %49, i8* %50)
  store i32 %51, i32* %7, align 4
  br label %97

52:                                               ; preds = %35
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = call i8* (...) @rebase_path_todo_backup()
  %57 = load i8*, i8** %14, align 8
  %58 = call i64 @copy_file(i8* %56, i8* %57, i32 438)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8*, i8** %14, align 8
  %63 = call i8* (...) @rebase_path_todo_backup()
  %64 = call i32 @error(i32 %61, i8* %62, i8* %63)
  store i32 %64, i32* %7, align 4
  br label %97

65:                                               ; preds = %55, %52
  %66 = load i8*, i8** %14, align 8
  %67 = load %struct.todo_list*, %struct.todo_list** %10, align 8
  %68 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %67, i32 0, i32 0
  %69 = call i64 @launch_sequence_editor(i8* %66, %struct.TYPE_3__* %68, i32* null)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 -2, i32* %7, align 4
  br label %97

72:                                               ; preds = %65
  %73 = load %struct.todo_list*, %struct.todo_list** %10, align 8
  %74 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %73, i32 0, i32 0
  %75 = call i32 @strbuf_stripspace(%struct.TYPE_3__* %74, i32 1)
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.todo_list*, %struct.todo_list** %10, align 8
  %80 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 -3, i32* %7, align 4
  br label %97

85:                                               ; preds = %78, %72
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load %struct.repository*, %struct.repository** %8, align 8
  %90 = load %struct.todo_list*, %struct.todo_list** %10, align 8
  %91 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.todo_list*, %struct.todo_list** %10, align 8
  %95 = call i32 @todo_list_parse_insn_buffer(%struct.repository* %89, i32 %93, %struct.todo_list* %94)
  store i32 %95, i32* %7, align 4
  br label %97

96:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %88, %84, %71, %60, %48
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i8* @rebase_path_todo(...) #1

declare dso_local i32 @todo_list_parse_insn_buffer(%struct.repository*, i32, %struct.todo_list*) #1

declare dso_local i64 @todo_list_write_to_file(%struct.repository*, %struct.todo_list*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @copy_file(i8*, i8*, i32) #1

declare dso_local i8* @rebase_path_todo_backup(...) #1

declare dso_local i32 @error(i32, i8*, i8*) #1

declare dso_local i64 @launch_sequence_editor(i8*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @strbuf_stripspace(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
