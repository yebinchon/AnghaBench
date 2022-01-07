; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_output_color.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_output_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32 (%struct.grep_opt*, i8*, i64)*, i32 }

@GIT_COLOR_RESET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_opt*, i8*, i64, i8*)* @output_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_color(%struct.grep_opt* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.grep_opt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %10 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @want_color(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %25 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %24, i32 0, i32 0
  %26 = load i32 (%struct.grep_opt*, i8*, i64)*, i32 (%struct.grep_opt*, i8*, i64)** %25, align 8
  %27 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = call i32 %26(%struct.grep_opt* %27, i8* %28, i64 %31)
  %33 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %34 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %33, i32 0, i32 0
  %35 = load i32 (%struct.grep_opt*, i8*, i64)*, i32 (%struct.grep_opt*, i8*, i64)** %34, align 8
  %36 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 %35(%struct.grep_opt* %36, i8* %37, i64 %38)
  %40 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %41 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %40, i32 0, i32 0
  %42 = load i32 (%struct.grep_opt*, i8*, i64)*, i32 (%struct.grep_opt*, i8*, i64)** %41, align 8
  %43 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %44 = load i8*, i8** @GIT_COLOR_RESET, align 8
  %45 = load i8*, i8** @GIT_COLOR_RESET, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = sext i32 %46 to i64
  %48 = call i32 %42(%struct.grep_opt* %43, i8* %44, i64 %47)
  br label %57

49:                                               ; preds = %17, %14, %4
  %50 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %51 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %50, i32 0, i32 0
  %52 = load i32 (%struct.grep_opt*, i8*, i64)*, i32 (%struct.grep_opt*, i8*, i64)** %51, align 8
  %53 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 %52(%struct.grep_opt* %53, i8* %54, i64 %55)
  br label %57

57:                                               ; preds = %49, %23
  ret void
}

declare dso_local i64 @want_color(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
