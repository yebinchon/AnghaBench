; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_next_commentary_block.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_next_commentary_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.strbuf*)* @next_commentary_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_commentary_block(%struct.rev_info* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %6 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %11, i8** %5, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %13 = icmp ne %struct.strbuf* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strbuf_addstr(%struct.strbuf* %15, i8* %16)
  br label %25

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fputs(i8* %19, i32 %23)
  br label %25

25:                                               ; preds = %18, %14
  %26 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %27 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
