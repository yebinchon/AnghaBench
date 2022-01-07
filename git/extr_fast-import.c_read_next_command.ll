; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_read_next_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_read_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.recent_command = type { %struct.recent_command*, %struct.recent_command*, i32 }

@read_next_command.stdin_eof = internal global i32 0, align 4
@unread_command_buf = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@command_buf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@stdin = common dso_local global i32 0, align 4
@seen_data_command = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"feature \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"option \00", align 1
@rc_free = common dso_local global %struct.recent_command* null, align 8
@cmd_hist = common dso_local global %struct.recent_command zeroinitializer, align 8
@cmd_tail = common dso_local global %struct.recent_command* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_next_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_next_command() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.recent_command*, align 8
  %3 = load i32, i32* @read_next_command.stdin_eof, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  store i64 0, i64* @unread_command_buf, align 8
  %6 = load i32, i32* @EOF, align 4
  store i32 %6, i32* %1, align 4
  br label %76

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %74, %7
  %9 = load i64, i64* @unread_command_buf, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i64 0, i64* @unread_command_buf, align 8
  br label %68

12:                                               ; preds = %8
  %13 = load i32, i32* @stdin, align 4
  %14 = call i32 @strbuf_getline_lf(%struct.TYPE_3__* @command_buf, i32 %13)
  store i32 %14, i32* @read_next_command.stdin_eof, align 4
  %15 = load i32, i32* @read_next_command.stdin_eof, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @EOF, align 4
  store i32 %18, i32* %1, align 4
  br label %76

19:                                               ; preds = %12
  %20 = load i32, i32* @seen_data_command, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @command_buf, i32 0, i32 0), align 8
  %24 = call i32 @starts_with(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @command_buf, i32 0, i32 0), align 8
  %28 = call i32 @starts_with(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 (...) @parse_argv()
  br label %32

32:                                               ; preds = %30, %26, %22, %19
  %33 = load %struct.recent_command*, %struct.recent_command** @rc_free, align 8
  store %struct.recent_command* %33, %struct.recent_command** %2, align 8
  %34 = load %struct.recent_command*, %struct.recent_command** %2, align 8
  %35 = icmp ne %struct.recent_command* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.recent_command*, %struct.recent_command** %2, align 8
  %38 = getelementptr inbounds %struct.recent_command, %struct.recent_command* %37, i32 0, i32 0
  %39 = load %struct.recent_command*, %struct.recent_command** %38, align 8
  store %struct.recent_command* %39, %struct.recent_command** @rc_free, align 8
  br label %51

40:                                               ; preds = %32
  %41 = load %struct.recent_command*, %struct.recent_command** getelementptr inbounds (%struct.recent_command, %struct.recent_command* @cmd_hist, i32 0, i32 0), align 8
  store %struct.recent_command* %41, %struct.recent_command** %2, align 8
  %42 = load %struct.recent_command*, %struct.recent_command** %2, align 8
  %43 = getelementptr inbounds %struct.recent_command, %struct.recent_command* %42, i32 0, i32 0
  %44 = load %struct.recent_command*, %struct.recent_command** %43, align 8
  store %struct.recent_command* %44, %struct.recent_command** getelementptr inbounds (%struct.recent_command, %struct.recent_command* @cmd_hist, i32 0, i32 0), align 8
  %45 = load %struct.recent_command*, %struct.recent_command** getelementptr inbounds (%struct.recent_command, %struct.recent_command* @cmd_hist, i32 0, i32 0), align 8
  %46 = getelementptr inbounds %struct.recent_command, %struct.recent_command* %45, i32 0, i32 1
  store %struct.recent_command* @cmd_hist, %struct.recent_command** %46, align 8
  %47 = load %struct.recent_command*, %struct.recent_command** %2, align 8
  %48 = getelementptr inbounds %struct.recent_command, %struct.recent_command* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @free(i32 %49)
  br label %51

51:                                               ; preds = %40, %36
  %52 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @command_buf, i32 0, i32 0), align 8
  %53 = call i32 @xstrdup(i8* %52)
  %54 = load %struct.recent_command*, %struct.recent_command** %2, align 8
  %55 = getelementptr inbounds %struct.recent_command, %struct.recent_command* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.recent_command*, %struct.recent_command** @cmd_tail, align 8
  %57 = load %struct.recent_command*, %struct.recent_command** %2, align 8
  %58 = getelementptr inbounds %struct.recent_command, %struct.recent_command* %57, i32 0, i32 1
  store %struct.recent_command* %56, %struct.recent_command** %58, align 8
  %59 = load %struct.recent_command*, %struct.recent_command** getelementptr inbounds (%struct.recent_command, %struct.recent_command* @cmd_hist, i32 0, i32 1), align 8
  %60 = load %struct.recent_command*, %struct.recent_command** %2, align 8
  %61 = getelementptr inbounds %struct.recent_command, %struct.recent_command* %60, i32 0, i32 0
  store %struct.recent_command* %59, %struct.recent_command** %61, align 8
  %62 = load %struct.recent_command*, %struct.recent_command** %2, align 8
  %63 = load %struct.recent_command*, %struct.recent_command** %2, align 8
  %64 = getelementptr inbounds %struct.recent_command, %struct.recent_command* %63, i32 0, i32 1
  %65 = load %struct.recent_command*, %struct.recent_command** %64, align 8
  %66 = getelementptr inbounds %struct.recent_command, %struct.recent_command* %65, i32 0, i32 0
  store %struct.recent_command* %62, %struct.recent_command** %66, align 8
  %67 = load %struct.recent_command*, %struct.recent_command** %2, align 8
  store %struct.recent_command* %67, %struct.recent_command** @cmd_tail, align 8
  br label %68

68:                                               ; preds = %51, %11
  %69 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @command_buf, i32 0, i32 0), align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 35
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %8

75:                                               ; preds = %68
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %75, %17, %5
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i32 @strbuf_getline_lf(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @parse_argv(...) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
