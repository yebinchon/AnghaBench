; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_md4.c_mdfour_update.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_md4.c_mdfour_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfour = type { i32 }

@m = common dso_local global %struct.mdfour* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdfour*, i32*, i32)* @mdfour_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdfour_update(%struct.mdfour* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mdfour*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [16 x i32], align 16
  store %struct.mdfour* %0, %struct.mdfour** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mdfour*, %struct.mdfour** %4, align 8
  store %struct.mdfour* %8, %struct.mdfour** @m, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @mdfour_tail(i32* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %3
  br label %16

16:                                               ; preds = %19, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 64
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @copy64(i32* %20, i32* %21)
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %24 = call i32 @mdfour64(i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 64
  store i32* %26, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 64
  store i32 %28, i32* %6, align 4
  %29 = load %struct.mdfour*, %struct.mdfour** @m, align 8
  %30 = getelementptr inbounds %struct.mdfour, %struct.mdfour* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 64
  store i32 %32, i32* %30, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @mdfour_tail(i32* %34, i32 %35)
  ret void
}

declare dso_local i32 @mdfour_tail(i32*, i32) #1

declare dso_local i32 @copy64(i32*, i32*) #1

declare dso_local i32 @mdfour64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
