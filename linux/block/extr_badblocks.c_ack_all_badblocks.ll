; ModuleID = '/home/carl/AnghaBench/linux/block/extr_badblocks.c_ack_all_badblocks.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_badblocks.c_ack_all_badblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.badblocks = type { i64, i32, i32, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ack_all_badblocks(%struct.badblocks* %0) #0 {
  %2 = alloca %struct.badblocks*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.badblocks* %0, %struct.badblocks** %2, align 8
  %7 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %8 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %13 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  br label %79

17:                                               ; preds = %11
  %18 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %19 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %18, i32 0, i32 2
  %20 = call i32 @write_seqlock_irq(i32* %19)
  %21 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %22 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %17
  %26 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %27 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %25
  %31 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %32 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %69, %30
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %37 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BB_ACK(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BB_OFFSET(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @BB_LEN(i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @BB_MAKE(i32 %61, i32 %62, i32 1)
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %48, %40
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %34

72:                                               ; preds = %34
  %73 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %74 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %25, %17
  %76 = load %struct.badblocks*, %struct.badblocks** %2, align 8
  %77 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %76, i32 0, i32 2
  %78 = call i32 @write_sequnlock_irq(i32* %77)
  br label %79

79:                                               ; preds = %75, %16
  ret void
}

declare dso_local i32 @write_seqlock_irq(i32*) #1

declare dso_local i32 @BB_ACK(i32) #1

declare dso_local i32 @BB_OFFSET(i32) #1

declare dso_local i32 @BB_LEN(i32) #1

declare dso_local i32 @BB_MAKE(i32, i32, i32) #1

declare dso_local i32 @write_sequnlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
