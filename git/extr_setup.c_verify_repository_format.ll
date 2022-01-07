; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_verify_repository_format.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_verify_repository_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository_format = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.strbuf = type { i32 }

@GIT_REPO_VERSION_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Expected git repo version <= %d, found %d\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unknown repository extensions found:\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_repository_format(%struct.repository_format* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository_format*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.repository_format* %0, %struct.repository_format** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %7 = load i32, i32* @GIT_REPO_VERSION_READ, align 4
  %8 = load %struct.repository_format*, %struct.repository_format** %4, align 8
  %9 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %14 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load i32, i32* @GIT_REPO_VERSION_READ, align 4
  %18 = load %struct.repository_format*, %struct.repository_format** %4, align 8
  %19 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %13, i8* %16, i32 %17, i32 %20)
  store i32 -1, i32* %3, align 4
  br label %61

22:                                               ; preds = %2
  %23 = load %struct.repository_format*, %struct.repository_format** %4, align 8
  %24 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 1
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load %struct.repository_format*, %struct.repository_format** %4, align 8
  %29 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %27
  %34 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %35 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @strbuf_addstr(%struct.strbuf* %34, i32 %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %56, %33
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.repository_format*, %struct.repository_format** %4, align 8
  %40 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %46 = load %struct.repository_format*, %struct.repository_format** %4, align 8
  %47 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %37

59:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %61

60:                                               ; preds = %27, %22
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
