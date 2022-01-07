; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_todo_list_write_to_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_todo_list_write_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.repository = type { i32 }
%struct.todo_list = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@TODO_LIST_APPEND_TODO_HELP = common dso_local global i32 0, align 4
@TODO_LIST_KEEP_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @todo_list_write_to_file(%struct.repository* %0, %struct.todo_list* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.repository*, align 8
  %9 = alloca %struct.todo_list*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.strbuf, align 4
  store %struct.repository* %0, %struct.repository** %8, align 8
  store %struct.todo_list* %1, %struct.todo_list** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %18 = load %struct.repository*, %struct.repository** %8, align 8
  %19 = load %struct.todo_list*, %struct.todo_list** %9, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @todo_list_to_strbuf(%struct.repository* %18, %struct.todo_list* %19, %struct.strbuf* %16, i32 %20, i32 %21)
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @TODO_LIST_APPEND_TODO_HELP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %7
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @TODO_LIST_KEEP_EMPTY, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.todo_list*, %struct.todo_list** %9, align 8
  %32 = call i32 @count_commands(%struct.todo_list* %31)
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @append_todo_help(i32 %30, i32 %32, i8* %33, i8* %34, %struct.strbuf* %16)
  br label %36

36:                                               ; preds = %27, %7
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @write_message(i32 %38, i32 %40, i8* %41, i32 0)
  store i32 %42, i32* %15, align 4
  %43 = call i32 @strbuf_release(%struct.strbuf* %16)
  %44 = load i32, i32* %15, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @todo_list_to_strbuf(%struct.repository*, %struct.todo_list*, %struct.strbuf*, i32, i32) #2

declare dso_local i32 @append_todo_help(i32, i32, i8*, i8*, %struct.strbuf*) #2

declare dso_local i32 @count_commands(%struct.todo_list*) #2

declare dso_local i32 @write_message(i32, i32, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
