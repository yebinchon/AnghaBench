; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_parse_strategy_opts.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_parse_strategy_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_opts = type { i32, i8** }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_strategy_opts(%struct.replay_opts* %0, i8* %1) #0 {
  %3 = alloca %struct.replay_opts*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.replay_opts* %0, %struct.replay_opts** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %19 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %18, i32 0, i32 1
  %20 = call i32 @split_cmdline(i8* %17, i8*** %19)
  %21 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %22 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %47, %16
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %26 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %31 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @skip_prefix(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7)
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @xstrdup(i8* %39)
  %41 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %42 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %40, i8** %46, align 8
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %23

50:                                               ; preds = %23
  ret void
}

declare dso_local i32 @split_cmdline(i8*, i8***) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
