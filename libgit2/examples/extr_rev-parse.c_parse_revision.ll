; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_rev-parse.c_parse_revision.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_rev-parse.c_parse_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_state = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Could not parse\00", align 1
@GIT_REVPARSE_SINGLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GIT_REVPARSE_RANGE = common dso_local global i32 0, align 4
@GIT_REVPARSE_MERGE_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Could not find merge base\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"^%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Invalid results from git_revparse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.parse_state*)* @parse_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_revision(i32* %0, %struct.parse_state* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.parse_state*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.parse_state* %1, %struct.parse_state** %4, align 8
  %9 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.parse_state*, %struct.parse_state** %4, align 8
  %16 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @git_revparse(%struct.TYPE_3__* %5, i32* %14, i32 %17)
  %19 = load %struct.parse_state*, %struct.parse_state** %4, align 8
  %20 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @check_lg2(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GIT_REVPARSE_SINGLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = trunc i64 %11 to i32
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @git_object_id(i32 %31)
  %33 = call i32 @git_oid_tostr(i8* %13, i32 %29, i32* %32)
  %34 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @git_object_free(i32 %36)
  br label %91

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GIT_REVPARSE_RANGE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %85

44:                                               ; preds = %38
  %45 = trunc i64 %11 to i32
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @git_object_id(i32 %47)
  %49 = call i32 @git_oid_tostr(i8* %13, i32 %45, i32* %48)
  %50 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @git_object_free(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GIT_REVPARSE_MERGE_BASE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %44
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32* @git_object_id(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @git_object_id(i32 %65)
  %67 = call i32 @git_merge_base(i32* %8, i32* %60, i32* %63, i32* %66)
  %68 = load %struct.parse_state*, %struct.parse_state** %4, align 8
  %69 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @check_lg2(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = trunc i64 %11 to i32
  %73 = call i32 @git_oid_tostr(i8* %13, i32 %72, i32* %8)
  %74 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %75

75:                                               ; preds = %59, %44
  %76 = trunc i64 %11 to i32
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32* @git_object_id(i32 %78)
  %80 = call i32 @git_oid_tostr(i8* %13, i32 %76, i32* %79)
  %81 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @git_object_free(i32 %83)
  br label %90

85:                                               ; preds = %38
  %86 = load %struct.parse_state*, %struct.parse_state** %4, align 8
  %87 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %75
  br label %91

91:                                               ; preds = %90, %28
  %92 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_lg2(i32, i8*, i32) #2

declare dso_local i32 @git_revparse(%struct.TYPE_3__*, i32*, i32) #2

declare dso_local i32 @git_oid_tostr(i8*, i32, i32*) #2

declare dso_local i32* @git_object_id(i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @git_object_free(i32) #2

declare dso_local i32 @git_merge_base(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @fatal(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
