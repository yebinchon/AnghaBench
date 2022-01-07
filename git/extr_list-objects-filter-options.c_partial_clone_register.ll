; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_partial_clone_register.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_partial_clone_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_objects_filter_options = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"core.repositoryformatversion\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"remote.%s.promisor\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"remote.%s.partialclonefilter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @partial_clone_register(i8* %0, %struct.list_objects_filter_options* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.list_objects_filter_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.list_objects_filter_options* %1, %struct.list_objects_filter_options** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @promisor_remote_find(i8* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = call i32 @git_config_set(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @xstrfmt(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @git_config_set(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @free(i8* %16)
  br label %18

18:                                               ; preds = %10, %2
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @xstrfmt(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %23 = call i8* @expand_list_objects_filter_spec(%struct.list_objects_filter_options* %22)
  %24 = call i32 @git_config_set(i8* %21, i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @free(i8* %25)
  %27 = call i32 (...) @promisor_remote_reinit()
  ret void
}

declare dso_local i32 @promisor_remote_find(i8*) #1

declare dso_local i32 @git_config_set(i8*, i8*) #1

declare dso_local i8* @xstrfmt(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @expand_list_objects_filter_spec(%struct.list_objects_filter_options*) #1

declare dso_local i32 @promisor_remote_reinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
