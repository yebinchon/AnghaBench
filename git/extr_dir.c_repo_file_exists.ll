; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_repo_file_exists.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_repo_file_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }

@the_repository = common dso_local global %struct.repository* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"do not know how to check file existence in arbitrary repo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_file_exists(%struct.repository* %0, i8* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.repository*, %struct.repository** %3, align 8
  %6 = load %struct.repository*, %struct.repository** @the_repository, align 8
  %7 = icmp ne %struct.repository* %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @BUG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @file_exists(i8* %11)
  ret i32 %12
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @file_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
