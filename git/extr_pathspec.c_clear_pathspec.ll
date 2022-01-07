; ModuleID = '/home/carl/AnghaBench/git/extr_pathspec.c_clear_pathspec.c'
source_filename = "/home/carl/AnghaBench/git/extr_pathspec.c_clear_pathspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_pathspec(%struct.pathspec* %0) #0 {
  %2 = alloca %struct.pathspec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pathspec* %0, %struct.pathspec** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %89, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %8 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %92

11:                                               ; preds = %5
  %12 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %13 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @free(%struct.TYPE_3__* %19)
  %21 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %22 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @free(%struct.TYPE_3__* %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %56, %11
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %33 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %31, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %30
  %42 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %43 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i32 @free(%struct.TYPE_3__* %54)
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %30

59:                                               ; preds = %30
  %60 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %61 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = call i32 @free(%struct.TYPE_3__* %67)
  %69 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %70 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %59
  %79 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %80 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @attr_check_free(i64 %86)
  br label %88

88:                                               ; preds = %78, %59
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %5

92:                                               ; preds = %5
  %93 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %94 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = call i32 @FREE_AND_NULL(%struct.TYPE_4__* %95)
  %97 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %98 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  ret void
}

declare dso_local i32 @free(%struct.TYPE_3__*) #1

declare dso_local i32 @attr_check_free(i64) #1

declare dso_local i32 @FREE_AND_NULL(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
