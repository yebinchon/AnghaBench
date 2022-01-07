; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_trailer_from_arg.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_trailer_from_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trailer_item = type { i32*, i32 }
%struct.arg_item = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trailer_item* (%struct.arg_item*)* @trailer_from_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trailer_item* @trailer_from_arg(%struct.arg_item* %0) #0 {
  %2 = alloca %struct.arg_item*, align 8
  %3 = alloca %struct.trailer_item*, align 8
  store %struct.arg_item* %0, %struct.arg_item** %2, align 8
  %4 = call %struct.trailer_item* @xcalloc(i32 16, i32 1)
  store %struct.trailer_item* %4, %struct.trailer_item** %3, align 8
  %5 = load %struct.arg_item*, %struct.arg_item** %2, align 8
  %6 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.trailer_item*, %struct.trailer_item** %3, align 8
  %9 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load %struct.arg_item*, %struct.arg_item** %2, align 8
  %11 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.trailer_item*, %struct.trailer_item** %3, align 8
  %14 = getelementptr inbounds %struct.trailer_item, %struct.trailer_item* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load %struct.arg_item*, %struct.arg_item** %2, align 8
  %16 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.arg_item*, %struct.arg_item** %2, align 8
  %18 = getelementptr inbounds %struct.arg_item, %struct.arg_item* %17, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = load %struct.arg_item*, %struct.arg_item** %2, align 8
  %20 = call i32 @free_arg_item(%struct.arg_item* %19)
  %21 = load %struct.trailer_item*, %struct.trailer_item** %3, align 8
  ret %struct.trailer_item* %21
}

declare dso_local %struct.trailer_item* @xcalloc(i32, i32) #1

declare dso_local i32 @free_arg_item(%struct.arg_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
