; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_remote_is_configured.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_remote_is_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remote_is_configured(%struct.remote* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.remote*, align 8
  %5 = alloca i32, align 4
  store %struct.remote* %0, %struct.remote** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.remote*, %struct.remote** %4, align 8
  %7 = icmp ne %struct.remote* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.remote*, %struct.remote** %4, align 8
  %14 = getelementptr inbounds %struct.remote, %struct.remote* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %9
  %17 = load %struct.remote*, %struct.remote** %4, align 8
  %18 = getelementptr inbounds %struct.remote, %struct.remote* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %16, %12, %8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
