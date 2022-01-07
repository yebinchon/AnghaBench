; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_transport_set_verbosity.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_transport_set_verbosity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_set_verbosity(%struct.transport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.transport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 1
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 %10, 3
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  br label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 3, %14 ]
  %17 = load %struct.transport*, %struct.transport** %4, align 8
  %18 = getelementptr inbounds %struct.transport, %struct.transport* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.transport*, %struct.transport** %4, align 8
  %24 = getelementptr inbounds %struct.transport, %struct.transport* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.transport*, %struct.transport** %4, align 8
  %35 = getelementptr inbounds %struct.transport, %struct.transport* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %47

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i64 @isatty(i32 2)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = load %struct.transport*, %struct.transport** %4, align 8
  %46 = getelementptr inbounds %struct.transport, %struct.transport* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %28
  ret void
}

declare dso_local i64 @isatty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
