; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_prepare_cmd.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_prepare_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i8** }
%struct.child_process = type { i32*, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"command is empty\00", align 1
@SHELL_PATH = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.argv_array*, %struct.child_process*)* @prepare_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_cmd(%struct.argv_array* %0, %struct.child_process* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.argv_array*, align 8
  %5 = alloca %struct.child_process*, align 8
  %6 = alloca i8*, align 8
  store %struct.argv_array* %0, %struct.argv_array** %4, align 8
  store %struct.child_process* %1, %struct.child_process** %5, align 8
  %7 = load %struct.child_process*, %struct.child_process** %5, align 8
  %8 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @BUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %17 = load i8*, i8** @SHELL_PATH, align 8
  %18 = call i32 @argv_array_push(%struct.argv_array* %16, i8* %17)
  %19 = load %struct.child_process*, %struct.child_process** %5, align 8
  %20 = getelementptr inbounds %struct.child_process, %struct.child_process* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %25 = call i32 @argv_array_push(%struct.argv_array* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %27 = load %struct.child_process*, %struct.child_process** %5, align 8
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @argv_array_pushv(%struct.argv_array* %26, i32* %29)
  br label %49

31:                                               ; preds = %15
  %32 = load %struct.child_process*, %struct.child_process** %5, align 8
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %38 = load %struct.child_process*, %struct.child_process** %5, align 8
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @prepare_shell_cmd(%struct.argv_array* %37, i32* %40)
  br label %48

42:                                               ; preds = %31
  %43 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %44 = load %struct.child_process*, %struct.child_process** %5, align 8
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @argv_array_pushv(%struct.argv_array* %43, i32* %46)
  br label %48

48:                                               ; preds = %42, %36
  br label %49

49:                                               ; preds = %48, %23
  %50 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %51 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strchr(i8* %54, i8 signext 47)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %83, label %57

57:                                               ; preds = %49
  %58 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %59 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @locate_in_PATH(i8* %62)
  store i8* %63, i8** %6, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %57
  %67 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %68 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %75 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  store i8* %73, i8** %77, align 8
  br label %82

78:                                               ; preds = %57
  %79 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %80 = call i32 @argv_array_clear(%struct.argv_array* %79)
  %81 = load i32, i32* @ENOENT, align 4
  store i32 %81, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %84

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %49
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %78
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #1

declare dso_local i32 @argv_array_pushv(%struct.argv_array*, i32*) #1

declare dso_local i32 @prepare_shell_cmd(%struct.argv_array*, i32*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i8* @locate_in_PATH(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
