; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_adjust_git_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_adjust_git_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.strbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"grafts\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@git_hooks_path = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"hooks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.strbuf*, i32)* @adjust_git_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_git_path(%struct.repository* %0, %struct.strbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %9 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @is_dir_file(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.repository*, %struct.repository** %4, align 8
  %23 = getelementptr inbounds %struct.repository, %struct.repository* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.repository*, %struct.repository** %4, align 8
  %26 = getelementptr inbounds %struct.repository, %struct.repository* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strlen(i32 %27)
  %29 = call i32 @strbuf_splice(%struct.strbuf* %18, i32 0, i32 %21, i32 %24, i32 %28)
  br label %92

30:                                               ; preds = %3
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %36 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.repository*, %struct.repository** %4, align 8
  %40 = getelementptr inbounds %struct.repository, %struct.repository* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.repository*, %struct.repository** %4, align 8
  %43 = getelementptr inbounds %struct.repository, %struct.repository* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strlen(i32 %44)
  %46 = call i32 @strbuf_splice(%struct.strbuf* %35, i32 0, i32 %38, i32 %41, i32 %45)
  br label %91

47:                                               ; preds = %30
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @dir_prefix(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 7
  %55 = load %struct.repository*, %struct.repository** %4, align 8
  %56 = getelementptr inbounds %struct.repository, %struct.repository* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @replace_dir(%struct.strbuf* %52, i32 %54, i64 %61)
  br label %90

63:                                               ; preds = %47
  %64 = load i64, i64* @git_hooks_path, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @dir_prefix(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 5
  %74 = load i64, i64* @git_hooks_path, align 8
  %75 = call i32 @replace_dir(%struct.strbuf* %71, i32 %73, i64 %74)
  br label %89

76:                                               ; preds = %66, %63
  %77 = load %struct.repository*, %struct.repository** %4, align 8
  %78 = getelementptr inbounds %struct.repository, %struct.repository* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.repository*, %struct.repository** %4, align 8
  %85 = getelementptr inbounds %struct.repository, %struct.repository* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @update_common_dir(%struct.strbuf* %82, i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %81, %76
  br label %89

89:                                               ; preds = %88, %70
  br label %90

90:                                               ; preds = %89, %51
  br label %91

91:                                               ; preds = %90, %34
  br label %92

92:                                               ; preds = %91, %17
  ret void
}

declare dso_local i64 @is_dir_file(i8*, i8*, i8*) #1

declare dso_local i32 @strbuf_splice(%struct.strbuf*, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @dir_prefix(i8*, i8*) #1

declare dso_local i32 @replace_dir(%struct.strbuf*, i32, i64) #1

declare dso_local i32 @update_common_dir(%struct.strbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
