; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_optbug.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_optbug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"BUG: switch '%c' (--%s) %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"BUG: option '%s' %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"BUG: switch '%c' %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optbug(%struct.option* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.option*, %struct.option** %4, align 8
  %7 = getelementptr inbounds %struct.option, %struct.option* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load %struct.option*, %struct.option** %4, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.option*, %struct.option** %4, align 8
  %17 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.option*, %struct.option** %4, align 8
  %20 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %21, i8* %22)
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %10
  %25 = load %struct.option*, %struct.option** %4, align 8
  %26 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %2
  %31 = load %struct.option*, %struct.option** %4, align 8
  %32 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %24, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @error(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
