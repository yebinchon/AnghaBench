; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_bgzf.c_bgzf_dopen.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_bgzf.c_bgzf_dopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @bgzf_dopen(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strchr(i8* %9, i8 signext 114)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strchr(i8* %13, i8 signext 82)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32* @_bgzf_dopen(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %49

21:                                               ; preds = %16
  %22 = call %struct.TYPE_5__* (...) @bgzf_read_init()
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  br label %47

26:                                               ; preds = %12
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strchr(i8* %27, i8 signext 119)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strchr(i8* %31, i8 signext 87)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %4, align 4
  %36 = call i32* @fdopen(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %8, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %49

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @mode2level(i8* %40)
  %42 = call %struct.TYPE_5__* @bgzf_write_init(i32 %41)
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %6, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %30
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %3, align 8
  br label %49

49:                                               ; preds = %47, %38, %20
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %50
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32* @_bgzf_dopen(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @bgzf_read_init(...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @bgzf_write_init(i32) #1

declare dso_local i32 @mode2level(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
