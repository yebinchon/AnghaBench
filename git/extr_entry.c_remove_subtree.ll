; ModuleID = '/home/carl/AnghaBench/git/extr_entry.c_remove_subtree.c'
source_filename = "/home/carl/AnghaBench/git/extr_entry.c_remove_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.dirent = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"cannot opendir '%s'\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot lstat '%s'\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"cannot unlink '%s'\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"cannot rmdir '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @remove_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_subtree(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %8 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @opendir(i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @die_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  br label %22

22:                                               ; preds = %70, %32, %21
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.dirent* @readdir(i32* %23)
  store %struct.dirent* %24, %struct.dirent** %4, align 8
  %25 = icmp ne %struct.dirent* %24, null
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load %struct.dirent*, %struct.dirent** %4, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @is_dot_or_dotdot(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %22

33:                                               ; preds = %26
  %34 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %35 = call i32 @strbuf_addch(%struct.strbuf* %34, i8 signext 47)
  %36 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %37 = load %struct.dirent*, %struct.dirent** %4, align 8
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strbuf_addstr(%struct.strbuf* %36, i32 %39)
  %41 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @lstat(i32 %43, %struct.stat* %6)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @die_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %33
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @S_ISDIR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  call void @remove_subtree(%struct.strbuf* %57)
  br label %70

58:                                               ; preds = %51
  %59 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @unlink(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @die_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %58
  br label %70

70:                                               ; preds = %69, %56
  %71 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @strbuf_setlen(%struct.strbuf* %71, i32 %72)
  br label %22

74:                                               ; preds = %22
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @closedir(i32* %75)
  %77 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @rmdir(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @die_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %82, %74
  ret void
}

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @die_errno(i8*, i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @is_dot_or_dotdot(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @unlink(i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i64 @rmdir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
