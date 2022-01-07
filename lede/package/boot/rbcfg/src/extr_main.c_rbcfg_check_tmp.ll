; ModuleID = '/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_check_tmp.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_check_tmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_ctx = type { i64, i32 }
%struct.stat = type { i32, i64 }

@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbcfg_ctx*)* @rbcfg_check_tmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbcfg_check_tmp(%struct.rbcfg_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbcfg_ctx*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  store %struct.rbcfg_ctx* %0, %struct.rbcfg_ctx** %3, align 8
  %6 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @stat(i32 %8, %struct.stat* %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @S_IFREG, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %29

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %19, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @stat(i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
