; ModuleID = '/home/carl/AnghaBench/git/extr_diff-no-index.c_fixup_paths.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-no-index.c_fixup_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@file_from_standard_input = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.strbuf*)* @fixup_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_paths(i8** %0, %struct.strbuf* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** @file_from_standard_input, align 8
  %11 = icmp eq i8* %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i8**, i8*** %3, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** @file_from_standard_input, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  br label %63

19:                                               ; preds = %12
  %20 = load i8**, i8*** %3, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @is_directory(i8* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i8**, i8*** %3, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @is_directory(i8* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %63

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %37 = load i8**, i8*** %3, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %3, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @append_basename(%struct.strbuf* %36, i8* %39, i8* %42)
  %44 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8**, i8*** %3, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %46, i8** %48, align 8
  br label %63

49:                                               ; preds = %32
  %50 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %51 = load i8**, i8*** %3, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %3, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @append_basename(%struct.strbuf* %50, i8* %53, i8* %56)
  %58 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %3, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %18, %31, %49, %35
  ret void
}

declare dso_local i32 @is_directory(i8*) #1

declare dso_local i32 @append_basename(%struct.strbuf*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
