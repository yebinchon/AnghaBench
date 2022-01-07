; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_remote.c_usage.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_remote.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"usage: remote add <name> <url>\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"       remote remove <name>\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"       remote rename <old> <new>\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"       remote set-url [--push] <name> <newurl>\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"       remote show [-v|--verbose]\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\0A%s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fputs(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fputs(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %22)
  br label %36

24:                                               ; preds = %17, %2
  %25 = load i8*, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %32, i8* %33)
  br label %35

35:                                               ; preds = %30, %27, %24
  br label %36

36:                                               ; preds = %35, %20
  %37 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
