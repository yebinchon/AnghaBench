; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_allformats.c_ijkav_register_all.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_allformats.c_ijkav_register_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ijkav_register_all.initialized = internal global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"===== custom modules begin =====\0A\00", align 1
@ijkio = common dso_local global i32 0, align 4
@async = common dso_local global i32 0, align 4
@ijklongurl = common dso_local global i32 0, align 4
@ijktcphook = common dso_local global i32 0, align 4
@ijkhttphook = common dso_local global i32 0, align 4
@ijksegment = common dso_local global i32 0, align 4
@ijklivehook = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"===== custom modules end =====\0A\00", align 1
@ijkmediadatasource = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ijkav_register_all() #0 {
  %1 = load i32, i32* @ijkav_register_all.initialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %24

4:                                                ; preds = %0
  store i32 1, i32* @ijkav_register_all.initialized, align 4
  %5 = call i32 (...) @av_register_all()
  %6 = load i32, i32* @AV_LOG_INFO, align 4
  %7 = call i32 @av_log(i32* null, i32 %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @ijkio, align 4
  %9 = call i32 @IJK_REGISTER_PROTOCOL(i32 %8)
  %10 = load i32, i32* @async, align 4
  %11 = call i32 @IJK_REGISTER_PROTOCOL(i32 %10)
  %12 = load i32, i32* @ijklongurl, align 4
  %13 = call i32 @IJK_REGISTER_PROTOCOL(i32 %12)
  %14 = load i32, i32* @ijktcphook, align 4
  %15 = call i32 @IJK_REGISTER_PROTOCOL(i32 %14)
  %16 = load i32, i32* @ijkhttphook, align 4
  %17 = call i32 @IJK_REGISTER_PROTOCOL(i32 %16)
  %18 = load i32, i32* @ijksegment, align 4
  %19 = call i32 @IJK_REGISTER_PROTOCOL(i32 %18)
  %20 = load i32, i32* @ijklivehook, align 4
  %21 = call i32 @IJK_REGISTER_DEMUXER(i32 %20)
  %22 = load i32, i32* @AV_LOG_INFO, align 4
  %23 = call i32 @av_log(i32* null, i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @av_register_all(...) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @IJK_REGISTER_PROTOCOL(i32) #1

declare dso_local i32 @IJK_REGISTER_DEMUXER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
