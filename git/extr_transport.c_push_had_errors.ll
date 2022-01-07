; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_push_had_errors.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_push_had_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, %struct.ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref*)* @push_had_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_had_errors(%struct.ref* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref*, align 8
  store %struct.ref* %0, %struct.ref** %3, align 8
  br label %4

4:                                                ; preds = %14, %1
  %5 = load %struct.ref*, %struct.ref** %3, align 8
  %6 = icmp ne %struct.ref* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.ref*, %struct.ref** %3, align 8
  %9 = getelementptr inbounds %struct.ref, %struct.ref* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %12 [
    i32 130, label %11
    i32 128, label %11
    i32 129, label %11
  ]

11:                                               ; preds = %7, %7, %7
  br label %13

12:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %19

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.ref*, %struct.ref** %3, align 8
  %16 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 1
  %17 = load %struct.ref*, %struct.ref** %16, align 8
  store %struct.ref* %17, %struct.ref** %3, align 8
  br label %4

18:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
