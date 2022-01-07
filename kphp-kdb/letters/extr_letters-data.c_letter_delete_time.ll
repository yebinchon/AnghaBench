; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_letter_delete_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_letter_delete_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.TYPE_2__*, i32 }

@head_letter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@now = common dso_local global i32 0, align 4
@expired_letters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @letter_delete_time(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %18, %2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @head_letter, i32 0, i32 2), align 8
  %7 = icmp ne %struct.TYPE_2__* %6, @head_letter
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @head_letter, i32 0, i32 2), align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @now, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %12, %13
  %15 = icmp sle i32 %11, %14
  br label %16

16:                                               ; preds = %8, %5
  %17 = phi i1 [ false, %5 ], [ %15, %8 ]
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @head_letter, i32 0, i32 2), align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @head_letter, i32 0, i32 2), align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @add_letter_priority(i32 %21, i32 %24, i32 0, i8* %25)
  %27 = load i32, i32* @expired_letters, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @expired_letters, align 4
  br label %5

29:                                               ; preds = %16
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @process_delayed_letters(i32 1, i32 1)
  br label %34

34:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @add_letter_priority(i32, i32, i32, i8*) #1

declare dso_local i32 @process_delayed_letters(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
