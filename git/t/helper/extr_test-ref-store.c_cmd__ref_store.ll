; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_cmd__ref_store.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_cmd__ref_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 (%struct.ref_store*, i8**)*, i64 }
%struct.ref_store = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ref function required\00", align 1
@commands = common dso_local global %struct.command* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown function %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__ref_store(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ref_store*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.command*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @setup_git_directory()
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = call i8** @get_store(i8** %11, %struct.ref_store** %6)
  store i8** %12, i8*** %5, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %5, align 8
  %15 = load i8*, i8** %13, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load %struct.command*, %struct.command** @commands, align 8
  store %struct.command* %21, %struct.command** %8, align 8
  br label %22

22:                                               ; preds = %42, %20
  %23 = load %struct.command*, %struct.command** %8, align 8
  %24 = getelementptr inbounds %struct.command, %struct.command* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.command*, %struct.command** %8, align 8
  %30 = getelementptr inbounds %struct.command, %struct.command* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @strcmp(i8* %28, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.command*, %struct.command** %8, align 8
  %36 = getelementptr inbounds %struct.command, %struct.command* %35, i32 0, i32 0
  %37 = load i32 (%struct.ref_store*, i8**)*, i32 (%struct.ref_store*, i8**)** %36, align 8
  %38 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = call i32 %37(%struct.ref_store* %38, i8** %39)
  store i32 %40, i32* %3, align 4
  br label %48

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.command*, %struct.command** %8, align 8
  %44 = getelementptr inbounds %struct.command, %struct.command* %43, i32 1
  store %struct.command* %44, %struct.command** %8, align 8
  br label %22

45:                                               ; preds = %22
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %34
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @setup_git_directory(...) #1

declare dso_local i8** @get_store(i8**, %struct.ref_store**) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
