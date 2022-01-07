; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_time.c_stp_sync_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_time.c_stp_sync_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }
%struct.clock_sync_data = type { i64, i32, i32 }

@stp_sync_clock.first = internal global i32 0, align 4
@stp_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@stp_page = common dso_local global i32 0, align 4
@STP_OP_SYNC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @stp_sync_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stp_sync_clock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.clock_sync_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.clock_sync_data*
  store %struct.clock_sync_data* %7, %struct.clock_sync_data** %3, align 8
  %8 = call i32 (...) @enable_sync_clock()
  %9 = call i64 @xchg(i32* @stp_sync_clock.first, i32 1)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %78

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.clock_sync_data*, %struct.clock_sync_data** %3, align 8
  %14 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %13, i32 0, i32 2
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (...) @cpu_relax()
  br label %12

19:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  %20 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stp_info, i32 0, i32 1), align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %19
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stp_info, i32 0, i32 1), align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stp_info, i32 0, i32 1), align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stp_info, i32 0, i32 1), align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stp_info, i32 0, i32 0), align 8
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %66

42:                                               ; preds = %39, %34, %29, %24, %19
  %43 = load i32, i32* @stp_page, align 4
  %44 = load i32, i32* @STP_OP_SYNC, align 4
  %45 = call i32 @chsc_sstpc(i32 %43, i32 %44, i32 0, i64* %4)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.clock_sync_data*, %struct.clock_sync_data** %3, align 8
  %51 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @clock_sync_global(i64 %52)
  %54 = load i32, i32* @stp_page, align 4
  %55 = call i32 @chsc_sstpi(i32 %54, %struct.TYPE_3__* @stp_info, i32 4)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stp_info, i32 0, i32 0), align 8
  %60 = icmp ne i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %58, %48
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  br label %73

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32 [ %71, %69 ], [ 1, %72 ]
  %75 = load %struct.clock_sync_data*, %struct.clock_sync_data** %3, align 8
  %76 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = call i64 @xchg(i32* @stp_sync_clock.first, i32 0)
  br label %91

78:                                               ; preds = %1
  %79 = load %struct.clock_sync_data*, %struct.clock_sync_data** %3, align 8
  %80 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %79, i32 0, i32 2
  %81 = call i32 @atomic_dec(i32* %80)
  br label %82

82:                                               ; preds = %88, %78
  %83 = load %struct.clock_sync_data*, %struct.clock_sync_data** %3, align 8
  %84 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @READ_ONCE(i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 @__udelay(i32 1)
  br label %82

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.clock_sync_data*, %struct.clock_sync_data** %3, align 8
  %93 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 @disable_sync_clock(i32* null)
  br label %98

98:                                               ; preds = %96, %91
  %99 = load %struct.clock_sync_data*, %struct.clock_sync_data** %3, align 8
  %100 = getelementptr inbounds %struct.clock_sync_data, %struct.clock_sync_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @clock_sync_local(i64 %101)
  ret i32 0
}

declare dso_local i32 @enable_sync_clock(...) #1

declare dso_local i64 @xchg(i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @chsc_sstpc(i32, i32, i32, i64*) #1

declare dso_local i32 @clock_sync_global(i64) #1

declare dso_local i32 @chsc_sstpi(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @__udelay(i32) #1

declare dso_local i32 @disable_sync_clock(i32*) #1

declare dso_local i32 @clock_sync_local(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
