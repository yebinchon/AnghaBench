; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_free_arg_item.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_free_arg_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_item = type { %struct.arg_item*, %struct.arg_item*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.arg_item*, %struct.arg_item*, %struct.arg_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arg_item*)* @free_arg_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_arg_item(%struct.arg_item* %0) #0 {
  %2 = alloca %struct.arg_item*, align 8
  store %struct.arg_item* %0, %struct.arg_item** %2, align 8
  %3 = load %struct.arg_item*, %struct.arg_item** %2, align 8
  %4 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load %struct.arg_item*, %struct.arg_item** %5, align 8
  %7 = call i32 @free(%struct.arg_item* %6)
  %8 = load %struct.arg_item*, %struct.arg_item** %2, align 8
  %9 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.arg_item*, %struct.arg_item** %10, align 8
  %12 = call i32 @free(%struct.arg_item* %11)
  %13 = load %struct.arg_item*, %struct.arg_item** %2, align 8
  %14 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.arg_item*, %struct.arg_item** %15, align 8
  %17 = call i32 @free(%struct.arg_item* %16)
  %18 = load %struct.arg_item*, %struct.arg_item** %2, align 8
  %19 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %18, i32 0, i32 1
  %20 = load %struct.arg_item*, %struct.arg_item** %19, align 8
  %21 = call i32 @free(%struct.arg_item* %20)
  %22 = load %struct.arg_item*, %struct.arg_item** %2, align 8
  %23 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %22, i32 0, i32 0
  %24 = load %struct.arg_item*, %struct.arg_item** %23, align 8
  %25 = call i32 @free(%struct.arg_item* %24)
  %26 = load %struct.arg_item*, %struct.arg_item** %2, align 8
  %27 = call i32 @free(%struct.arg_item* %26)
  ret void
}

declare dso_local i32 @free(%struct.arg_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
