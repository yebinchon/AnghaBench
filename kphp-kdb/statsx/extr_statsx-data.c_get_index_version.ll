; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_index_version.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_index_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATSX_INDEX_MAGIC_OLD = common dso_local global i32 0, align 4
@custom_version_names = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"index file key [-x] is not as in index\0A\00", align 1
@index_version = common dso_local global i32 0, align 4
@STATSX_INDEX_MAGIC_V1 = common dso_local global i32 0, align 4
@STATSX_INDEX_MAGIC_V2 = common dso_local global i32 0, align 4
@STATSX_INDEX_MAGIC_V3 = common dso_local global i32 0, align 4
@STATSX_INDEX_MAGIC_V4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown index magic %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_index_version(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @STATSX_INDEX_MAGIC_OLD, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @STATSX_INDEX_MAGIC_OLD, align 4
  %10 = sub nsw i32 %8, %9
  %11 = load i32, i32* @custom_version_names, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %91

15:                                               ; preds = %7
  store i32 0, i32* @index_version, align 4
  store i32 0, i32* %2, align 4
  br label %91

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @STATSX_INDEX_MAGIC_V1, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @STATSX_INDEX_MAGIC_V1, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %20, %16
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @STATSX_INDEX_MAGIC_V1, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* @custom_version_names, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %91

33:                                               ; preds = %25
  store i32 1, i32* @index_version, align 4
  store i32 1, i32* %2, align 4
  br label %91

34:                                               ; preds = %20
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @STATSX_INDEX_MAGIC_V2, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @STATSX_INDEX_MAGIC_V2, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %38, %34
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @STATSX_INDEX_MAGIC_V2, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* @custom_version_names, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %91

51:                                               ; preds = %43
  store i32 2, i32* @index_version, align 4
  store i32 2, i32* %2, align 4
  br label %91

52:                                               ; preds = %38
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @STATSX_INDEX_MAGIC_V3, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @STATSX_INDEX_MAGIC_V3, align 4
  %59 = add nsw i32 %58, 1
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %56, %52
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @STATSX_INDEX_MAGIC_V3, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* @custom_version_names, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %91

69:                                               ; preds = %61
  store i32 3, i32* @index_version, align 4
  store i32 3, i32* %2, align 4
  br label %91

70:                                               ; preds = %56
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @STATSX_INDEX_MAGIC_V4, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @STATSX_INDEX_MAGIC_V4, align 4
  %77 = add nsw i32 %76, 1
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %74, %70
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @STATSX_INDEX_MAGIC_V4, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* @custom_version_names, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %91

87:                                               ; preds = %79
  store i32 4, i32* @index_version, align 4
  store i32 4, i32* %2, align 4
  br label %91

88:                                               ; preds = %74
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  store i32 -1, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %87, %85, %69, %67, %51, %49, %33, %31, %15, %13
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
