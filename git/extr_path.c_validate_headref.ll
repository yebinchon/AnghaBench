; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_validate_headref.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_validate_headref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ref:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_headref(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @lstat(i8* %10, %struct.stat* %4)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %75

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISLNK(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %22 = call i32 @readlink(i8* %20, i8* %21, i32 255)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 5
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %27 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26, i32 5)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %75

30:                                               ; preds = %25, %19
  store i32 -1, i32* %2, align 4
  br label %75

31:                                               ; preds = %14
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* @O_RDONLY, align 4
  %34 = call i32 @open(i8* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %75

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %41 = call i32 @read_in_full(i32 %39, i8* %40, i32 255)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %75

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %49
  store i8 0, i8* %50, align 1
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %52 = call i64 @skip_prefix(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %60, %54
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @isspace(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  br label %55

63:                                               ; preds = %55
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @starts_with(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %75

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %47
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %71 = call i32 @get_oid_hex(i8* %70, %struct.object_id* %7)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %75

74:                                               ; preds = %69
  store i32 -1, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %73, %67, %46, %37, %30, %29, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @readlink(i8*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read_in_full(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @get_oid_hex(i8*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
