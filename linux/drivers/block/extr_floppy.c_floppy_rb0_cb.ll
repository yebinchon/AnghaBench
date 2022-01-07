; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_rb0_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_rb0_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i64, i64 }
%struct.rb0_cbdata = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"floppy: error %d while reading block 0\0A\00", align 1
@FD_OPEN_SHOULD_FAIL_BIT = common dso_local global i32 0, align 4
@UDRS = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @floppy_rb0_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @floppy_rb0_cb(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.rb0_cbdata*, align 8
  %4 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.rb0_cbdata*
  store %struct.rb0_cbdata* %8, %struct.rb0_cbdata** %3, align 8
  %9 = load %struct.rb0_cbdata*, %struct.rb0_cbdata** %3, align 8
  %10 = getelementptr inbounds %struct.rb0_cbdata, %struct.rb0_cbdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @FD_OPEN_SHOULD_FAIL_BIT, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UDRS, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.rb0_cbdata*, %struct.rb0_cbdata** %3, align 8
  %27 = getelementptr inbounds %struct.rb0_cbdata, %struct.rb0_cbdata* %26, i32 0, i32 1
  %28 = call i32 @complete(i32* %27)
  ret void
}

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
