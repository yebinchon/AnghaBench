; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_branch_get_upstream.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_branch_get_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { %struct.TYPE_2__**, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"HEAD does not point to a branch\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no such branch: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"no upstream configured for branch '%s'\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"upstream branch '%s' not stored as a remote-tracking branch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @branch_get_upstream(%struct.branch* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.branch*, align 8
  %5 = alloca %struct.strbuf*, align 8
  store %struct.branch* %0, %struct.branch** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %6 = load %struct.branch*, %struct.branch** %4, align 8
  %7 = icmp ne %struct.branch* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %10 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = call i8* (%struct.strbuf*, i32, ...) @error_buf(%struct.strbuf* %9, i32 %10)
  store i8* %11, i8** %3, align 8
  br label %72

12:                                               ; preds = %2
  %13 = load %struct.branch*, %struct.branch** %4, align 8
  %14 = getelementptr inbounds %struct.branch, %struct.branch* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = icmp ne %struct.TYPE_2__** %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.branch*, %struct.branch** %4, align 8
  %19 = getelementptr inbounds %struct.branch, %struct.branch* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %17, %12
  %25 = load %struct.branch*, %struct.branch** %4, align 8
  %26 = getelementptr inbounds %struct.branch, %struct.branch* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ref_exists(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %32 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.branch*, %struct.branch** %4, align 8
  %34 = getelementptr inbounds %struct.branch, %struct.branch* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i8* (%struct.strbuf*, i32, ...) @error_buf(%struct.strbuf* %31, i32 %32, i32 %35)
  store i8* %36, i8** %3, align 8
  br label %72

37:                                               ; preds = %24
  %38 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %39 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.branch*, %struct.branch** %4, align 8
  %41 = getelementptr inbounds %struct.branch, %struct.branch* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* (%struct.strbuf*, i32, ...) @error_buf(%struct.strbuf* %38, i32 %39, i32 %42)
  store i8* %43, i8** %3, align 8
  br label %72

44:                                               ; preds = %17
  %45 = load %struct.branch*, %struct.branch** %4, align 8
  %46 = getelementptr inbounds %struct.branch, %struct.branch* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %44
  %54 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %55 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.branch*, %struct.branch** %4, align 8
  %57 = getelementptr inbounds %struct.branch, %struct.branch* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i8* (%struct.strbuf*, i32, ...) @error_buf(%struct.strbuf* %54, i32 %55, i32 %62)
  store i8* %63, i8** %3, align 8
  br label %72

64:                                               ; preds = %44
  %65 = load %struct.branch*, %struct.branch** %4, align 8
  %66 = getelementptr inbounds %struct.branch, %struct.branch* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %67, i64 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %3, align 8
  br label %72

72:                                               ; preds = %64, %53, %37, %30, %8
  %73 = load i8*, i8** %3, align 8
  ret i8* %73
}

declare dso_local i8* @error_buf(%struct.strbuf*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ref_exists(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
