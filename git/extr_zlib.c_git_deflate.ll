; ModuleID = '/home/carl/AnghaBench/git/extr_zlib.c_git_deflate.c'
source_filename = "/home/carl/AnghaBench/git/extr_zlib.c_git_deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64, i8*, i32 }

@Z_MEM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"deflate: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"deflate: %s (%s)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"no message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_deflate(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %50, %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @zlib_pre_call(%struct.TYPE_6__* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  br label %23

21:                                               ; preds = %7
  %22 = load i32, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  %25 = call i32 @deflate(%struct.TYPE_7__* %11, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @Z_MEM_ERROR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = call i32 @zlib_post_call(%struct.TYPE_6__* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 130
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44
  br label %7

51:                                               ; preds = %47, %38, %31
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %56 [
    i32 130, label %54
    i32 129, label %54
    i32 128, label %54
  ]

54:                                               ; preds = %52, %52, %52
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %75

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @zerr_to_string(i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  br label %71

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi i8* [ %69, %65 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %70 ]
  %73 = call i32 @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %54
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @zlib_pre_call(%struct.TYPE_6__*) #1

declare dso_local i32 @deflate(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @zlib_post_call(%struct.TYPE_6__*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @zerr_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
