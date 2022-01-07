; ModuleID = '/home/carl/AnghaBench/i3/src/extr_startup.c__prune_startup_sequences.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_startup.c__prune_startup_sequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Startup_Sequence = type { i64 }

@startup_sequences = common dso_local global i32 0, align 4
@sequences = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @_prune_startup_sequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_prune_startup_sequences() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.Startup_Sequence*, align 8
  %4 = alloca %struct.Startup_Sequence*, align 8
  %5 = call i64 @time(i32* null)
  store i64 %5, i64* %1, align 8
  store i32 0, i32* %2, align 4
  %6 = call %struct.Startup_Sequence* @TAILQ_FIRST(i32* @startup_sequences)
  store %struct.Startup_Sequence* %6, %struct.Startup_Sequence** %4, align 8
  br label %7

7:                                                ; preds = %30, %29, %20, %0
  %8 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %4, align 8
  %9 = call %struct.Startup_Sequence* @TAILQ_END(i32* @startup_sequences)
  %10 = icmp ne %struct.Startup_Sequence* %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %4, align 8
  store %struct.Startup_Sequence* %12, %struct.Startup_Sequence** %3, align 8
  %13 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %4, align 8
  %14 = load i32, i32* @sequences, align 4
  %15 = call %struct.Startup_Sequence* @TAILQ_NEXT(%struct.Startup_Sequence* %13, i32 %14)
  store %struct.Startup_Sequence* %15, %struct.Startup_Sequence** %4, align 8
  %16 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %3, align 8
  %17 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %7

23:                                               ; preds = %11
  %24 = load i64, i64* %1, align 8
  %25 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %3, align 8
  %26 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %7

30:                                               ; preds = %23
  %31 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %3, align 8
  %32 = call i32 @startup_sequence_delete(%struct.Startup_Sequence* %31)
  br label %7

33:                                               ; preds = %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.Startup_Sequence* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.Startup_Sequence* @TAILQ_END(i32*) #1

declare dso_local %struct.Startup_Sequence* @TAILQ_NEXT(%struct.Startup_Sequence*, i32) #1

declare dso_local i32 @startup_sequence_delete(%struct.Startup_Sequence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
