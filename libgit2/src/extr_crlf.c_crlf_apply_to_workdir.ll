; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_crlf.c_crlf_apply_to_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_crlf.c_crlf_apply_to_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crlf_attrs = type { i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@GIT_EOL_CRLF = common dso_local global i64 0, align 8
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@GIT_CRLF_AUTO = common dso_local global i64 0, align 8
@GIT_CRLF_AUTO_INPUT = common dso_local global i64 0, align 8
@GIT_CRLF_AUTO_CRLF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crlf_attrs*, i32*, i32*)* @crlf_apply_to_workdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crlf_apply_to_workdir(%struct.crlf_attrs* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crlf_attrs*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32, align 4
  store %struct.crlf_attrs* %0, %struct.crlf_attrs** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i64 @git_buf_len(i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %15 = call i64 @output_eol(%struct.crlf_attrs* %14)
  %16 = load i64, i64* @GIT_EOL_CRLF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %19, i32* %4, align 4
  br label %68

20:                                               ; preds = %13
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @git_buf_text_gather_stats(%struct.TYPE_3__* %8, i32* %21, i32 0)
  store i32 %22, i32* %9, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %20
  %33 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %33, i32* %4, align 4
  br label %68

34:                                               ; preds = %26
  %35 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %36 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GIT_CRLF_AUTO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %42 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GIT_CRLF_AUTO_INPUT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.crlf_attrs*, %struct.crlf_attrs** %5, align 8
  %48 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GIT_CRLF_AUTO_CRLF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46, %40, %34
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %57, i32* %4, align 4
  br label %68

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %62, i32* %4, align 4
  br label %68

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @git_buf_text_lf_to_crlf(i32* %65, i32* %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %61, %56, %32, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @git_buf_len(i32*) #1

declare dso_local i64 @output_eol(%struct.crlf_attrs*) #1

declare dso_local i32 @git_buf_text_gather_stats(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @git_buf_text_lf_to_crlf(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
