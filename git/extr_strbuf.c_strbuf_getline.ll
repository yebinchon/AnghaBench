; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_getline.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_getline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strbuf_getline(%struct.strbuf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @strbuf_getwholeline(%struct.strbuf* %6, i32* %7, i8 signext 10)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EOF, align 4
  store i32 %11, i32* %3, align 4
  br label %58

12:                                               ; preds = %2
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %57

25:                                               ; preds = %12
  %26 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %27 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @strbuf_setlen(%struct.strbuf* %26, i32 %30)
  %32 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %25
  %37 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %39, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %51 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = call i32 @strbuf_setlen(%struct.strbuf* %50, i32 %54)
  br label %56

56:                                               ; preds = %49, %36, %25
  br label %57

57:                                               ; preds = %56, %12
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %10
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @strbuf_getwholeline(%struct.strbuf*, i32*, i8 signext) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
