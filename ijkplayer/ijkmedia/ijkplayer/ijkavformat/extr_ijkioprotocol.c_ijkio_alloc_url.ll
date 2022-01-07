; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkioprotocol.c_ijkio_alloc_url.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkioprotocol.c_ijkio_alloc_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [7 x i8] c"cache:\00", align 1
@ijkio_cache_protocol = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ffio:\00", align 1
@ijkio_ffio_protocol = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"httphook:\00", align 1
@ijkio_httphook_protocol = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ijkio_androidio_protocol = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ijkio_alloc_url(%struct.TYPE_7__** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %8 = icmp ne %struct.TYPE_7__** %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %58

10:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = call i8* @calloc(i32 1, i32 16)
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %6, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store %struct.TYPE_8__* @ijkio_cache_protocol, %struct.TYPE_8__** %19, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ijkio_cache_protocol, i32 0, i32 0), align 4
  %21 = call i8* @calloc(i32 1, i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %55

24:                                               ; preds = %10
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = call i8* @calloc(i32 1, i32 16)
  %31 = bitcast i8* %30 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store %struct.TYPE_8__* @ijkio_ffio_protocol, %struct.TYPE_8__** %33, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ijkio_ffio_protocol, i32 0, i32 0), align 4
  %35 = call i8* @calloc(i32 1, i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %54

38:                                               ; preds = %24
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = call i8* @calloc(i32 1, i32 16)
  %45 = bitcast i8* %44 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %6, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store %struct.TYPE_8__* @ijkio_httphook_protocol, %struct.TYPE_8__** %47, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ijkio_httphook_protocol, i32 0, i32 0), align 4
  %49 = call i8* @calloc(i32 1, i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %53

52:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %58

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54, %15
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %52, %9
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
