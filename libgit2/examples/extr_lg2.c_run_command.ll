; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_lg2.c_run_command.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_lg2.c_run_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_info = type { i64, i32*, i64 }
%struct.TYPE_2__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error without message\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Bad news:\0A %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i32*, i64, i32*)*, i32*, %struct.args_info*)* @run_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_command(i32 (i32*, i64, i32*)* %0, i32* %1, %struct.args_info* byval(%struct.args_info) align 8 %2) #0 {
  %4 = alloca i32 (i32*, i64, i32*)*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 (i32*, i64, i32*)* %0, i32 (i32*, i64, i32*)** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32 (i32*, i64, i32*)*, i32 (i32*, i64, i32*)** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds %struct.args_info, %struct.args_info* %2, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.args_info, %struct.args_info* %2, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %10, %12
  %14 = getelementptr inbounds %struct.args_info, %struct.args_info* %2, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds %struct.args_info, %struct.args_info* %2, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 %7(i32* %8, i64 %13, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = call %struct.TYPE_2__* (...) @git_error_last()
  %24 = icmp eq %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %34

28:                                               ; preds = %22
  %29 = load i32, i32* @stderr, align 4
  %30 = call %struct.TYPE_2__* (...) @git_error_last()
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %28, %25
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local %struct.TYPE_2__* @git_error_last(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
