; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_fptr_finalize.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_io.c_fptr_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_io = type { i32, i32, i32, i64 }

@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fptr_finalize failed.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.mrb_io*, i32)* @fptr_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fptr_finalize(i32* %0, %struct.mrb_io* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mrb_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.mrb_io* %1, %struct.mrb_io** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %11 = icmp eq %struct.mrb_io* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %102

13:                                               ; preds = %3
  %14 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %15 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %20 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %25 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @close(i32 %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %23
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %34 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %13
  %36 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %37 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %42 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @close(i32 %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @errno, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %51, %40
  %53 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %54 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %53, i32 0, i32 1
  store i32 -1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %35
  %56 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %57 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %92

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %73, %60
  %62 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %63 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @waitpid(i32 %64, i32* %9, i32 0)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @errno, align 4
  %71 = load i32, i32* @EINTR, align 4
  %72 = icmp eq i32 %70, %71
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ false, %66 ], [ %72, %69 ]
  br i1 %74, label %61, label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %81 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @io_set_process_status(i32* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %78, %75
  %90 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %91 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %90, i32 0, i32 2
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %55
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* @errno, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @mrb_sys_fail(i32* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %12, %98, %95, %92
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @io_set_process_status(i32*, i32, i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
