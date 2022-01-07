; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_apply_arg_if_exists.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_apply_arg_if_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.trailer_item = type { i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"trailer.c: unhandled value %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trailer_item*, %struct.arg_item*, %struct.trailer_item*, %struct.list_head*)* @apply_arg_if_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_arg_if_exists(%struct.trailer_item* %0, %struct.arg_item* %1, %struct.trailer_item* %2, %struct.list_head* %3) #0 {
  %5 = alloca %struct.trailer_item*, align 8
  %6 = alloca %struct.arg_item*, align 8
  %7 = alloca %struct.trailer_item*, align 8
  %8 = alloca %struct.list_head*, align 8
  store %struct.trailer_item* %0, %struct.trailer_item** %5, align 8
  store %struct.arg_item* %1, %struct.arg_item** %6, align 8
  store %struct.trailer_item* %2, %struct.trailer_item** %7, align 8
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  %9 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %10 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %69 [
    i32 129, label %13
    i32 128, label %16
    i32 132, label %28
    i32 131, label %35
    i32 130, label %52
  ]

13:                                               ; preds = %4
  %14 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %15 = call i32 @free_arg_item(%struct.arg_item* %14)
  br label %75

16:                                               ; preds = %4
  %17 = load %struct.trailer_item*, %struct.trailer_item** %5, align 8
  %18 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %19 = call i32 @apply_item_command(%struct.trailer_item* %17, %struct.arg_item* %18)
  %20 = load %struct.trailer_item*, %struct.trailer_item** %7, align 8
  %21 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %22 = call i32 @add_arg_to_input_list(%struct.trailer_item* %20, %struct.arg_item* %21)
  %23 = load %struct.trailer_item*, %struct.trailer_item** %5, align 8
  %24 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %23, i32 0, i32 0
  %25 = call i32 @list_del(i32* %24)
  %26 = load %struct.trailer_item*, %struct.trailer_item** %5, align 8
  %27 = call i32 @free_trailer_item(%struct.trailer_item* %26)
  br label %75

28:                                               ; preds = %4
  %29 = load %struct.trailer_item*, %struct.trailer_item** %5, align 8
  %30 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %31 = call i32 @apply_item_command(%struct.trailer_item* %29, %struct.arg_item* %30)
  %32 = load %struct.trailer_item*, %struct.trailer_item** %7, align 8
  %33 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %34 = call i32 @add_arg_to_input_list(%struct.trailer_item* %32, %struct.arg_item* %33)
  br label %75

35:                                               ; preds = %4
  %36 = load %struct.trailer_item*, %struct.trailer_item** %5, align 8
  %37 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %38 = call i32 @apply_item_command(%struct.trailer_item* %36, %struct.arg_item* %37)
  %39 = load %struct.trailer_item*, %struct.trailer_item** %5, align 8
  %40 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %41 = load %struct.list_head*, %struct.list_head** %8, align 8
  %42 = call i32 @check_if_different(%struct.trailer_item* %39, %struct.arg_item* %40, i32 1, %struct.list_head* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.trailer_item*, %struct.trailer_item** %7, align 8
  %46 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %47 = call i32 @add_arg_to_input_list(%struct.trailer_item* %45, %struct.arg_item* %46)
  br label %51

48:                                               ; preds = %35
  %49 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %50 = call i32 @free_arg_item(%struct.arg_item* %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %75

52:                                               ; preds = %4
  %53 = load %struct.trailer_item*, %struct.trailer_item** %5, align 8
  %54 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %55 = call i32 @apply_item_command(%struct.trailer_item* %53, %struct.arg_item* %54)
  %56 = load %struct.trailer_item*, %struct.trailer_item** %7, align 8
  %57 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %58 = load %struct.list_head*, %struct.list_head** %8, align 8
  %59 = call i32 @check_if_different(%struct.trailer_item* %56, %struct.arg_item* %57, i32 0, %struct.list_head* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.trailer_item*, %struct.trailer_item** %7, align 8
  %63 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %64 = call i32 @add_arg_to_input_list(%struct.trailer_item* %62, %struct.arg_item* %63)
  br label %68

65:                                               ; preds = %52
  %66 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %67 = call i32 @free_arg_item(%struct.arg_item* %66)
  br label %68

68:                                               ; preds = %65, %61
  br label %75

69:                                               ; preds = %4
  %70 = load %struct.arg_item*, %struct.arg_item** %6, align 8
  %71 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %69, %68, %51, %28, %16, %13
  ret void
}

declare dso_local i32 @free_arg_item(%struct.arg_item*) #1

declare dso_local i32 @apply_item_command(%struct.trailer_item*, %struct.arg_item*) #1

declare dso_local i32 @add_arg_to_input_list(%struct.trailer_item*, %struct.arg_item*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_trailer_item(%struct.trailer_item*) #1

declare dso_local i32 @check_if_different(%struct.trailer_item*, %struct.arg_item*, i32, %struct.list_head*) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
