; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_submodule_to_gitdir.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_submodule_to_gitdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.submodule = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c".git\00", align 1
@the_repository = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"modules\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @submodule_to_gitdir(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.submodule*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %9 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %10 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strbuf_addstr(%struct.strbuf* %10, i8* %11)
  %13 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %14 = call i32 @strbuf_complete(%struct.strbuf* %13, i8 signext 47)
  %15 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %16 = call i32 @strbuf_addstr(%struct.strbuf* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @read_gitfile(i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %25 = call i32 @strbuf_reset(%struct.strbuf* %24)
  %26 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strbuf_addstr(%struct.strbuf* %26, i8* %27)
  br label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @is_git_directory(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @the_repository, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call %struct.submodule* @submodule_from_path(i32 %36, i32* @null_oid, i8* %37)
  store %struct.submodule* %38, %struct.submodule** %5, align 8
  %39 = load %struct.submodule*, %struct.submodule** %5, align 8
  %40 = icmp ne %struct.submodule* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 -1, i32* %7, align 4
  br label %51

42:                                               ; preds = %35
  %43 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %44 = call i32 @strbuf_reset(%struct.strbuf* %43)
  %45 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %46 = load %struct.submodule*, %struct.submodule** %5, align 8
  %47 = getelementptr inbounds %struct.submodule, %struct.submodule* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strbuf_git_path(%struct.strbuf* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %42, %29
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_complete(%struct.strbuf*, i8 signext) #1

declare dso_local i8* @read_gitfile(i32) #1

declare dso_local i32 @is_git_directory(i32) #1

declare dso_local %struct.submodule* @submodule_from_path(i32, i32*, i8*) #1

declare dso_local i32 @strbuf_git_path(%struct.strbuf*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
