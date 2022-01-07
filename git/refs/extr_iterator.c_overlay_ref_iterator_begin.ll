; ModuleID = '/home/carl/AnghaBench/git/refs/extr_iterator.c_overlay_ref_iterator_begin.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_iterator.c_overlay_ref_iterator_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"overlay_ref_iterator requires ordered inputs\00", align 1
@overlay_iterator_select = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_iterator* @overlay_ref_iterator_begin(%struct.ref_iterator* %0, %struct.ref_iterator* %1) #0 {
  %3 = alloca %struct.ref_iterator*, align 8
  %4 = alloca %struct.ref_iterator*, align 8
  %5 = alloca %struct.ref_iterator*, align 8
  store %struct.ref_iterator* %0, %struct.ref_iterator** %4, align 8
  store %struct.ref_iterator* %1, %struct.ref_iterator** %5, align 8
  %6 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  %7 = call i64 @is_empty_ref_iterator(%struct.ref_iterator* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  %11 = call i32 @ref_iterator_abort(%struct.ref_iterator* %10)
  %12 = load %struct.ref_iterator*, %struct.ref_iterator** %5, align 8
  store %struct.ref_iterator* %12, %struct.ref_iterator** %3, align 8
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.ref_iterator*, %struct.ref_iterator** %5, align 8
  %15 = call i64 @is_empty_ref_iterator(%struct.ref_iterator* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.ref_iterator*, %struct.ref_iterator** %5, align 8
  %19 = call i32 @ref_iterator_abort(%struct.ref_iterator* %18)
  %20 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  store %struct.ref_iterator* %20, %struct.ref_iterator** %3, align 8
  br label %40

21:                                               ; preds = %13
  %22 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  %23 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.ref_iterator*, %struct.ref_iterator** %5, align 8
  %28 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26, %21
  %32 = call i32 @BUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  %37 = load %struct.ref_iterator*, %struct.ref_iterator** %5, align 8
  %38 = load i32, i32* @overlay_iterator_select, align 4
  %39 = call %struct.ref_iterator* @merge_ref_iterator_begin(i32 1, %struct.ref_iterator* %36, %struct.ref_iterator* %37, i32 %38, i32* null)
  store %struct.ref_iterator* %39, %struct.ref_iterator** %3, align 8
  br label %40

40:                                               ; preds = %35, %17, %9
  %41 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  ret %struct.ref_iterator* %41
}

declare dso_local i64 @is_empty_ref_iterator(%struct.ref_iterator*) #1

declare dso_local i32 @ref_iterator_abort(%struct.ref_iterator*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local %struct.ref_iterator* @merge_ref_iterator_begin(i32, %struct.ref_iterator*, %struct.ref_iterator*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
