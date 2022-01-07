; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_check_todo_list_from_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_check_todo_list_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.todo_list = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.repository = type { i32 }

@TODO_LIST_INIT = common dso_local global %struct.todo_list zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@edit_todo_list_advice = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_todo_list_from_file(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca %struct.todo_list, align 4
  %4 = alloca %struct.todo_list, align 4
  %5 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %2, align 8
  %6 = bitcast %struct.todo_list* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.todo_list* @TODO_LIST_INIT to i8*), i64 4, i1 false)
  %7 = bitcast %struct.todo_list* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.todo_list* @TODO_LIST_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %5, align 4
  %8 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %4, i32 0, i32 0
  %9 = call i32 (...) @rebase_path_todo()
  %10 = call i64 @strbuf_read_file_or_whine(%struct.TYPE_2__* %8, i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %5, align 4
  br label %47

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %3, i32 0, i32 0
  %15 = call i32 (...) @rebase_path_todo_backup()
  %16 = call i64 @strbuf_read_file_or_whine(%struct.TYPE_2__* %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %47

19:                                               ; preds = %13
  %20 = load %struct.repository*, %struct.repository** %2, align 8
  %21 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %3, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @todo_list_parse_insn_buffer(%struct.repository* %20, i32 %23, %struct.todo_list* %3)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.repository*, %struct.repository** %2, align 8
  %29 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %4, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @todo_list_parse_insn_buffer(%struct.repository* %28, i32 %31, %struct.todo_list* %4)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %19
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i32 @todo_list_check(%struct.todo_list* %3, %struct.todo_list* %4)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* @edit_todo_list_advice, align 4
  %44 = call i8* @_(i32 %43)
  %45 = call i32 @fprintf(i32 %42, i8* %44)
  br label %46

46:                                               ; preds = %41, %38
  br label %47

47:                                               ; preds = %46, %18, %12
  %48 = call i32 @todo_list_release(%struct.todo_list* %3)
  %49 = call i32 @todo_list_release(%struct.todo_list* %4)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_read_file_or_whine(%struct.TYPE_2__*, i32) #2

declare dso_local i32 @rebase_path_todo(...) #2

declare dso_local i32 @rebase_path_todo_backup(...) #2

declare dso_local i32 @todo_list_parse_insn_buffer(%struct.repository*, i32, %struct.todo_list*) #2

declare dso_local i32 @todo_list_check(%struct.todo_list*, %struct.todo_list*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i8* @_(i32) #2

declare dso_local i32 @todo_list_release(%struct.todo_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
