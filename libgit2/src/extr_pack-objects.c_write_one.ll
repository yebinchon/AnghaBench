; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_write_one.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_write_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_4__* }

@WRITE_ONE_RECURSIVE = common dso_local global i32 0, align 4
@WRITE_ONE_SKIP = common dso_local global i32 0, align 4
@WRITE_ONE_WRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_4__*, i32 (i8*, i64, i8*)*, i8*)* @write_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_one(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32 (i8*, i64, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32 (i8*, i64, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32 (i8*, i64, i8*)* %3, i32 (i8*, i64, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @WRITE_ONE_RECURSIVE, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %6, align 4
  br label %69

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @WRITE_ONE_SKIP, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %6, align 4
  br label %69

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @write_one(i32* %37, i32* %38, %struct.TYPE_4__* %41, i32 (i8*, i64, i8*)* %42, i8* %43)
  store i32 %44, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %69

48:                                               ; preds = %34
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WRITE_ONE_RECURSIVE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %55, align 8
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32, i32* @WRITE_ONE_WRITTEN, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @write_object(i32* %64, %struct.TYPE_4__* %65, i32 (i8*, i64, i8*)* %66, i8* %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %57, %46, %25, %17
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @write_object(i32*, %struct.TYPE_4__*, i32 (i8*, i64, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
