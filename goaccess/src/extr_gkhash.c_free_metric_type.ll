; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gkhash.c_free_metric_type.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gkhash.c_free_metric_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @free_metric_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_metric_type(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %3 = load i32, i32* %2, align 8
  switch i32 %3, label %32 [
    i32 133, label %4
    i32 132, label %8
    i32 131, label %12
    i32 130, label %16
    i32 129, label %20
    i32 134, label %24
    i32 128, label %28
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @des_ii32(i32 %6)
  br label %32

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @des_is32_free(i32 %10)
  br label %32

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @des_iu64(i32 %14)
  br label %32

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @des_si32_free(i32 %18)
  br label %32

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @des_ss32_free(i32 %22)
  br label %32

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @des_igsl_free(i32 %26)
  br label %32

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @des_su64_free(i32 %30)
  br label %32

32:                                               ; preds = %1, %28, %24, %20, %16, %12, %8, %4
  ret void
}

declare dso_local i32 @des_ii32(i32) #1

declare dso_local i32 @des_is32_free(i32) #1

declare dso_local i32 @des_iu64(i32) #1

declare dso_local i32 @des_si32_free(i32) #1

declare dso_local i32 @des_ss32_free(i32) #1

declare dso_local i32 @des_igsl_free(i32) #1

declare dso_local i32 @des_su64_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
