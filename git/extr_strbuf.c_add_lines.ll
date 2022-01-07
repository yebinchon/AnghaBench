; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_add_lines.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_add_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*, i8*, i8*, i64)* @add_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_lines(%struct.strbuf* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  br label %13

13:                                               ; preds = %49, %5
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i8* @memchr(i8* %17, i8 signext 10, i64 %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  br label %29

25:                                               ; preds = %16
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i8* [ %24, %22 ], [ %28, %25 ]
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %33
  %46 = load i8*, i8** %8, align 8
  br label %49

47:                                               ; preds = %39, %29
  %48 = load i8*, i8** %7, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i8* [ %46, %45 ], [ %48, %47 ]
  store i8* %50, i8** %11, align 8
  %51 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @strbuf_addstr(%struct.strbuf* %51, i8* %52)
  %54 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @strbuf_add(%struct.strbuf* %54, i8* %55, i32 %61)
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = load i64, i64* %10, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %10, align 8
  %70 = load i8*, i8** %12, align 8
  store i8* %70, i8** %9, align 8
  br label %13

71:                                               ; preds = %13
  %72 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %73 = call i32 @strbuf_complete_line(%struct.strbuf* %72)
  ret void
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_complete_line(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
