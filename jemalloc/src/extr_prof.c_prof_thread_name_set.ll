; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_thread_name_set.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_thread_name_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@EAGAIN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prof_thread_name_set(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @tsd_reentrancy_level_get(i32* %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_3__* @prof_tdata_get(i32* %15, i32 1)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EAGAIN, align 4
  store i32 %20, i32* %3, align 4
  br label %86

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @EFAULT, align 4
  store i32 %25, i32* %3, align 4
  br label %86

26:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %9, align 1
  %41 = load i8, i8* %9, align 1
  %42 = call i32 @isgraph(i8 signext %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = load i8, i8* %9, align 1
  %46 = call i32 @isblank(i8 signext %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EFAULT, align 4
  store i32 %49, i32* %3, align 4
  br label %86

50:                                               ; preds = %44, %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %27

54:                                               ; preds = %27
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @tsd_tsdn(i32* %55)
  %57 = load i8*, i8** %5, align 8
  %58 = call i8* @prof_thread_name_alloc(i32 %56, i8* %57)
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @EAGAIN, align 4
  store i32 %62, i32* %3, align 4
  br label %86

63:                                               ; preds = %54
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @tsd_tsdn(i32* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @idalloctm(i32 %70, i8* %73, i32* null, i32* null, i32 1, i32 1)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i8* null, i8** %76, align 8
  br label %77

77:                                               ; preds = %68, %63
  %78 = load i8*, i8** %8, align 8
  %79 = call i64 @strlen(i8* %78)
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %61, %48, %24, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tsd_reentrancy_level_get(i32*) #1

declare dso_local %struct.TYPE_3__* @prof_tdata_get(i32*, i32) #1

declare dso_local i32 @isgraph(i8 signext) #1

declare dso_local i32 @isblank(i8 signext) #1

declare dso_local i8* @prof_thread_name_alloc(i32, i8*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @idalloctm(i32, i8*, i32*, i32*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
