; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_is_repository_shallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_is_repository_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"bad shallow line: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_repository_shallow(%struct.repository* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repository*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  %8 = load %struct.repository*, %struct.repository** %3, align 8
  %9 = getelementptr inbounds %struct.repository, %struct.repository* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.repository*, %struct.repository** %3, align 8
  %14 = getelementptr inbounds %struct.repository, %struct.repository* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.repository*, %struct.repository** %3, align 8
  %21 = getelementptr inbounds %struct.repository, %struct.repository* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %2, align 4
  br label %91

25:                                               ; preds = %1
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.repository*, %struct.repository** %3, align 8
  %30 = call i8* @git_path_shallow(%struct.repository* %29)
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = call i32* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %37, i32** %4, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %35, %31
  %40 = load %struct.repository*, %struct.repository** %3, align 8
  %41 = getelementptr inbounds %struct.repository, %struct.repository* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @stat_validity_clear(i32 %44)
  %46 = load %struct.repository*, %struct.repository** %3, align 8
  %47 = getelementptr inbounds %struct.repository, %struct.repository* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = load %struct.repository*, %struct.repository** %3, align 8
  %51 = getelementptr inbounds %struct.repository, %struct.repository* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %2, align 4
  br label %91

55:                                               ; preds = %35
  %56 = load %struct.repository*, %struct.repository** %3, align 8
  %57 = getelementptr inbounds %struct.repository, %struct.repository* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @fileno(i32* %61)
  %63 = call i32 @stat_validity_update(i32 %60, i32 %62)
  %64 = load %struct.repository*, %struct.repository** %3, align 8
  %65 = getelementptr inbounds %struct.repository, %struct.repository* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %80, %55
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %70 = load i32*, i32** %4, align 8
  %71 = call i64 @fgets(i8* %69, i32 1024, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %75 = call i64 @get_oid_hex(i8* %74, %struct.object_id* %7)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %79 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.repository*, %struct.repository** %3, align 8
  %82 = call i32 @register_shallow(%struct.repository* %81, %struct.object_id* %7)
  br label %68

83:                                               ; preds = %68
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @fclose(i32* %84)
  %86 = load %struct.repository*, %struct.repository** %3, align 8
  %87 = getelementptr inbounds %struct.repository, %struct.repository* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %83, %39, %19
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i8* @git_path_shallow(%struct.repository*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @stat_validity_clear(i32) #1

declare dso_local i32 @stat_validity_update(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @register_shallow(%struct.repository*, %struct.object_id*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
