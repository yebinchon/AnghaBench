; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_branch_get.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_branch_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@current_branch = common dso_local global %struct.branch* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.branch* @branch_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.branch*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @read_config()
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11, %7, %1
  %16 = load %struct.branch*, %struct.branch** @current_branch, align 8
  store %struct.branch* %16, %struct.branch** %3, align 8
  br label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** %2, align 8
  %19 = call %struct.branch* @make_branch(i8* %18, i32 0)
  store %struct.branch* %19, %struct.branch** %3, align 8
  br label %20

20:                                               ; preds = %17, %15
  %21 = load %struct.branch*, %struct.branch** %3, align 8
  %22 = call i32 @set_merge(%struct.branch* %21)
  %23 = load %struct.branch*, %struct.branch** %3, align 8
  ret %struct.branch* %23
}

declare dso_local i32 @read_config(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.branch* @make_branch(i8*, i32) #1

declare dso_local i32 @set_merge(%struct.branch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
