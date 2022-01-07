; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_write_thread_check_all_completions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_write_thread_check_all_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@active_write_threads = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"write_thread_check_all_completion returns %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_thread_check_all_completions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %1, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @active_write_threads, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %2, align 8
  br label %5

5:                                                ; preds = %8, %0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = call i64 @write_thread_check_completion(%struct.TYPE_4__* %12)
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %1, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %2, align 8
  br label %5

19:                                               ; preds = %5
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i64 @write_thread_check_completion(%struct.TYPE_4__*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
