; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_parse_opt_merge_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_parse_opt_merge_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, %struct.ref_filter* }
%struct.ref_filter = type { i32, i64 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"option `%s' is incompatible with --merged\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"option `%s' is incompatible with --no-merged\00", align 1
@REF_FILTER_MERGED_OMIT = common dso_local global i64 0, align 8
@REF_FILTER_MERGED_INCLUDE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"malformed object name %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"option `%s' must point to a commit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_merge_filter(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref_filter*, align 8
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.option*, %struct.option** %5, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 1
  %13 = load %struct.ref_filter*, %struct.ref_filter** %12, align 8
  store %struct.ref_filter* %13, %struct.ref_filter** %8, align 8
  %14 = load %struct.option*, %struct.option** %5, align 8
  %15 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @starts_with(i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @BUG_ON_OPT_NEG(i32 %18)
  %20 = load %struct.ref_filter*, %struct.ref_filter** %8, align 8
  %21 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.option*, %struct.option** %5, align 8
  %30 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @error(i32 %28, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %73

33:                                               ; preds = %24
  %34 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.option*, %struct.option** %5, align 8
  %36 = getelementptr inbounds %struct.option, %struct.option* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @error(i32 %34, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %73

39:                                               ; preds = %3
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* @REF_FILTER_MERGED_OMIT, align 8
  br label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @REF_FILTER_MERGED_INCLUDE, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.ref_filter*, %struct.ref_filter** %8, align 8
  %49 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @get_oid(i8* %50, %struct.object_id* %9)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @die(i32 %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i32, i32* @the_repository, align 4
  %59 = call i32 @lookup_commit_reference_gently(i32 %58, %struct.object_id* %9, i32 0)
  %60 = load %struct.ref_filter*, %struct.ref_filter** %8, align 8
  %61 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ref_filter*, %struct.ref_filter** %8, align 8
  %63 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %57
  %67 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %struct.option*, %struct.option** %5, align 8
  %69 = getelementptr inbounds %struct.option, %struct.option* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @error(i32 %67, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %66, %33, %27
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @starts_with(i32, i8*) #1

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
