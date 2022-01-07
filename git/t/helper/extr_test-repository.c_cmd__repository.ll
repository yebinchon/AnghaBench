; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-repository.c_cmd__repository.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-repository.c_cmd__repository.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"must have at least 2 arguments\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"parse_commit_in_graph\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"not enough arguments\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"cannot parse oid '%s'\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"get_commit_tree_in_graph\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"unrecognized '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__repository(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.object_id, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 5
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 4
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 4
  %28 = call i64 @parse_oid_hex(i8* %25, %struct.object_id* %5, i8** %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i8**, i8*** %4, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 4
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %30, %22
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @test_parse_commit_in_graph(i8* %38, i8* %41, %struct.object_id* %5)
  br label %81

43:                                               ; preds = %11
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %75, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 5
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i8**, i8*** %4, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 4
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** %4, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 4
  %60 = call i64 @parse_oid_hex(i8* %57, %struct.object_id* %6, i8** %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 4
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %62, %54
  %68 = load i8**, i8*** %4, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 2
  %70 = load i8*, i8** %69, align 8
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @test_get_commit_tree_in_graph(i8* %70, i8* %73, %struct.object_id* %6)
  br label %80

75:                                               ; preds = %43
  %76 = load i8**, i8*** %4, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %75, %67
  br label %81

81:                                               ; preds = %80, %35
  ret i32 0
}

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local i32 @test_parse_commit_in_graph(i8*, i8*, %struct.object_id*) #1

declare dso_local i32 @test_get_commit_tree_in_graph(i8*, i8*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
