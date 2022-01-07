; ModuleID = '/home/carl/AnghaBench/git/extr_editor.c_launch_specified_editor.c'
source_filename = "/home/carl/AnghaBench/git/extr_editor.c_launch_specified_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i8**, i32, i8* }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Terminal is dumb, but EDITOR unset\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@advice_waiting_for_editor = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"hint: Waiting for your editor to close the file...%c\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"editor\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"unable to start editor '%s'\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"There was a problem with the editor '%s'.\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"could not read file '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.strbuf*, i8**)* @launch_specified_editor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @launch_specified_editor(i8* %0, i8* %1, %struct.strbuf* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca [3 x i8*], align 16
  %11 = alloca %struct.child_process, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %5, align 4
  br label %118

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %105

24:                                               ; preds = %20
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 1
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @real_path(i8* %28)
  store i8* %29, i8** %27, align 8
  %30 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* null, i8** %30, align 8
  %31 = bitcast %struct.child_process* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %32 = load i64, i64* @advice_waiting_for_editor, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = call i64 @isatty(i32 2)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %34, %24
  %38 = phi i1 [ false, %24 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = call i64 (...) @is_terminal_dumb()
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 10, i32 32
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %15, align 1
  %48 = load i32, i32* @stderr, align 4
  %49 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8, i8* %15, align 1
  %51 = call i32 @fprintf(i32 %48, i8* %49, i8 signext %50)
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fflush(i32 %52)
  br label %54

54:                                               ; preds = %42, %37
  %55 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %56 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 0
  store i8** %55, i8*** %56, align 8
  %57 = load i8**, i8*** %9, align 8
  %58 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  store i8** %57, i8*** %58, align 8
  %59 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %60, align 8
  %61 = call i64 @start_command(%struct.child_process* %11)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  store i32 %65, i32* %5, align 4
  br label %118

66:                                               ; preds = %54
  %67 = load i32, i32* @SIGINT, align 4
  %68 = load i32, i32* @SIG_IGN, align 4
  %69 = call i32 @sigchain_push(i32 %67, i32 %68)
  %70 = load i32, i32* @SIGQUIT, align 4
  %71 = load i32, i32* @SIG_IGN, align 4
  %72 = call i32 @sigchain_push(i32 %70, i32 %71)
  %73 = call i32 @finish_command(%struct.child_process* %11)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 %74, 128
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* @SIGINT, align 4
  %77 = call i32 @sigchain_pop(i32 %76)
  %78 = load i32, i32* @SIGQUIT, align 4
  %79 = call i32 @sigchain_pop(i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @SIGINT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %66
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @SIGQUIT, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83, %66
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @raise(i32 %88)
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  store i32 %95, i32* %5, align 4
  br label %118

96:                                               ; preds = %90
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = call i64 (...) @is_terminal_dumb()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = call i32 (...) @term_clear_line()
  br label %104

104:                                              ; preds = %102, %99, %96
  br label %105

105:                                              ; preds = %104, %20
  %106 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %107 = icmp ne %struct.strbuf* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %118

109:                                              ; preds = %105
  %110 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = call i64 @strbuf_read_file(%struct.strbuf* %110, i8* %111, i32 0)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @error_errno(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %115)
  store i32 %116, i32* %5, align 4
  br label %118

117:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %114, %108, %93, %63, %18
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @real_path(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @isatty(i32) #1

declare dso_local i64 @is_terminal_dumb(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8 signext) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @start_command(%struct.child_process*) #1

declare dso_local i32 @sigchain_push(i32, i32) #1

declare dso_local i32 @finish_command(%struct.child_process*) #1

declare dso_local i32 @sigchain_pop(i32) #1

declare dso_local i32 @raise(i32) #1

declare dso_local i32 @term_clear_line(...) #1

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @error_errno(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
