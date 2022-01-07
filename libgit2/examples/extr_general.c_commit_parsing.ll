; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_general.c_commit_parsing.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_general.c_commit_parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"\0A*Commit Parsing*\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"8496071c1b46c854b31185ea97743be6a8774479\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"looking up commit\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Author: %s (%s)\0ACommitter: %s (%s)\0ADate: %s\0AMessage: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Parent: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @commit_parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_parsing(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %15 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @git_oid_fromstr(i32* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_commit_lookup(i32** %5, i32* %22, i32* %7)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @check_error(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @git_commit_message(i32* %26)
  store i8* %27, i8** %10, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call %struct.TYPE_4__* @git_commit_author(i32* %28)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call %struct.TYPE_4__* @git_commit_committer(i32* %30)
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @git_commit_time(i32* %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @ctime(i32* %14)
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %36, i8* %39, i8* %42, i8* %45, i8* %46, i8* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @git_commit_parentcount(i32* %49)
  store i32 %50, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %67, %1
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = trunc i64 %17 to i32
  %57 = call i32 @memset(i8* %19, i32 0, i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @git_commit_parent(i32** %6, i32* %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @git_commit_id(i32* %61)
  %63 = call i32 @git_oid_fmt(i8* %19, i32 %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @git_commit_free(i32* %65)
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %12, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %51

70:                                               ; preds = %51
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @git_commit_free(i32* %71)
  %73 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32*, i32*) #2

declare dso_local i32 @check_error(i32, i8*) #2

declare dso_local i8* @git_commit_message(i32*) #2

declare dso_local %struct.TYPE_4__* @git_commit_author(i32*) #2

declare dso_local %struct.TYPE_4__* @git_commit_committer(i32*) #2

declare dso_local i32 @git_commit_time(i32*) #2

declare dso_local i8* @ctime(i32*) #2

declare dso_local i32 @git_commit_parentcount(i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @git_commit_parent(i32**, i32*, i32) #2

declare dso_local i32 @git_oid_fmt(i8*, i32) #2

declare dso_local i32 @git_commit_id(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
