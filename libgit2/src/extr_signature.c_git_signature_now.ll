; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_signature.c_git_signature_now.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_signature.c_git_signature_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_signature_now(i32** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.tm, align 4
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32**, i32*** %5, align 8
  store i32* null, i32** %13, align 8
  %14 = call i32 @time(i32* %8)
  %15 = call %struct.tm* @p_gmtime_r(i32* %8, %struct.tm* %12)
  store %struct.tm* %15, %struct.tm** %10, align 8
  %16 = load %struct.tm*, %struct.tm** %10, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.tm*, %struct.tm** %10, align 8
  %20 = call i32 @mktime(%struct.tm* %19)
  %21 = call i64 @difftime(i32 %18, i32 %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sdiv i32 %23, 60
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @git_signature_new(i32** %11, i8* %25, i8* %26, i32 %27, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32*, i32** %11, align 8
  %34 = load i32**, i32*** %5, align 8
  store i32* %33, i32** %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @p_gmtime_r(i32*, %struct.tm*) #1

declare dso_local i64 @difftime(i32, i32) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i64 @git_signature_new(i32**, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
