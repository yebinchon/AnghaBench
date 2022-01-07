; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_getwholeline.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_getwholeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32*, i64 }

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strbuf_getwholeline(%struct.strbuf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = call i64 @feof(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @EOF, align 4
  store i32 %13, i32* %4, align 4
  br label %67

14:                                               ; preds = %3
  %15 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %16 = call i32 @strbuf_reset(%struct.strbuf* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @flockfile(i32* %17)
  br label %19

19:                                               ; preds = %45, %14
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @getc_unlocked(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @EOF, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %26 = call i32 @strbuf_avail(%struct.strbuf* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %30 = call i32 @strbuf_grow(%struct.strbuf* %29, i32 1)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %32, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %46

45:                                               ; preds = %31
  br label %19

46:                                               ; preds = %44, %19
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @funlockfile(i32* %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @EOF, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @EOF, align 4
  store i32 %58, i32* %4, align 4
  br label %67

59:                                               ; preds = %52, %46
  %60 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 0, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %59, %57, %12
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @flockfile(i32*) #1

declare dso_local i32 @getc_unlocked(i32*) #1

declare dso_local i32 @strbuf_avail(%struct.strbuf*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @funlockfile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
