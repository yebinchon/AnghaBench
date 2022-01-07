; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_read_strategy_opts.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_read_strategy_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_opts = type { i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.replay_opts*, %struct.strbuf*)* @read_strategy_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_strategy_opts(%struct.replay_opts* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.replay_opts*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.replay_opts* %0, %struct.replay_opts** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %6 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %7 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %8 = call i32 (...) @rebase_path_strategy()
  %9 = call i32 @read_oneliner(%struct.strbuf* %7, i32 %8, i32 0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = call i32 @strbuf_detach(%struct.strbuf* %13, i32* null)
  %15 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %16 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %18 = call i32 (...) @rebase_path_strategy_opts()
  %19 = call i32 @read_oneliner(%struct.strbuf* %17, i32 %18, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %28

22:                                               ; preds = %12
  %23 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %24 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @parse_strategy_opts(%struct.replay_opts* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %21, %11
  ret void
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @read_oneliner(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @rebase_path_strategy(...) #1

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @rebase_path_strategy_opts(...) #1

declare dso_local i32 @parse_strategy_opts(%struct.replay_opts*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
