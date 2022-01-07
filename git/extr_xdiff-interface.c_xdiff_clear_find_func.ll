; ModuleID = '/home/carl/AnghaBench/git/extr_xdiff-interface.c_xdiff_clear_find_func.c'
source_filename = "/home/carl/AnghaBench/git/extr_xdiff-interface.c_xdiff_clear_find_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ff_regs*, i32* }
%struct.ff_regs = type { i32, %struct.ff_regs*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdiff_clear_find_func(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ff_regs*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ff_regs*, %struct.ff_regs** %11, align 8
  store %struct.ff_regs* %12, %struct.ff_regs** %4, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %28, %9
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.ff_regs*, %struct.ff_regs** %4, align 8
  %16 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.ff_regs*, %struct.ff_regs** %4, align 8
  %21 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %20, i32 0, i32 1
  %22 = load %struct.ff_regs*, %struct.ff_regs** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %22, i64 %24
  %26 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %25, i32 0, i32 2
  %27 = call i32 @regfree(i32* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.ff_regs*, %struct.ff_regs** %4, align 8
  %33 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %32, i32 0, i32 1
  %34 = load %struct.ff_regs*, %struct.ff_regs** %33, align 8
  %35 = call i32 @free(%struct.ff_regs* %34)
  %36 = load %struct.ff_regs*, %struct.ff_regs** %4, align 8
  %37 = call i32 @free(%struct.ff_regs* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.ff_regs* null, %struct.ff_regs** %41, align 8
  br label %42

42:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @free(%struct.ff_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
