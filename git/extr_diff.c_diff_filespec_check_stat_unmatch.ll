; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_filespec_check_stat_unmatch.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_filespec_check_stat_unmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.diff_filepair = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64 }

@CHECK_SIZE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.diff_filepair*)* @diff_filespec_check_stat_unmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_filespec_check_stat_unmatch(%struct.repository* %0, %struct.diff_filepair* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.diff_filepair*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.diff_filepair* %1, %struct.diff_filepair** %5, align 8
  %6 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %7 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %12 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  br label %101

14:                                               ; preds = %2
  %15 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %16 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %18 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %20 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i32 @DIFF_FILE_VALID(%struct.TYPE_5__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %94

24:                                               ; preds = %14
  %25 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %26 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = call i32 @DIFF_FILE_VALID(%struct.TYPE_5__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %94

30:                                               ; preds = %24
  %31 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %32 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %39 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %94, label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %46 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %51 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %49, %54
  br i1 %55, label %94, label %56

56:                                               ; preds = %44
  %57 = load %struct.repository*, %struct.repository** %4, align 8
  %58 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %59 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %58, i32 0, i32 3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* @CHECK_SIZE_ONLY, align 4
  %62 = call i64 @diff_populate_filespec(%struct.repository* %57, %struct.TYPE_5__* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %94, label %64

64:                                               ; preds = %56
  %65 = load %struct.repository*, %struct.repository** %4, align 8
  %66 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %67 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* @CHECK_SIZE_ONLY, align 4
  %70 = call i64 @diff_populate_filespec(%struct.repository* %65, %struct.TYPE_5__* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %64
  %73 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %74 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %73, i32 0, i32 3
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %79 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %77, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %72
  %85 = load %struct.repository*, %struct.repository** %4, align 8
  %86 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %87 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %86, i32 0, i32 3
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %90 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = call i32 @diff_filespec_is_identical(%struct.repository* %85, %struct.TYPE_5__* %88, %struct.TYPE_5__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %84, %72, %64, %56, %44, %37, %24, %14
  %95 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %96 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %84
  %98 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  %99 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %10
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @DIFF_FILE_VALID(%struct.TYPE_5__*) #1

declare dso_local i64 @diff_populate_filespec(%struct.repository*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @diff_filespec_is_identical(%struct.repository*, %struct.TYPE_5__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
