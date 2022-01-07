; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_get_dump_format.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_get_dump_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"memlite\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"members_lite\00", align 1
@TF_MEMLITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"education\00", align 1
@TF_EDUCATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"memshort\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"members_short\00", align 1
@TF_MEMSHORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"memextra\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"members_extra\00", align 1
@TF_MEMEXTRA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"addresses\00", align 1
@TF_ADDRESSES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"groupshort\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"groups_short\00", align 1
@TF_GROUPSHORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"memgroups\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"member_groups\00", align 1
@TF_MEMGROUPS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"military\00", align 1
@TF_MILITARY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@TF_NAMES = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"matches\00", align 1
@TF_MATCHES = common dso_local global i32 0, align 4
@TF_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dump_format(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 12)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @TF_MEMLITE, align 4
  store i32 %12, i32* %2, align 4
  br label %85

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @TF_EDUCATION, align 4
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 13)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* @TF_MEMSHORT, align 4
  store i32 %28, i32* %2, align 4
  br label %85

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 13)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @TF_MEMEXTRA, align 4
  store i32 %38, i32* %2, align 4
  br label %85

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 9)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @TF_ADDRESSES, align 4
  store i32 %44, i32* %2, align 4
  br label %85

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 10)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 12)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @TF_GROUPSHORT, align 4
  store i32 %54, i32* %2, align 4
  br label %85

55:                                               ; preds = %49
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 9)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 13)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* @TF_MEMGROUPS, align 4
  store i32 %64, i32* %2, align 4
  br label %85

65:                                               ; preds = %59
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @TF_MILITARY, align 4
  store i32 %70, i32* %2, align 4
  br label %85

71:                                               ; preds = %65
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @strncmp(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 5)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @TF_NAMES, align 4
  store i32 %76, i32* %2, align 4
  br label %85

77:                                               ; preds = %71
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @strncmp(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 7)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @TF_MATCHES, align 4
  store i32 %82, i32* %2, align 4
  br label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @TF_NONE, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %81, %75, %69, %63, %53, %43, %37, %27, %17, %11
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
