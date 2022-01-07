; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_finalize.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"merge.renamelimit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.merge_options*)* @merge_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_finalize(%struct.merge_options* %0) #0 {
  %2 = alloca %struct.merge_options*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %2, align 8
  %3 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %4 = call i32 @flush_output(%struct.merge_options* %3)
  %5 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %6 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %13 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %18 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %17, i32 0, i32 2
  %19 = call i32 @strbuf_release(i32* %18)
  br label %20

20:                                               ; preds = %16, %11, %1
  %21 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %22 = call i64 @show(%struct.merge_options* %21, i32 2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %26 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @diff_warn_rename_limit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29, i32 0)
  br label %31

31:                                               ; preds = %24, %20
  %32 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %33 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @FREE_AND_NULL(%struct.TYPE_2__* %34)
  ret void
}

declare dso_local i32 @flush_output(%struct.merge_options*) #1

declare dso_local i32 @strbuf_release(i32*) #1

declare dso_local i64 @show(%struct.merge_options*, i32) #1

declare dso_local i32 @diff_warn_rename_limit(i8*, i32, i32) #1

declare dso_local i32 @FREE_AND_NULL(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
