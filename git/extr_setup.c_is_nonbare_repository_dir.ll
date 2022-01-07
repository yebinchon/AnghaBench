; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_is_nonbare_repository_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_is_nonbare_repository_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c".git\00", align 1
@READ_GITFILE_ERR_OPEN_FAILED = common dso_local global i32 0, align 4
@READ_GITFILE_ERR_READ_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_nonbare_repository_dir(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %14 = call i32 @strbuf_complete(%struct.strbuf* %13, i8 signext 47)
  %15 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %16 = call i32 @strbuf_addstr(%struct.strbuf* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @read_gitfile_gently(i32 %19, i32* %4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @is_git_directory(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %1
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @READ_GITFILE_ERR_OPEN_FAILED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @READ_GITFILE_ERR_READ_FAILED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %29
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @strbuf_setlen(%struct.strbuf* %39, i64 %40)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strbuf_complete(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @read_gitfile_gently(i32, i32*) #1

declare dso_local i64 @is_git_directory(i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
