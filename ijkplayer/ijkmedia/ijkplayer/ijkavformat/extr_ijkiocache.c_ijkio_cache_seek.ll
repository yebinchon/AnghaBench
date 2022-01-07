; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_seek.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i64, i32, i32, i32, i64, i64, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_10__*, i64, i32)* }

@ENOSYS = common dso_local global i32 0, align 4
@IJKAVSEEK_SIZE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IJKAVERROR_EXIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64, i32)* @ijkio_cache_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ijkio_cache_seek(%struct.TYPE_8__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 11
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 11
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21, %16, %3
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = call i64 @IJKAVERROR(i32 %29)
  store i64 %30, i64* %4, align 8
  br label %138

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IJKAVSEEK_SIZE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %4, align 8
  br label %138

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SEEK_CUR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  store i64 %48, i64* %10, align 8
  br label %59

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %10, align 8
  br label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i64 @IJKAVERROR(i32 %56)
  store i64 %57, i64* %4, align 8
  br label %138

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %43
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %10, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @EINVAL, align 4
  %65 = call i64 @IJKAVERROR(i32 %64)
  store i64 %65, i64* %4, align 8
  br label %138

66:                                               ; preds = %60
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 12
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 11
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64 (%struct.TYPE_10__*, i64, i32)*, i64 (%struct.TYPE_10__*, i64, i32)** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 11
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* @SEEK_SET, align 4
  %84 = call i64 %78(%struct.TYPE_10__* %81, i64 %82, i32 %83)
  store i64 %84, i64* %4, align 8
  br label %138

85:                                               ; preds = %66
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %10, align 8
  store i64 %94, i64* %4, align 8
  br label %138

95:                                               ; preds = %85
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 5
  %98 = call i32 @pthread_mutex_lock(i32* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  store i32 1, i32* %100, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 9
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* @SEEK_SET, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 8
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %95, %124
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = call i64 @ijkio_cache_check_interrupt(%struct.TYPE_8__* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i64, i64* @IJKAVERROR_EXIT, align 8
  store i64 %114, i64* %9, align 8
  br label %133

115:                                              ; preds = %109
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %9, align 8
  br label %133

124:                                              ; preds = %115
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 7
  %127 = call i32 @pthread_cond_signal(i32* %126)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 5
  %132 = call i32 @pthread_cond_wait(i32* %129, i32* %131)
  br label %109

133:                                              ; preds = %120, %113
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 5
  %136 = call i32 @pthread_mutex_unlock(i32* %135)
  %137 = load i64, i64* %9, align 8
  store i64 %137, i64* %4, align 8
  br label %138

138:                                              ; preds = %133, %90, %71, %63, %55, %35, %28
  %139 = load i64, i64* %4, align 8
  ret i64 %139
}

declare dso_local i64 @IJKAVERROR(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @ijkio_cache_check_interrupt(%struct.TYPE_8__*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
