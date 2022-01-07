; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_handle_duplicate.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_handle_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i64, %struct.ref*, i32 }

@FETCH_HEAD_IGNORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Cannot fetch both %s and %s to %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s usually tracks %s, not %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s tracks both %s and %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*, %struct.ref*)* @handle_duplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_duplicate(%struct.ref* %0, %struct.ref* %1) #0 {
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.ref*, align 8
  store %struct.ref* %0, %struct.ref** %3, align 8
  store %struct.ref* %1, %struct.ref** %4, align 8
  %5 = load %struct.ref*, %struct.ref** %3, align 8
  %6 = getelementptr inbounds %struct.ref, %struct.ref* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ref*, %struct.ref** %4, align 8
  %9 = getelementptr inbounds %struct.ref, %struct.ref* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @strcmp(i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %96

13:                                               ; preds = %2
  %14 = load %struct.ref*, %struct.ref** %3, align 8
  %15 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FETCH_HEAD_IGNORE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.ref*, %struct.ref** %4, align 8
  %21 = getelementptr inbounds %struct.ref, %struct.ref* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FETCH_HEAD_IGNORE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ref*, %struct.ref** %3, align 8
  %28 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ref*, %struct.ref** %4, align 8
  %31 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ref*, %struct.ref** %4, align 8
  %34 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 1
  %35 = load %struct.ref*, %struct.ref** %34, align 8
  %36 = getelementptr inbounds %struct.ref, %struct.ref* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @die(i32 %26, i32 %29, i32 %32, i32 %37)
  br label %95

39:                                               ; preds = %19, %13
  %40 = load %struct.ref*, %struct.ref** %3, align 8
  %41 = getelementptr inbounds %struct.ref, %struct.ref* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FETCH_HEAD_IGNORE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load %struct.ref*, %struct.ref** %4, align 8
  %47 = getelementptr inbounds %struct.ref, %struct.ref* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FETCH_HEAD_IGNORE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.ref*, %struct.ref** %4, align 8
  %54 = getelementptr inbounds %struct.ref, %struct.ref* %53, i32 0, i32 1
  %55 = load %struct.ref*, %struct.ref** %54, align 8
  %56 = getelementptr inbounds %struct.ref, %struct.ref* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ref*, %struct.ref** %4, align 8
  %59 = getelementptr inbounds %struct.ref, %struct.ref* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ref*, %struct.ref** %3, align 8
  %62 = getelementptr inbounds %struct.ref, %struct.ref* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @warning(i32 %52, i32 %57, i32 %60, i32 %63)
  br label %94

65:                                               ; preds = %45, %39
  %66 = load %struct.ref*, %struct.ref** %3, align 8
  %67 = getelementptr inbounds %struct.ref, %struct.ref* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FETCH_HEAD_IGNORE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load %struct.ref*, %struct.ref** %4, align 8
  %73 = getelementptr inbounds %struct.ref, %struct.ref* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FETCH_HEAD_IGNORE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.ref*, %struct.ref** %4, align 8
  %80 = getelementptr inbounds %struct.ref, %struct.ref* %79, i32 0, i32 1
  %81 = load %struct.ref*, %struct.ref** %80, align 8
  %82 = getelementptr inbounds %struct.ref, %struct.ref* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ref*, %struct.ref** %3, align 8
  %85 = getelementptr inbounds %struct.ref, %struct.ref* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ref*, %struct.ref** %4, align 8
  %88 = getelementptr inbounds %struct.ref, %struct.ref* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @die(i32 %78, i32 %83, i32 %86, i32 %89)
  br label %93

91:                                               ; preds = %71, %65
  %92 = call i32 @BUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %77
  br label %94

94:                                               ; preds = %93, %51
  br label %95

95:                                               ; preds = %94, %25
  br label %96

96:                                               ; preds = %95, %2
  %97 = load %struct.ref*, %struct.ref** %4, align 8
  %98 = getelementptr inbounds %struct.ref, %struct.ref* %97, i32 0, i32 1
  %99 = load %struct.ref*, %struct.ref** %98, align 8
  %100 = call i32 @free(%struct.ref* %99)
  %101 = load %struct.ref*, %struct.ref** %4, align 8
  %102 = call i32 @free(%struct.ref* %101)
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @die(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @warning(i32, i32, i32, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @free(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
