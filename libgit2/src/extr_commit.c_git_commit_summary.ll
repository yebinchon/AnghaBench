; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_summary.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_commit_summary(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = call i32 @assert(%struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = call i8* @git_commit_message(%struct.TYPE_5__* %16)
  store i8* %17, i8** %4, align 8
  store i8* null, i8** %5, align 8
  br label %18

18:                                               ; preds = %80, %15
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %83

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %7, align 1
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %29
  br label %83

41:                                               ; preds = %34, %22
  %42 = load i8, i8* %7, align 1
  %43 = call i64 @git__isspace(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i8*, i8** %4, align 8
  store i8* %49, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i8, i8* %7, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 10
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %78

57:                                               ; preds = %41
  %58 = load i8*, i8** %5, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @git_buf_putc(i32* %3, i8 signext 32)
  br label %74

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @git_buf_put(i32* %3, i8* %66, i32 %72)
  br label %74

74:                                               ; preds = %65, %63
  store i8* null, i8** %5, align 8
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i8, i8* %7, align 1
  %77 = call i32 @git_buf_putc(i32* %3, i8 signext %76)
  br label %78

78:                                               ; preds = %75, %50
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %4, align 8
  br label %18

83:                                               ; preds = %40, %18
  %84 = call i8* @git_buf_detach(i32* %3)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %83
  %92 = call i8* @git__strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %91, %83
  br label %96

96:                                               ; preds = %95, %1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  ret i8* %99
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i8* @git_commit_message(%struct.TYPE_5__*) #1

declare dso_local i64 @git__isspace(i8 signext) #1

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #1

declare dso_local i32 @git_buf_put(i32*, i8*, i32) #1

declare dso_local i8* @git_buf_detach(i32*) #1

declare dso_local i8* @git__strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
