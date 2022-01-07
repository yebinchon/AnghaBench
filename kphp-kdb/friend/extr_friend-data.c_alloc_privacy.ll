; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_alloc_privacy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_alloc_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@PL = common dso_local global i64 0, align 8
@P = common dso_local global i32* null, align 8
@tot_privacy_len = common dso_local global i64 0, align 8
@privacy_nodes = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"in-core privacy: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @alloc_privacy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = load i64, i64* @PL, align 8
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %1, align 4
  %7 = load i32*, i32** @P, align 8
  %8 = load i64, i64* @PL, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %1, align 4
  %15 = icmp sge i32 %14, 255
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %16, %0
  %20 = load i32, i32* %1, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = add i64 16, %22
  %24 = add i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load i64, i64* @PL, align 8
  %27 = load i64, i64* @tot_privacy_len, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* @tot_privacy_len, align 8
  %29 = load i32, i32* @privacy_nodes, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @privacy_nodes, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call %struct.TYPE_5__* @zmalloc(i32 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %4, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = call i32 @memset(%struct.TYPE_5__* %33, i32 0, i32 16)
  %35 = call i32 (...) @lrand48()
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %1, align 4
  %38 = icmp sge i32 %37, 255
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %42

40:                                               ; preds = %19
  %41 = load i32, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ 255, %39 ], [ %41, %40 ]
  %44 = add nsw i32 %36, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %2, align 8
  %50 = load i32, i32* %1, align 4
  %51 = icmp sge i32 %50, 255
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load i64, i64* @PL, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %2, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %2, align 8
  store i32 %54, i32* %55, align 4
  br label %57

57:                                               ; preds = %52, %42
  %58 = load i32*, i32** %2, align 8
  %59 = load i32*, i32** @P, align 8
  %60 = load i64, i64* @PL, align 8
  %61 = add i64 %60, 1
  %62 = mul i64 %61, 4
  %63 = call i32 @memcpy(i32* %58, i32* %59, i64 %62)
  %64 = load i32, i32* @verbosity, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %88

66:                                               ; preds = %57
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %82, %66
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @PL, align 8
  %73 = icmp ule i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32*, i32** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %69

85:                                               ; preds = %69
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %57
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @zmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
