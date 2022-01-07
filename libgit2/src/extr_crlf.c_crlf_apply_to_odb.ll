; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_crlf.c_crlf_apply_to_odb.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_crlf.c_crlf_apply_to_odb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crlf_attrs = type { i64 }
%struct.TYPE_4__ = type { i32 }

@GIT_CRLF_BINARY = common dso_local global i64 0, align 8
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@GIT_CRLF_AUTO = common dso_local global i64 0, align 8
@GIT_CRLF_AUTO_INPUT = common dso_local global i64 0, align 8
@GIT_CRLF_AUTO_CRLF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crlf_attrs*, i32*, i32*, i32*)* @crlf_apply_to_odb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crlf_apply_to_odb(%struct.crlf_attrs* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crlf_attrs*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.crlf_attrs* %0, %struct.crlf_attrs** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.crlf_attrs*, %struct.crlf_attrs** %6, align 8
  %14 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GIT_CRLF_BINARY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @git_buf_len(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %4
  %23 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %23, i32* %5, align 4
  br label %73

24:                                               ; preds = %18
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @git_buf_text_gather_stats(%struct.TYPE_4__* %10, i32* %25, i32 0)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.crlf_attrs*, %struct.crlf_attrs** %6, align 8
  %28 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GIT_CRLF_AUTO, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %24
  %33 = load %struct.crlf_attrs*, %struct.crlf_attrs** %6, align 8
  %34 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GIT_CRLF_AUTO_INPUT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.crlf_attrs*, %struct.crlf_attrs** %6, align 8
  %40 = getelementptr inbounds %struct.crlf_attrs, %struct.crlf_attrs* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GIT_CRLF_AUTO_CRLF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38, %32, %24
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %48, i32* %5, align 4
  br label %73

49:                                               ; preds = %44
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 @has_cr_in_index(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %54, i32* %5, align 4
  br label %73

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.crlf_attrs*, %struct.crlf_attrs** %6, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @check_safecrlf(%struct.crlf_attrs* %57, i32* %58, %struct.TYPE_4__* %10)
  store i32 %59, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %73

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %68, i32* %5, align 4
  br label %73

69:                                               ; preds = %63
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @git_buf_text_crlf_to_lf(i32* %70, i32* %71)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %67, %61, %53, %47, %22
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @git_buf_len(i32*) #1

declare dso_local i32 @git_buf_text_gather_stats(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @has_cr_in_index(i32*) #1

declare dso_local i32 @check_safecrlf(%struct.crlf_attrs*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @git_buf_text_crlf_to_lf(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
