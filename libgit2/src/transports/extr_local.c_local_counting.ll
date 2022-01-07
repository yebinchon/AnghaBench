; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_local.c_local_counting.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_local.c_local_counting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_PACKBUILDER_ADDING_OBJECTS = common dso_local global i32 0, align 4
@counting_objects_fmt = common dso_local global i32 0, align 4
@GIT_PACKBUILDER_DELTAFICATION = common dso_local global i32 0, align 4
@compressing_objects_fmt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c", done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*)* @local_counting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_counting(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %11, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %18, align 8
  %20 = icmp ne i32 (i32, i32, i32)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %77

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @GIT_PACKBUILDER_ADDING_OBJECTS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @counting_objects_fmt, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32*, i8*, ...) @git_buf_printf(i32* %10, i8* %29, i32 %30)
  br label %60

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @GIT_PACKBUILDER_DELTAFICATION, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = uitofp i32 %37 to float
  %39 = load i32, i32* %8, align 4
  %40 = uitofp i32 %39 to float
  %41 = fdiv float %38, %40
  %42 = fmul float %41, 1.000000e+02
  store float %42, float* %13, align 4
  %43 = load i32, i32* @compressing_objects_fmt, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load float, float* %13, align 4
  %47 = fpext float %46 to double
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i32*, i8*, ...) @git_buf_printf(i32* %10, i8* %45, double %47, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = call i32 (i32*, i8*, ...) @git_buf_printf(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %58

56:                                               ; preds = %36
  %57 = call i32 @git_buf_putc(i32* %10, i8 signext 13)
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58, %32
  br label %60

60:                                               ; preds = %59, %26
  %61 = call i64 @git_buf_oom(i32* %10)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 -1, i32* %5, align 4
  br label %77

64:                                               ; preds = %60
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %66, align 8
  %68 = call i32 @git_buf_cstr(i32* %10)
  %69 = call i64 @git_buf_len(i32* %10)
  %70 = trunc i64 %69 to i32
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %67(i32 %68, i32 %70, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = call i32 @git_buf_dispose(i32* %10)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %64, %63, %21
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @git_buf_printf(i32*, i8*, ...) #1

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i64 @git_buf_len(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
