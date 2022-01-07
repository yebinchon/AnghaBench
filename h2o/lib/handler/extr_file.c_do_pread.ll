; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_file.c_do_pread.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_file.c_do_pread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.st_h2o_sendfile_generator_t = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i64, i64, i64)* @do_pread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pread(%struct.TYPE_9__* %0, i32* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.st_h2o_sendfile_generator_t*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = bitcast %struct.TYPE_10__* %7 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %2, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %3, i64* %17, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.st_h2o_sendfile_generator_t*
  store %struct.st_h2o_sendfile_generator_t* %24, %struct.st_h2o_sendfile_generator_t** %11, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %30, %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ule i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  br label %40

40:                                               ; preds = %79, %5
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %74, %45
  %47 = load %struct.st_h2o_sendfile_generator_t*, %struct.st_h2o_sendfile_generator_t** %11, align 8
  %48 = getelementptr inbounds %struct.st_h2o_sendfile_generator_t, %struct.st_h2o_sendfile_generator_t* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = add i64 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = sub i64 %58, %59
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %61, %62
  %64 = load i64, i64* %13, align 8
  %65 = add i64 %63, %64
  %66 = call i32 @pread(i32 %52, i64 %56, i64 %60, i64 %65)
  store i32 %66, i32* %14, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %46
  %69 = load i64, i64* @errno, align 8
  %70 = load i64, i64* @EINTR, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %68, %46
  %73 = phi i1 [ false, %46 ], [ %71, %68 ]
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  br label %46

75:                                               ; preds = %72
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %13, align 8
  br label %40

84:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %78
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pread(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
