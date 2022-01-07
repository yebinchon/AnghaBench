; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_zstream.c_zstream_buf.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_zstream.c_zstream_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i8* }

@GIT_ZSTREAM_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64, i32)* @zstream_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zstream_buf(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @GIT_ZSTREAM_INIT, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @git_zstream_init(i32* %10, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %82

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @git_zstream_set_input(i32* %10, i8* %21, i64 %22)
  store i32 %23, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %79

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %56, %26
  %28 = call i32 @git_zstream_done(i32* %10)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = call i64 @git_zstream_suggest_output_len(i32* %10)
  store i64 %32, i64* %12, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @git_buf_grow_by(%struct.TYPE_4__* %33, i64 %34)
  store i32 %35, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %79

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %41, %44
  store i64 %45, i64* %13, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = call i32 @git_zstream_get_output(i8* %52, i64* %13, i32* %10)
  store i32 %53, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %79

56:                                               ; preds = %38
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %57
  store i64 %61, i64* %59, align 8
  br label %27

62:                                               ; preds = %27
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %70, %62
  br label %79

79:                                               ; preds = %78, %55, %37, %25
  %80 = call i32 @git_zstream_free(i32* %10)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %18
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @git_zstream_init(i32*, i32) #1

declare dso_local i32 @git_zstream_set_input(i32*, i8*, i64) #1

declare dso_local i32 @git_zstream_done(i32*) #1

declare dso_local i64 @git_zstream_suggest_output_len(i32*) #1

declare dso_local i32 @git_buf_grow_by(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @git_zstream_get_output(i8*, i64*, i32*) #1

declare dso_local i32 @git_zstream_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
