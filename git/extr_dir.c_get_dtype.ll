; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_get_dtype.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_get_dtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }
%struct.index_state = type { i32 }
%struct.stat = type { i32 }

@DT_UNKNOWN = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirent*, %struct.index_state*, i8*, i32)* @get_dtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dtype(%struct.dirent* %0, %struct.index_state* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 4
  store %struct.dirent* %0, %struct.dirent** %6, align 8
  store %struct.index_state* %1, %struct.index_state** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dirent*, %struct.dirent** %6, align 8
  %13 = icmp ne %struct.dirent* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.dirent*, %struct.dirent** %6, align 8
  %16 = call i32 @DTYPE(%struct.dirent* %15)
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @DT_UNKNOWN, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %16, %14 ], [ %18, %17 ]
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @DT_UNKNOWN, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %65

26:                                               ; preds = %19
  %27 = load %struct.index_state*, %struct.index_state** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @get_index_dtype(%struct.index_state* %27, i8* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @DT_UNKNOWN, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %65

36:                                               ; preds = %26
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @lstat(i8* %37, %struct.stat* %11)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %65

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @S_ISREG(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @DT_REG, align 4
  store i32 %48, i32* %5, align 4
  br label %65

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @S_ISDIR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @DT_DIR, align 4
  store i32 %55, i32* %5, align 4
  br label %65

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @S_ISLNK(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @DT_LNK, align 4
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %61, %54, %47, %40, %34, %24
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @DTYPE(%struct.dirent*) #1

declare dso_local i32 @get_index_dtype(%struct.index_state*, i8*, i32) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
