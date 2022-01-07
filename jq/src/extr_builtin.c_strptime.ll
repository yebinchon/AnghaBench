; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_strptime.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_strptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%Y-%m-%dT%H:%M:%SZ\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%d-%d-%dT%d:%d:%d%n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.tm*)* @strptime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strptime(i8* %0, i8* %1, %struct.tm* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tm* %2, %struct.tm** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %54

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.tm*, %struct.tm** %7, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  %18 = load %struct.tm*, %struct.tm** %7, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 1
  %20 = load %struct.tm*, %struct.tm** %7, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 5
  %22 = load %struct.tm*, %struct.tm** %7, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 4
  %24 = load %struct.tm*, %struct.tm** %7, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 3
  %26 = load %struct.tm*, %struct.tm** %7, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 2
  %28 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %17, i32* %19, i32* %21, i32* %23, i32* %25, i32* %27, i32* %9)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %31, label %53

31:                                               ; preds = %14
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 90
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.tm*, %struct.tm** %7, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1900
  store i32 %43, i32* %41, align 4
  %44 = load %struct.tm*, %struct.tm** %7, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %52, i8** %4, align 8
  br label %54

53:                                               ; preds = %31, %14
  store i8* null, i8** %4, align 8
  br label %54

54:                                               ; preds = %53, %39, %13
  %55 = load i8*, i8** %4, align 8
  ret i8* %55
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
