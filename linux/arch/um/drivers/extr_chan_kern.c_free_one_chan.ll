; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_free_one_chan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_free_one_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan = type { i32, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chan*)* @free_one_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_one_chan(%struct.chan* %0) #0 {
  %2 = alloca %struct.chan*, align 8
  store %struct.chan* %0, %struct.chan** %2, align 8
  %3 = load %struct.chan*, %struct.chan** %2, align 8
  %4 = getelementptr inbounds %struct.chan, %struct.chan* %3, i32 0, i32 5
  %5 = call i32 @list_del(i32* %4)
  %6 = load %struct.chan*, %struct.chan** %2, align 8
  %7 = call i32 @close_one_chan(%struct.chan* %6, i32 0)
  %8 = load %struct.chan*, %struct.chan** %2, align 8
  %9 = getelementptr inbounds %struct.chan, %struct.chan* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = icmp ne i32 (i32)* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.chan*, %struct.chan** %2, align 8
  %16 = getelementptr inbounds %struct.chan, %struct.chan* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load %struct.chan*, %struct.chan** %2, align 8
  %21 = getelementptr inbounds %struct.chan, %struct.chan* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %19(i32 %22)
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.chan*, %struct.chan** %2, align 8
  %26 = getelementptr inbounds %struct.chan, %struct.chan* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.chan*, %struct.chan** %2, align 8
  %31 = getelementptr inbounds %struct.chan, %struct.chan* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.chan*, %struct.chan** %2, align 8
  %36 = getelementptr inbounds %struct.chan, %struct.chan* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ignore_sigio_fd(i32 %37)
  br label %39

39:                                               ; preds = %34, %29, %24
  %40 = load %struct.chan*, %struct.chan** %2, align 8
  %41 = call i32 @kfree(%struct.chan* %40)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @close_one_chan(%struct.chan*, i32) #1

declare dso_local i32 @ignore_sigio_fd(i32) #1

declare dso_local i32 @kfree(%struct.chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
