; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_add_absolute_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_add_absolute_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32* }
%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"The empty string is not a valid path\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_add_absolute_path(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @is_absolute_path(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %92, label %19

19:                                               ; preds = %15
  %20 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = call i8* (...) @xgetcwd()
  store i8* %23, i8** %8, align 8
  %24 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %64

27:                                               ; preds = %19
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strcmp(i8* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @stat(i8* %33, %struct.stat* %5)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %64, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %40, %36
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @stat(i8* %45, %struct.stat* %6)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @strbuf_addstr(%struct.strbuf* %61, i8* %62)
  br label %68

64:                                               ; preds = %54, %48, %44, %40, %32, %27, %19
  %65 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @strbuf_addstr(%struct.strbuf* %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @is_dir_sep(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %74
  %87 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %88 = call i32 @strbuf_addch(%struct.strbuf* %87, i8 signext 47)
  br label %89

89:                                               ; preds = %86, %74, %68
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %89, %15
  %93 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @strbuf_addstr(%struct.strbuf* %93, i8* %94)
  ret void
}

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @is_absolute_path(i8*) #1

declare dso_local i8* @xgetcwd(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @is_dir_sep(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
