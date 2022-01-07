; ModuleID = '/home/carl/AnghaBench/git/extr_csum-file.c_hashflush.c'
source_filename = "/home/carl/AnghaBench/git/extr_csum-file.c_hashflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32, i32)* }
%struct.hashfile = type { i32, i32, i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashflush(%struct.hashfile* %0) #0 {
  %2 = alloca %struct.hashfile*, align 8
  %3 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %2, align 8
  %4 = load %struct.hashfile*, %struct.hashfile** %2, align 8
  %5 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %11, align 8
  %13 = load %struct.hashfile*, %struct.hashfile** %2, align 8
  %14 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %13, i32 0, i32 2
  %15 = load %struct.hashfile*, %struct.hashfile** %2, align 8
  %16 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 %12(i32* %14, i32 %17, i32 %18)
  %20 = load %struct.hashfile*, %struct.hashfile** %2, align 8
  %21 = load %struct.hashfile*, %struct.hashfile** %2, align 8
  %22 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @flush(%struct.hashfile* %20, i32 %23, i32 %24)
  %26 = load %struct.hashfile*, %struct.hashfile** %2, align 8
  %27 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @flush(%struct.hashfile*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
