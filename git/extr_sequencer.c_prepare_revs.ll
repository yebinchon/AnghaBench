; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_prepare_revs.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_prepare_revs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_opts = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@REPLAY_PICK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.replay_opts*)* @prepare_revs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_revs(%struct.replay_opts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.replay_opts*, align 8
  store %struct.replay_opts* %0, %struct.replay_opts** %3, align 8
  %4 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %5 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @REPLAY_PICK, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %11 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %18 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %16, %9, %1
  %24 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %25 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i64 @prepare_revision_walk(%struct.TYPE_2__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @error(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @prepare_revision_walk(%struct.TYPE_2__*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
