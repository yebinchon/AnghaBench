; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_prepare_shell_cmd.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_prepare_shell_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i8** }

@.str = private unnamed_addr constant [23 x i8] c"shell command is empty\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"|&;<>()$`\\\22' \09\0A*?[#~=%\00", align 1
@SHELL_PATH = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s \22$@\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.argv_array*, i8**)* @prepare_shell_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @prepare_shell_cmd(%struct.argv_array* %0, i8** %1) #0 {
  %3 = alloca %struct.argv_array*, align 8
  %4 = alloca i8**, align 8
  store %struct.argv_array* %0, %struct.argv_array** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @BUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strcspn(i8* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %11
  %22 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %23 = load i8*, i8** @SHELL_PATH, align 8
  %24 = call i32 @argv_array_push(%struct.argv_array* %22, i8* %23)
  %25 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %26 = call i32 @argv_array_push(%struct.argv_array* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %33 = load i8**, i8*** %4, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @argv_array_push(%struct.argv_array* %32, i8* %35)
  br label %43

37:                                               ; preds = %21
  %38 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @argv_array_pushf(%struct.argv_array* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %43, %11
  %45 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %46 = load i8**, i8*** %4, align 8
  %47 = call i32 @argv_array_pushv(%struct.argv_array* %45, i8** %46)
  %48 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %49 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  ret i8** %50
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #1

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i8*) #1

declare dso_local i32 @argv_array_pushv(%struct.argv_array*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
