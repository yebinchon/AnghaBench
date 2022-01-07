; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_check_typos.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_check_typos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64, i8* }

@.str = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"did you mean `--%s` (with two dashes ?)\00", align 1
@OPTION_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.option*)* @check_typos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_typos(i8* %0, %struct.option* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.option*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.option* %1, %struct.option** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %47

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @starts_with(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @error(i32 %14, i8* %15)
  %17 = call i32 @exit(i32 129) #3
  unreachable

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %44, %18
  %20 = load %struct.option*, %struct.option** %4, align 8
  %21 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OPTION_END, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load %struct.option*, %struct.option** %4, align 8
  %27 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %44

31:                                               ; preds = %25
  %32 = load %struct.option*, %struct.option** %4, align 8
  %33 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @starts_with(i8* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @error(i32 %39, i8* %40)
  %42 = call i32 @exit(i32 129) #3
  unreachable

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.option*, %struct.option** %4, align 8
  %46 = getelementptr inbounds %struct.option, %struct.option* %45, i32 1
  store %struct.option* %46, %struct.option** %4, align 8
  br label %19

47:                                               ; preds = %8, %19
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

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
