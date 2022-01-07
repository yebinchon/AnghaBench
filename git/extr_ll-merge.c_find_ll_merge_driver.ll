; ModuleID = '/home/carl/AnghaBench/git/extr_ll-merge.c_find_ll_merge_driver.c'
source_filename = "/home/carl/AnghaBench/git/extr_ll-merge.c_find_ll_merge_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_merge_driver = type { i32, %struct.ll_merge_driver* }

@ll_merge_drv = common dso_local global %struct.ll_merge_driver* null, align 8
@LL_TEXT_MERGE = common dso_local global i64 0, align 8
@LL_BINARY_MERGE = common dso_local global i64 0, align 8
@default_ll_merge = common dso_local global i8* null, align 8
@ll_user_merge = common dso_local global %struct.ll_merge_driver* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ll_merge_driver* (i8*)* @find_ll_merge_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ll_merge_driver* @find_ll_merge_driver(i8* %0) #0 {
  %2 = alloca %struct.ll_merge_driver*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ll_merge_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i32 (...) @initialize_ll_merge()
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @ATTR_TRUE(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** @ll_merge_drv, align 8
  %13 = load i64, i64* @LL_TEXT_MERGE, align 8
  %14 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %12, i64 %13
  store %struct.ll_merge_driver* %14, %struct.ll_merge_driver** %2, align 8
  br label %89

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @ATTR_FALSE(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** @ll_merge_drv, align 8
  %21 = load i64, i64* @LL_BINARY_MERGE, align 8
  %22 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %20, i64 %21
  store %struct.ll_merge_driver* %22, %struct.ll_merge_driver** %2, align 8
  br label %89

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @ATTR_UNSET(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i8*, i8** @default_ll_merge, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** @ll_merge_drv, align 8
  %32 = load i64, i64* @LL_TEXT_MERGE, align 8
  %33 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %31, i64 %32
  store %struct.ll_merge_driver* %33, %struct.ll_merge_driver** %2, align 8
  br label %89

34:                                               ; preds = %27
  %35 = load i8*, i8** @default_ll_merge, align 8
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %34
  br label %39

37:                                               ; preds = %23
  %38 = load i8*, i8** %3, align 8
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %37, %36
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** @ll_user_merge, align 8
  store %struct.ll_merge_driver* %42, %struct.ll_merge_driver** %4, align 8
  br label %43

43:                                               ; preds = %56, %41
  %44 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %4, align 8
  %45 = icmp ne %struct.ll_merge_driver* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %4, align 8
  %48 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strcmp(i32 %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %4, align 8
  store %struct.ll_merge_driver* %54, %struct.ll_merge_driver** %2, align 8
  br label %89

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %4, align 8
  %58 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %57, i32 0, i32 1
  %59 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %58, align 8
  store %struct.ll_merge_driver* %59, %struct.ll_merge_driver** %4, align 8
  br label %43

60:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %82, %60
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** @ll_merge_drv, align 8
  %64 = call i32 @ARRAY_SIZE(%struct.ll_merge_driver* %63)
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** @ll_merge_drv, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %67, i64 %69
  %71 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @strcmp(i32 %72, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %66
  %77 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** @ll_merge_drv, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %77, i64 %79
  store %struct.ll_merge_driver* %80, %struct.ll_merge_driver** %2, align 8
  br label %89

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %61

85:                                               ; preds = %61
  %86 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** @ll_merge_drv, align 8
  %87 = load i64, i64* @LL_TEXT_MERGE, align 8
  %88 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %86, i64 %87
  store %struct.ll_merge_driver* %88, %struct.ll_merge_driver** %2, align 8
  br label %89

89:                                               ; preds = %85, %76, %53, %30, %19, %11
  %90 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %2, align 8
  ret %struct.ll_merge_driver* %90
}

declare dso_local i32 @initialize_ll_merge(...) #1

declare dso_local i64 @ATTR_TRUE(i8*) #1

declare dso_local i64 @ATTR_FALSE(i8*) #1

declare dso_local i64 @ATTR_UNSET(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ll_merge_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
