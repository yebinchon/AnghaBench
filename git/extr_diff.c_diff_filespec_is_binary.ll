; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_filespec_is_binary.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_filespec_is_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.diff_filespec = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CHECK_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_filespec_is_binary(%struct.repository* %0, %struct.diff_filespec* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.diff_filespec*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %4, align 8
  %5 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %6 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %73

9:                                                ; preds = %2
  %10 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %11 = load %struct.repository*, %struct.repository** %3, align 8
  %12 = getelementptr inbounds %struct.repository, %struct.repository* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @diff_filespec_load_driver(%struct.diff_filespec* %10, i32 %13)
  %15 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %16 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %29

21:                                               ; preds = %9
  %22 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %23 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %28 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %72

29:                                               ; preds = %9
  %30 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %31 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %36 = call i64 @DIFF_FILE_VALID(%struct.diff_filespec* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.repository*, %struct.repository** %3, align 8
  %40 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %41 = load i32, i32* @CHECK_BINARY, align 4
  %42 = call i32 @diff_populate_filespec(%struct.repository* %39, %struct.diff_filespec* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %34, %29
  %44 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %45 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %50 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %55 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %58 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @buffer_is_binary(i64 %56, i32 %59)
  %61 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %62 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %53, %48, %43
  %64 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %65 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %70 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71, %21
  br label %73

73:                                               ; preds = %72, %2
  %74 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %75 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  ret i32 %76
}

declare dso_local i32 @diff_filespec_load_driver(%struct.diff_filespec*, i32) #1

declare dso_local i64 @DIFF_FILE_VALID(%struct.diff_filespec*) #1

declare dso_local i32 @diff_populate_filespec(%struct.repository*, %struct.diff_filespec*, i32) #1

declare dso_local i32 @buffer_is_binary(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
