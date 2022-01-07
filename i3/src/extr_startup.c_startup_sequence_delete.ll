; ModuleID = '/home/carl/AnghaBench/i3/src/extr_startup.c_startup_sequence_delete.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_startup.c_startup_sequence_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Startup_Sequence = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [69 x i8] c"Deleting startup sequence %s, delete_at = %lld, current_time = %lld\0A\00", align 1
@startup_sequences = common dso_local global i32 0, align 4
@sequences = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @startup_sequence_delete(%struct.Startup_Sequence* %0) #0 {
  %2 = alloca %struct.Startup_Sequence*, align 8
  store %struct.Startup_Sequence* %0, %struct.Startup_Sequence** %2, align 8
  %3 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %2, align 8
  %4 = icmp ne %struct.Startup_Sequence* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %2, align 8
  %8 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %2, align 8
  %11 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @time(i32* null)
  %14 = call i32 @DLOG(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %12, i64 %13)
  %15 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %2, align 8
  %16 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sn_launcher_context_unref(i32 %17)
  %19 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %2, align 8
  %20 = load i32, i32* @sequences, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* @startup_sequences, %struct.Startup_Sequence* %19, i32 %20)
  %22 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %2, align 8
  %23 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @free(i32 %24)
  %26 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %2, align 8
  %27 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @free(i32 %28)
  %30 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %2, align 8
  %31 = call i32 @FREE(%struct.Startup_Sequence* %30)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DLOG(i8*, i32, i64, i64) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @sn_launcher_context_unref(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.Startup_Sequence*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @FREE(%struct.Startup_Sequence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
