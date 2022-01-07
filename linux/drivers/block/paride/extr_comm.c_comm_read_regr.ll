; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_comm.c_comm_read_regr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_comm.c_comm_read_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cont_map = common dso_local global i32* null, align 8
@P1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @comm_read_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comm_read_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32*, i32** @cont_map, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %11, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %53 [
    i32 0, label %21
    i32 1, label %34
    i32 2, label %44
    i32 3, label %44
    i32 4, label %44
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @w0(i32 %22)
  %24 = load i32, i32* @P1, align 4
  %25 = call i32 @w0(i32 0)
  %26 = call i32 @w2(i32 6)
  %27 = call i32 (...) @r1()
  store i32 %27, i32* %8, align 4
  %28 = call i32 @w0(i32 128)
  %29 = call i32 (...) @r1()
  store i32 %29, i32* %9, align 4
  %30 = call i32 @w2(i32 4)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @j44(i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %54

34:                                               ; preds = %3
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 32
  %37 = call i32 @w0(i32 %36)
  %38 = load i32, i32* @P1, align 4
  %39 = call i32 @w0(i32 0)
  %40 = call i32 @w2(i32 38)
  %41 = call i32 (...) @r0()
  store i32 %41, i32* %9, align 4
  %42 = call i32 @w2(i32 4)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %54

44:                                               ; preds = %3, %3, %3
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 32
  %47 = call i32 @w3(i32 %46)
  %48 = call i32 (...) @r1()
  %49 = call i32 @w2(i32 36)
  %50 = call i32 (...) @r4()
  store i32 %50, i32* %9, align 4
  %51 = call i32 @w2(i32 4)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %44, %34, %21
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @j44(i32, i32) #1

declare dso_local i32 @r0(...) #1

declare dso_local i32 @w3(i32) #1

declare dso_local i32 @r4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
