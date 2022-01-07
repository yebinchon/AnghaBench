; ModuleID = '/home/carl/AnghaBench/git/extr_line-range.c_skip_range_arg.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-range.c_skip_range_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @skip_range_arg(i8* %0, %struct.index_state* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.index_state*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.index_state* %1, %struct.index_state** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 58
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 94
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 58
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %2
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.index_state*, %struct.index_state** %5, align 8
  %24 = call i8* @parse_range_funcname(i8* %22, i32* null, i32* null, i32 0, i32 0, i32* null, i32* null, i32* null, %struct.index_state* %23)
  store i8* %24, i8** %3, align 8
  br label %38

25:                                               ; preds = %15, %10
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @parse_loc(i8* %26, i32* null, i32* null, i32 0, i32 -1, i32* null)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 44
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i8* @parse_loc(i8* %34, i32* null, i32* null, i32 0, i32 0, i32* null)
  store i8* %35, i8** %4, align 8
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i8*, i8** %4, align 8
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %36, %21
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i8* @parse_range_funcname(i8*, i32*, i32*, i32, i32, i32*, i32*, i32*, %struct.index_state*) #1

declare dso_local i8* @parse_loc(i8*, i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
