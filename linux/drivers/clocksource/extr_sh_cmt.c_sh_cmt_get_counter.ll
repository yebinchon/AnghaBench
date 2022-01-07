; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_get_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_channel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sh_cmt_channel*, i64*)* @sh_cmt_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sh_cmt_get_counter(%struct.sh_cmt_channel* %0, i64* %1) #0 {
  %3 = alloca %struct.sh_cmt_channel*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sh_cmt_channel* %0, %struct.sh_cmt_channel** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %11 = call i64 @sh_cmt_read_cmcsr(%struct.sh_cmt_channel* %10)
  %12 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %13 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %11, %18
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %68, %2
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %23 = call i64 @sh_cmt_read_cmcnt(%struct.sh_cmt_channel* %22)
  store i64 %23, i64* %5, align 8
  %24 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %25 = call i64 @sh_cmt_read_cmcnt(%struct.sh_cmt_channel* %24)
  store i64 %25, i64* %6, align 8
  %26 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %27 = call i64 @sh_cmt_read_cmcnt(%struct.sh_cmt_channel* %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %29 = call i64 @sh_cmt_read_cmcsr(%struct.sh_cmt_channel* %28)
  %30 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %31 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = and i64 %29, %36
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %20
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %68, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %68, label %50

50:                                               ; preds = %46, %42
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %54, %50
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp slt i64 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  br label %68

68:                                               ; preds = %66, %54, %46, %38
  %69 = phi i1 [ true, %54 ], [ true, %46 ], [ true, %38 ], [ %67, %66 ]
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %20, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* %8, align 8
  %75 = load i64*, i64** %4, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64, i64* %6, align 8
  ret i64 %76
}

declare dso_local i64 @sh_cmt_read_cmcsr(%struct.sh_cmt_channel*) #1

declare dso_local i64 @sh_cmt_read_cmcnt(%struct.sh_cmt_channel*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
