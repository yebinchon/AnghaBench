; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_set_version.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_set_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@INDEX_VERSION_NUMBER_LB = common dso_local global i32 0, align 4
@INDEX_VERSION_NUMBER_UB = common dso_local global i32 0, align 4
@GIT_ERROR_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid version number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_set_version(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = call i32 @assert(%struct.TYPE_4__* %6)
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @INDEX_VERSION_NUMBER_LB, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @INDEX_VERSION_NUMBER_UB, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %17 = call i32 @git_error_set(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %22

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
