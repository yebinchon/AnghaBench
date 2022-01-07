; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv_cpu_info.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"/proc/stat\00", align 1
@errno = common dso_local global i64 0, align 8
@UV_ENOMEM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cpu_info(%struct.TYPE_8__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32* @uv__open_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* @errno, align 8
  %17 = call i32 @UV__ERR(i64 %16)
  store i32 %17, i32* %3, align 4
  br label %81

18:                                               ; preds = %2
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @uv__cpu_num(i32* %19, i32* %6)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %64

24:                                               ; preds = %18
  %25 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_8__* @uv__calloc(i32 %26, i32 8)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %7, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = icmp eq %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %64

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = call i32 @read_models(i32 %32, %struct.TYPE_8__* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = call i32 @read_times(i32* %38, i32 %39, %struct.TYPE_8__* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @uv_free_cpu_info(%struct.TYPE_8__* %46, i32 %47)
  br label %64

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = call i32 @read_speeds(i32 %56, %struct.TYPE_8__* %57)
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %59, %45, %30, %23
  %65 = load i32*, i32** %9, align 8
  %66 = call i64 @fclose(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i64, i64* @errno, align 8
  %70 = load i64, i64* @EINTR, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @EINPROGRESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (...) @abort() #3
  unreachable

78:                                               ; preds = %72, %68
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32* @uv__open_file(i8*) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i32 @uv__cpu_num(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @uv__calloc(i32, i32) #1

declare dso_local i32 @read_models(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @read_times(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @uv_free_cpu_info(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @read_speeds(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @fclose(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
