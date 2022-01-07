; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_hiredis.c_redisBufferWrite.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_hiredis.c_redisBufferWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@REDIS_ERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@REDIS_BLOCK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisBufferWrite(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @REDIS_ERR, align 4
  store i32 %12, i32* %3, align 4
  br label %96

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @sdslen(i32 %16)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @sdslen(i32 %28)
  %30 = call i32 @write(i32 %22, i32 %25, i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %55

33:                                               ; preds = %19
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EAGAIN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @REDIS_BLOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37, %33
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EINTR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %37
  br label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = load i32, i32* @REDIS_ERR_IO, align 4
  %52 = call i32 @__redisSetError(%struct.TYPE_4__* %50, i32 %51, i32* null)
  %53 = load i32, i32* @REDIS_ERR, align 4
  store i32 %53, i32* %3, align 4
  br label %96

54:                                               ; preds = %48
  br label %82

55:                                               ; preds = %19
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @sdslen(i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %59, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sdsfree(i32 %69)
  %71 = call i32 (...) @sdsempty()
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %80

74:                                               ; preds = %58
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @sdsrange(i32 %77, i32 %78, i32 -1)
  br label %80

80:                                               ; preds = %74, %66
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %54
  br label %83

83:                                               ; preds = %82, %13
  %84 = load i32*, i32** %5, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @sdslen(i32 %89)
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %83
  %95 = load i32, i32* @REDIS_OK, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %49, %11
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @sdslen(i32) #1

declare dso_local i32 @write(i32, i32, i64) #1

declare dso_local i32 @__redisSetError(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdsrange(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
