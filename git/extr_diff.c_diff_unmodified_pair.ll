; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_unmodified_pair.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_unmodified_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.diff_filespec*, %struct.diff_filespec* }
%struct.diff_filespec = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_unmodified_pair(%struct.diff_filepair* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.diff_filepair*, align 8
  %4 = alloca %struct.diff_filespec*, align 8
  %5 = alloca %struct.diff_filespec*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %3, align 8
  %6 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %7 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %6, i32 0, i32 1
  %8 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  store %struct.diff_filespec* %8, %struct.diff_filespec** %4, align 8
  %9 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %10 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %9, i32 0, i32 0
  %11 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  store %struct.diff_filespec* %11, %struct.diff_filespec** %5, align 8
  %12 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %13 = call i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

16:                                               ; preds = %1
  %17 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %18 = call i64 @DIFF_FILE_VALID(%struct.diff_filespec* %17)
  %19 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %20 = call i64 @DIFF_FILE_VALID(%struct.diff_filespec* %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %35, label %22

22:                                               ; preds = %16
  %23 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %24 = call i64 @DIFF_PAIR_MODE_CHANGED(%struct.diff_filepair* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %28 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %31 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @strcmp(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26, %22, %16
  store i32 0, i32* %2, align 4
  br label %76

36:                                               ; preds = %26
  %37 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %38 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %43 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %48 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %47, i32 0, i32 2
  %49 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %50 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %49, i32 0, i32 2
  %51 = call i64 @oideq(i32* %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %55 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %60 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %76

64:                                               ; preds = %58, %53, %46, %41, %36
  %65 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %66 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %71 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 1, i32* %2, align 4
  br label %76

75:                                               ; preds = %69, %64
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %74, %63, %35, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair*) #1

declare dso_local i64 @DIFF_FILE_VALID(%struct.diff_filespec*) #1

declare dso_local i64 @DIFF_PAIR_MODE_CHANGED(%struct.diff_filepair*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @oideq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
