; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_diff.c_color_printer.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_diff.c_color_printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@colors = common dso_local global i32* null, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_4__*, i8*)* @color_printer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_printer(i32* %0, i32* %1, %struct.TYPE_4__* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %28 [
    i32 133, label %22
    i32 131, label %23
    i32 132, label %24
    i32 130, label %25
    i32 129, label %26
    i32 128, label %27
  ]

22:                                               ; preds = %18
  store i32 3, i32* %10, align 4
  br label %29

23:                                               ; preds = %18
  store i32 2, i32* %10, align 4
  br label %29

24:                                               ; preds = %18
  store i32 3, i32* %10, align 4
  br label %29

25:                                               ; preds = %18
  store i32 2, i32* %10, align 4
  br label %29

26:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %29

27:                                               ; preds = %18
  store i32 4, i32* %10, align 4
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %27, %26, %25, %24, %23, %22
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38, %34
  %42 = load i32*, i32** @colors, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fputs(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32*, i32** @colors, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 @fputs(i32 %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %47, %29
  br label %58

58:                                               ; preds = %57, %4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = load i32, i32* @stdout, align 4
  %63 = call i32 @diff_output(i32* %59, i32* %60, %struct.TYPE_4__* %61, i32 %62)
  ret i32 %63
}

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @diff_output(i32*, i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
