; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_get_track.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_get_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)* }

@unit = common dso_local global %struct.TYPE_4__* null, align 8
@flush_track_timer = common dso_local global i32 0, align 4
@MAX_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_track(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 3
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @unit, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @get_fdc(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @fd_motor_on(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = call i32 (...) @rel_fdc()
  store i32 -1, i32* %3, align 4
  br label %80

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @unit, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i32, i32* @flush_track_timer, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @del_timer(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @non_int_flush_track(i32 %40)
  br label %42

42:                                               ; preds = %35, %27
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %70, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MAX_ERRORS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @fd_seek(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %80

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @raw_read(i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @unit, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 %63(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = call i32 (...) @rel_fdc()
  store i32 0, i32* %3, align 4
  br label %80

70:                                               ; preds = %53
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @unit, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 -1, i32* %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %43

78:                                               ; preds = %43
  %79 = call i32 (...) @rel_fdc()
  store i32 -1, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %68, %52, %25, %18
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @get_fdc(i32) #1

declare dso_local i32 @fd_motor_on(i32) #1

declare dso_local i32 @rel_fdc(...) #1

declare dso_local i32 @del_timer(i32) #1

declare dso_local i32 @non_int_flush_track(i32) #1

declare dso_local i32 @fd_seek(i32, i32) #1

declare dso_local i32 @raw_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
