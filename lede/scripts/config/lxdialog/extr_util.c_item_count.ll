; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/lxdialog/extr_util.c_item_count.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/lxdialog/extr_util.c_item_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dialog_list = type { %struct.dialog_list* }

@item_head = common dso_local global %struct.dialog_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @item_count() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dialog_list*, align 8
  store i32 0, i32* %1, align 4
  %3 = load %struct.dialog_list*, %struct.dialog_list** @item_head, align 8
  store %struct.dialog_list* %3, %struct.dialog_list** %2, align 8
  br label %4

4:                                                ; preds = %10, %0
  %5 = load %struct.dialog_list*, %struct.dialog_list** %2, align 8
  %6 = icmp ne %struct.dialog_list* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %7
  %11 = load %struct.dialog_list*, %struct.dialog_list** %2, align 8
  %12 = getelementptr inbounds %struct.dialog_list, %struct.dialog_list* %11, i32 0, i32 0
  %13 = load %struct.dialog_list*, %struct.dialog_list** %12, align 8
  store %struct.dialog_list* %13, %struct.dialog_list** %2, align 8
  br label %4

14:                                               ; preds = %4
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
