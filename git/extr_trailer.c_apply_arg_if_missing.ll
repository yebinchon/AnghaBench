; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_apply_arg_if_missing.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_apply_arg_if_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.arg_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.trailer_item = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"trailer.c: unhandled value %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.arg_item*)* @apply_arg_if_missing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_arg_if_missing(%struct.list_head* %0, %struct.arg_item* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.arg_item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trailer_item*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.arg_item* %1, %struct.arg_item** %4, align 8
  %7 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %8 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %37 [
    i32 128, label %11
    i32 129, label %14
  ]

11:                                               ; preds = %2
  %12 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %13 = call i32 @free_arg_item(%struct.arg_item* %12)
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %16 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %20 = call i32 @apply_item_command(i32* null, %struct.arg_item* %19)
  %21 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %22 = call %struct.trailer_item* @trailer_from_arg(%struct.arg_item* %21)
  store %struct.trailer_item* %22, %struct.trailer_item** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @after_or_end(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load %struct.trailer_item*, %struct.trailer_item** %6, align 8
  %28 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %27, i32 0, i32 0
  %29 = load %struct.list_head*, %struct.list_head** %3, align 8
  %30 = call i32 @list_add_tail(i32* %28, %struct.list_head* %29)
  br label %36

31:                                               ; preds = %14
  %32 = load %struct.trailer_item*, %struct.trailer_item** %6, align 8
  %33 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %32, i32 0, i32 0
  %34 = load %struct.list_head*, %struct.list_head** %3, align 8
  %35 = call i32 @list_add(i32* %33, %struct.list_head* %34)
  br label %36

36:                                               ; preds = %31, %26
  br label %43

37:                                               ; preds = %2
  %38 = load %struct.arg_item*, %struct.arg_item** %4, align 8
  %39 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @BUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %36, %11
  ret void
}

declare dso_local i32 @free_arg_item(%struct.arg_item*) #1

declare dso_local i32 @apply_item_command(i32*, %struct.arg_item*) #1

declare dso_local %struct.trailer_item* @trailer_from_arg(%struct.arg_item*) #1

declare dso_local i32 @after_or_end(i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
