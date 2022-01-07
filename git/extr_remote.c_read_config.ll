; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_read_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@read_config.loaded = internal global i32 0, align 4
@current_branch = common dso_local global i32* null, align 8
@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@REF_ISSYMREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@handle_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @read_config.loaded, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %32

6:                                                ; preds = %0
  store i32 1, i32* @read_config.loaded, align 4
  store i32* null, i32** @current_branch, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = call i8* @resolve_ref_unsafe(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* %1)
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @REF_ISSYMREF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @skip_prefix(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %2, align 8
  %26 = call i32* @make_branch(i8* %25, i32 0)
  store i32* %26, i32** @current_branch, align 8
  br label %27

27:                                               ; preds = %24, %20, %15, %11
  br label %28

28:                                               ; preds = %27, %6
  %29 = load i32, i32* @handle_config, align 4
  %30 = call i32 @git_config(i32 %29, i32* null)
  %31 = call i32 (...) @alias_all_urls()
  br label %32

32:                                               ; preds = %28, %5
  ret void
}

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, i32*, i32*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32* @make_branch(i8*, i32) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @alias_all_urls(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
