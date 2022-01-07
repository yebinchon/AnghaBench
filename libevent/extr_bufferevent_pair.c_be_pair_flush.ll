; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_pair.c_be_pair_flush.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_pair.c_be_pair_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_pair = type { i32 }

@BEV_NORMAL = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@BEV_FINISHED = common dso_local global i32 0, align 4
@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@BEV_EVENT_WRITING = common dso_local global i16 0, align 2
@BEV_EVENT_READING = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16, i32)* @be_pair_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_pair_flush(%struct.bufferevent* %0, i16 signext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufferevent_pair*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca i16, align 2
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %11 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %12 = call %struct.bufferevent_pair* @upcast(%struct.bufferevent* %11)
  store %struct.bufferevent_pair* %12, %struct.bufferevent_pair** %8, align 8
  %13 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %14 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %91

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @BEV_NORMAL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %91

23:                                               ; preds = %18
  %24 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %25 = call i32 @incref_and_lock(%struct.bufferevent* %24)
  %26 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %27 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.bufferevent* @downcast(i32 %28)
  store %struct.bufferevent* %29, %struct.bufferevent** %9, align 8
  %30 = load i16, i16* %6, align 2
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* @EV_READ, align 2
  %33 = sext i16 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %38 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %39 = call i32 @be_pair_transfer(%struct.bufferevent* %37, %struct.bufferevent* %38, i32 1)
  br label %40

40:                                               ; preds = %36, %23
  %41 = load i16, i16* %6, align 2
  %42 = sext i16 %41 to i32
  %43 = load i16, i16* @EV_WRITE, align 2
  %44 = sext i16 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %49 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %50 = call i32 @be_pair_transfer(%struct.bufferevent* %48, %struct.bufferevent* %49, i32 1)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @BEV_FINISHED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  %56 = load i16, i16* @BEV_EVENT_EOF, align 2
  store i16 %56, i16* %10, align 2
  %57 = load i16, i16* %6, align 2
  %58 = sext i16 %57 to i32
  %59 = load i16, i16* @EV_READ, align 2
  %60 = sext i16 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load i16, i16* @BEV_EVENT_WRITING, align 2
  %65 = sext i16 %64 to i32
  %66 = load i16, i16* %10, align 2
  %67 = sext i16 %66 to i32
  %68 = or i32 %67, %65
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %10, align 2
  br label %70

70:                                               ; preds = %63, %55
  %71 = load i16, i16* %6, align 2
  %72 = sext i16 %71 to i32
  %73 = load i16, i16* @EV_WRITE, align 2
  %74 = sext i16 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i16, i16* @BEV_EVENT_READING, align 2
  %79 = sext i16 %78 to i32
  %80 = load i16, i16* %10, align 2
  %81 = sext i16 %80 to i32
  %82 = or i32 %81, %79
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %10, align 2
  br label %84

84:                                               ; preds = %77, %70
  %85 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %86 = load i16, i16* %10, align 2
  %87 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %85, i16 signext %86, i32 0)
  br label %88

88:                                               ; preds = %84, %51
  %89 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %90 = call i32 @decref_and_unlock(%struct.bufferevent* %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %22, %17
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.bufferevent_pair* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @incref_and_lock(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent* @downcast(i32) #1

declare dso_local i32 @be_pair_transfer(%struct.bufferevent*, %struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.bufferevent*, i16 signext, i32) #1

declare dso_local i32 @decref_and_unlock(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
