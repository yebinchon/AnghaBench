; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_act.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floppy_state = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"  act loop, state=%d, req_cyl=%d, cur_cyl=%d\0A\00", align 1
@TRACK_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"    locate track 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Whoops, seeking 0\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@settle_timeout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Wrong cylinder in transfer, want: %d got %d\0A\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Unknown state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.floppy_state*)* @act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @act(%struct.floppy_state* %0) #0 {
  %2 = alloca %struct.floppy_state*, align 8
  store %struct.floppy_state* %0, %struct.floppy_state** %2, align 8
  br label %3

3:                                                ; preds = %125, %1
  %4 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %5 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %8 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %11 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @swim3_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i32 %12)
  %14 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %15 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %120 [
    i32 132, label %17
    i32 130, label %18
    i32 129, label %41
    i32 128, label %73
    i32 133, label %85
    i32 131, label %117
  ]

17:                                               ; preds = %3
  br label %126

18:                                               ; preds = %3
  %19 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %20 = load i32, i32* @TRACK_ZERO, align 4
  %21 = call i32 @swim3_readbit(%struct.floppy_state* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @swim3_dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %26 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %28 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %33 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %32, i32 0, i32 0
  store i32 133, i32* %33, align 4
  br label %37

34:                                               ; preds = %23
  %35 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %36 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %35, i32 0, i32 0
  store i32 129, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %125

38:                                               ; preds = %18
  %39 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %40 = call i32 @scan_track(%struct.floppy_state* %39)
  br label %126

41:                                               ; preds = %3
  %42 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %43 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %48 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %47, i32 0, i32 3
  store i32 -1, i32* %48, align 4
  %49 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %50 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %49, i32 0, i32 0
  store i32 130, i32* %50, align 4
  br label %125

51:                                               ; preds = %41
  %52 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %53 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %56 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = call i32 @swim3_warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %62 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %61, i32 0, i32 0
  store i32 133, i32* %62, align 4
  br label %125

63:                                               ; preds = %51
  %64 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %65 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %66 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %69 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = call i32 @seek_track(%struct.floppy_state* %64, i32 %71)
  br label %126

73:                                               ; preds = %3
  %74 = load i32, i32* @HZ, align 4
  %75 = add nsw i32 %74, 32
  %76 = sdiv i32 %75, 33
  %77 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %78 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %80 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %81 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @settle_timeout, align 4
  %84 = call i32 @set_timeout(%struct.floppy_state* %79, i32 %82, i32 %83)
  br label %126

85:                                               ; preds = %3
  %86 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %87 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %90 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %85
  %94 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %95 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 5
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %100 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %103 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, i32, ...) @swim3_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %107 = load i32, i32* @BLK_STS_IOERR, align 4
  %108 = call i32 @swim3_end_request(%struct.floppy_state* %106, i32 %107, i32 0)
  %109 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %110 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %109, i32 0, i32 0
  store i32 132, i32* %110, align 4
  br label %126

111:                                              ; preds = %93
  %112 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %113 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %112, i32 0, i32 0
  store i32 129, i32* %113, align 4
  br label %125

114:                                              ; preds = %85
  %115 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %116 = call i32 @setup_transfer(%struct.floppy_state* %115)
  br label %126

117:                                              ; preds = %3
  %118 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %119 = call i32 @seek_track(%struct.floppy_state* %118, i32 -5)
  br label %126

120:                                              ; preds = %3
  %121 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %122 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, i32, ...) @swim3_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  br label %126

125:                                              ; preds = %111, %59, %46, %37
  br label %3

126:                                              ; preds = %120, %117, %114, %98, %73, %63, %38, %17
  ret void
}

declare dso_local i32 @swim3_dbg(i8*, ...) #1

declare dso_local i32 @swim3_readbit(%struct.floppy_state*, i32) #1

declare dso_local i32 @scan_track(%struct.floppy_state*) #1

declare dso_local i32 @swim3_warn(i8*, i8*) #1

declare dso_local i32 @seek_track(%struct.floppy_state*, i32) #1

declare dso_local i32 @set_timeout(%struct.floppy_state*, i32, i32) #1

declare dso_local i32 @swim3_err(i8*, i32, ...) #1

declare dso_local i32 @swim3_end_request(%struct.floppy_state*, i32, i32) #1

declare dso_local i32 @setup_transfer(%struct.floppy_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
