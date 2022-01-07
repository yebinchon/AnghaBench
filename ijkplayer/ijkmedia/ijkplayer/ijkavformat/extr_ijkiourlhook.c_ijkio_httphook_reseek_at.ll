; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiourlhook.c_ijkio_httphook_reseek_at.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiourlhook.c_ijkio_httphook_reseek_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, i32, i32)* @ijkio_httphook_reseek_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ijkio_httphook_reseek_at(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @ijkio_urlhook_seek(%struct.TYPE_6__* %18, i64 %19, i32 %20)
  store i64 %21, i64* %5, align 8
  br label %75

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SEEK_CUR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %7, align 8
  br label %51

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SEEK_END, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %7, align 8
  br label %50

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i64 @IJKAVERROR(i32 %47)
  store i64 %48, i64* %5, align 8
  br label %75

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %36
  br label %51

51:                                               ; preds = %50, %26
  %52 = load i64, i64* %7, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = call i64 @IJKAVERROR(i32 %55)
  store i64 %56, i64* %5, align 8
  br label %75

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @ijkio_httphook_reconnect_at(%struct.TYPE_6__* %58, i64 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %5, align 8
  br label %75

69:                                               ; preds = %57
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %69, %63, %54, %46, %17
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i64 @ijkio_urlhook_seek(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i64 @IJKAVERROR(i32) #1

declare dso_local i32 @ijkio_httphook_reconnect_at(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
