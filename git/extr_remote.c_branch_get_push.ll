; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_branch_get_push.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_branch_get_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i8* }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"HEAD does not point to a branch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @branch_get_push(%struct.branch* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.branch*, align 8
  %5 = alloca %struct.strbuf*, align 8
  store %struct.branch* %0, %struct.branch** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %6 = load %struct.branch*, %struct.branch** %4, align 8
  %7 = icmp ne %struct.branch* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %10 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = call i8* @error_buf(%struct.strbuf* %9, i32 %10)
  store i8* %11, i8** %3, align 8
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.branch*, %struct.branch** %4, align 8
  %14 = getelementptr inbounds %struct.branch, %struct.branch* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load %struct.branch*, %struct.branch** %4, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = call i8* @branch_get_push_1(%struct.branch* %18, %struct.strbuf* %19)
  %21 = load %struct.branch*, %struct.branch** %4, align 8
  %22 = getelementptr inbounds %struct.branch, %struct.branch* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %17, %12
  %24 = load %struct.branch*, %struct.branch** %4, align 8
  %25 = getelementptr inbounds %struct.branch, %struct.branch* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %23, %8
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i8* @error_buf(%struct.strbuf*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @branch_get_push_1(%struct.branch*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
