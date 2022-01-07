; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_driver.c_diff_context_line__pattern_match.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_driver.c_diff_context_line__pattern_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, i32 }

@REG_NEGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*)* @diff_context_line__pattern_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_context_line__pattern_match(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x %struct.TYPE_13__], align 16
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @git_array_size(i32 %12)
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %71, %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.TYPE_14__* @git_array_get(i32 %21, i64 %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %9, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [2 x %struct.TYPE_13__], [2 x %struct.TYPE_13__]* %8, i64 0, i64 0
  %30 = call i32 @git_regexp_search(i32* %25, i32 %28, i32 2, %struct.TYPE_13__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %70, label %32

32:                                               ; preds = %18
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @REG_NEGATE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %75

40:                                               ; preds = %32
  %41 = getelementptr inbounds [2 x %struct.TYPE_13__], [2 x %struct.TYPE_13__]* %8, i64 0, i64 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 16
  %44 = icmp sge i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %6, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = call i64 @git_buf_cstr(%struct.TYPE_16__* %49)
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds [2 x %struct.TYPE_13__], [2 x %struct.TYPE_13__]* %8, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 16
  %55 = add nsw i64 %50, %54
  %56 = call i32 @git_buf_consume(%struct.TYPE_16__* %48, i64 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds [2 x %struct.TYPE_13__], [2 x %struct.TYPE_13__]* %8, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds [2 x %struct.TYPE_13__], [2 x %struct.TYPE_13__]* %8, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 16
  %66 = sub nsw i64 %61, %65
  %67 = call i32 @git_buf_truncate(%struct.TYPE_16__* %57, i64 %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = call i32 @git_buf_rtrim(%struct.TYPE_16__* %68)
  store i32 1, i32* %3, align 4
  br label %75

70:                                               ; preds = %18
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %6, align 8
  br label %14

74:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %40, %39
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @git_array_size(i32) #1

declare dso_local %struct.TYPE_14__* @git_array_get(i32, i64) #1

declare dso_local i32 @git_regexp_search(i32*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @git_buf_consume(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @git_buf_cstr(%struct.TYPE_16__*) #1

declare dso_local i32 @git_buf_truncate(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
