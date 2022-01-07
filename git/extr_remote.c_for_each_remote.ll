; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_for_each_remote.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_for_each_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote = type { i32 }

@remotes_nr = common dso_local global i32 0, align 4
@remotes = common dso_local global %struct.remote** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_each_remote(i32 (%struct.remote*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (%struct.remote*, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.remote*, align 8
  store i32 (%struct.remote*, i8*)* %0, i32 (%struct.remote*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32 (...) @read_config()
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @remotes_nr, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %36

19:                                               ; preds = %17
  %20 = load %struct.remote**, %struct.remote*** @remotes, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.remote*, %struct.remote** %20, i64 %22
  %24 = load %struct.remote*, %struct.remote** %23, align 8
  store %struct.remote* %24, %struct.remote** %7, align 8
  %25 = load %struct.remote*, %struct.remote** %7, align 8
  %26 = icmp ne %struct.remote* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %33

28:                                               ; preds = %19
  %29 = load i32 (%struct.remote*, i8*)*, i32 (%struct.remote*, i8*)** %3, align 8
  %30 = load %struct.remote*, %struct.remote** %7, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 %29(%struct.remote* %30, i8* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %9

36:                                               ; preds = %17
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @read_config(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
