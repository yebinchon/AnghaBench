; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_read_env_script.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_read_env_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"GIT_AUTHOR_NAME=%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIT_AUTHOR_EMAIL=%s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"GIT_AUTHOR_DATE=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.argv_array*)* @read_env_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_env_script(%struct.argv_array* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.argv_array*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.argv_array* %0, %struct.argv_array** %3, align 8
  %7 = call i32 (...) @rebase_path_author_script()
  %8 = call i64 @read_author_script(i32 %7, i8** %4, i8** %5, i8** %6, i32 0)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @argv_array_pushf(%struct.argv_array* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @argv_array_pushf(%struct.argv_array* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @argv_array_pushf(%struct.argv_array* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @free(i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @free(i8* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %11, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @read_author_script(i32, i8**, i8**, i8**, i32) #1

declare dso_local i32 @rebase_path_author_script(...) #1

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
