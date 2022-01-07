; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_ptraceomatic.c_step.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_ptraceomatic.c_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTRACE_SINGLESTEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ptrace step\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"wait step\00", align 1
@SIGTRAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"child received signal %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @step(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @PTRACE_SINGLESTEP, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ptrace(i32 %6, i32 %7, i32* null, i32 0)
  %9 = call i32 @trycall(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @waitpid(i32 %10, i32* %4, i32 0)
  %12 = call i32 @trycall(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @WIFSTOPPED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @WSTOPSIG(i32 %17)
  %19 = load i32, i32* @SIGTRAP, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @WSTOPSIG(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @PTRACE_SINGLESTEP, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ptrace(i32 %26, i32 %27, i32* null, i32 %28)
  %30 = call i32 @trycall(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @waitpid(i32 %31, i32* %4, i32 0)
  %33 = call i32 @trycall(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %35

34:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @trycall(i32, i8*) #1

declare dso_local i32 @ptrace(i32, i32, i32*, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i32 @WSTOPSIG(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
