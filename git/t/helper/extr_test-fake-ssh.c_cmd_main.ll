; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-fake-ssh.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-fake-ssh.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"TRASH_DIRECTORY\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Need a TRASH_DIRECTORY!\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s/ssh-output\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Could not write to %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ssh:\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RUN_USING_SHELL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %6, align 8
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @fopen(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %18
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  br label %50

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi i8* [ %48, %43 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %49 ]
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %40, i8* %51)
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @fclose(i32* %59)
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %75

64:                                               ; preds = %56
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8* %70, i8** %71, align 16
  %72 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %73 = load i32, i32* @RUN_USING_SHELL, align 4
  %74 = call i32 @run_command_v_opt(i8** %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %64, %63
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @run_command_v_opt(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
