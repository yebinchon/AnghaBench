; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_stat_validity_update.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_stat_validity_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_validity = type { i64 }
%struct.stat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stat_validity_update(%struct.stat_validity* %0, i32 %1) #0 {
  %3 = alloca %struct.stat_validity*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  store %struct.stat_validity* %0, %struct.stat_validity** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @fstat(i32 %6, %struct.stat* %5)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @S_ISREG(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.stat_validity*, %struct.stat_validity** %3, align 8
  %16 = call i32 @stat_validity_clear(%struct.stat_validity* %15)
  br label %31

17:                                               ; preds = %9
  %18 = load %struct.stat_validity*, %struct.stat_validity** %3, align 8
  %19 = getelementptr inbounds %struct.stat_validity, %struct.stat_validity* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = call i64 @xcalloc(i32 1, i32 4)
  %24 = load %struct.stat_validity*, %struct.stat_validity** %3, align 8
  %25 = getelementptr inbounds %struct.stat_validity, %struct.stat_validity* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.stat_validity*, %struct.stat_validity** %3, align 8
  %28 = getelementptr inbounds %struct.stat_validity, %struct.stat_validity* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @fill_stat_data(i64 %29, %struct.stat* %5)
  br label %31

31:                                               ; preds = %26, %14
  ret void
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @stat_validity_clear(%struct.stat_validity*) #1

declare dso_local i64 @xcalloc(i32, i32) #1

declare dso_local i32 @fill_stat_data(i64, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
