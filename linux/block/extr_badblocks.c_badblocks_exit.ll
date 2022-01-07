; ModuleID = '/home/carl/AnghaBench/linux/block/extr_badblocks.c_badblocks_exit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_badblocks.c_badblocks_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.badblocks = type { i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badblocks_exit(%struct.badblocks* %0) #0 {
  %2 = alloca %struct.badblocks*, align 8
  store %struct.badblocks* %0, %struct.badblocks** %2, align 8
  %3 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %4 = icmp ne %struct.badblocks* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %8 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %13 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %16 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @devm_kfree(i64 %14, i32* %17)
  br label %24

19:                                               ; preds = %6
  %20 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %21 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @kfree(i32* %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %26 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %24, %5
  ret void
}

declare dso_local i32 @devm_kfree(i64, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
