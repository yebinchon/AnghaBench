; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_get_last_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_get_last_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.repository = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"unable to open '%s'\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@TODO_PICK = common dso_local global i32 0, align 4
@REPLAY_PICK = common dso_local global i32 0, align 4
@TODO_REVERT = common dso_local global i32 0, align 4
@REPLAY_REVERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sequencer_get_last_command(%struct.repository* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %9, align 4
  %11 = call i8* (...) @git_path_todo_file()
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strbuf_read_file(%struct.strbuf* %8, i8* %12, i32 0)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @ENOENT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ENOTDIR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  store i32 -1, i32* %3, align 4
  br label %73

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @error_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %3, align 4
  br label %73

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strspn(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8* %34, i8** %7, align 8
  %35 = load i32, i32* @TODO_PICK, align 4
  %36 = call i64 @is_command(i32 %35, i8** %7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %27
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @REPLAY_PICK, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %70

51:                                               ; preds = %43, %27
  %52 = load i32, i32* @TODO_REVERT, align 4
  %53 = call i64 @is_command(i32 %52, i8** %7)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 9
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %55
  %66 = load i32, i32* @REPLAY_REVERT, align 4
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  br label %69

68:                                               ; preds = %60, %51
  store i32 -1, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %70

70:                                               ; preds = %69, %48
  %71 = call i32 @strbuf_release(%struct.strbuf* %8)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %24, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @git_path_todo_file(...) #2

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @error_errno(i8*, i8*) #2

declare dso_local i32 @strspn(i8*, i8*) #2

declare dso_local i64 @is_command(i32, i8**) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
