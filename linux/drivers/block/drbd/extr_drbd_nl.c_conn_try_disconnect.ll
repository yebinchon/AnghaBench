; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_conn_try_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_conn_try_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@conn = common dso_local global i32 0, align 4
@C_DISCONNECTING = common dso_local global i32 0, align 4
@CS_HARD = common dso_local global i32 0, align 4
@SS_SUCCESS = common dso_local global i32 0, align 4
@pdsk = common dso_local global i32 0, align 4
@D_OUTDATED = common dso_local global i32 0, align 4
@SS_OUTDATE_WO_CONN = common dso_local global i32 0, align 4
@CS_VERBOSE = common dso_local global i32 0, align 4
@C_WF_CONNECTION = common dso_local global i32 0, align 4
@disk = common dso_local global i32 0, align 4
@SS_IS_DISKLESS = common dso_local global i32 0, align 4
@SS_LOWER_THAN_OUTDATED = common dso_local global i32 0, align 4
@C_STANDALONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unexpected rv2=%d in conn_try_disconnect()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, i32)* @conn_try_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conn_try_disconnect(%struct.drbd_connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %9

9:                                                ; preds = %62, %2
  %10 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %11 = load i32, i32* @conn, align 4
  %12 = load i32, i32* @C_DISCONNECTING, align 4
  %13 = call i32 @NS(i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @CS_HARD, align 4
  br label %19

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = call i32 @conn_request_state(%struct.drbd_connection* %10, i32 %13, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %86 [
    i32 129, label %23
    i32 131, label %24
    i32 128, label %26
    i32 130, label %45
  ]

23:                                               ; preds = %19
  br label %87

24:                                               ; preds = %19
  %25 = load i32, i32* @SS_SUCCESS, align 4
  store i32 %25, i32* %3, align 4
  br label %113

26:                                               ; preds = %19
  %27 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %28 = load i32, i32* @conn, align 4
  %29 = load i32, i32* @C_DISCONNECTING, align 4
  %30 = load i32, i32* @pdsk, align 4
  %31 = load i32, i32* @D_OUTDATED, align 4
  %32 = call i32 @NS2(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = call i32 @conn_request_state(%struct.drbd_connection* %27, i32 %32, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SS_OUTDATE_WO_CONN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %39 = load i32, i32* @conn, align 4
  %40 = load i32, i32* @C_DISCONNECTING, align 4
  %41 = call i32 @NS(i32 %39, i32 %40)
  %42 = load i32, i32* @CS_VERBOSE, align 4
  %43 = call i32 @conn_request_state(%struct.drbd_connection* %38, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %37, %26
  br label %87

45:                                               ; preds = %19
  %46 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %47 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %52 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %6, align 4
  %54 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %55 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_irq(i32* %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @C_WF_CONNECTION, align 4
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %9

63:                                               ; preds = %45
  %64 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %65 = load i32, i32* @conn, align 4
  %66 = load i32, i32* @C_DISCONNECTING, align 4
  %67 = load i32, i32* @disk, align 4
  %68 = load i32, i32* @D_OUTDATED, align 4
  %69 = call i32 @NS2(i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = call i32 @conn_request_state(%struct.drbd_connection* %64, i32 %69, i32 0)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SS_IS_DISKLESS, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @SS_LOWER_THAN_OUTDATED, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74, %63
  %79 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %80 = load i32, i32* @conn, align 4
  %81 = load i32, i32* @C_DISCONNECTING, align 4
  %82 = call i32 @NS(i32 %80, i32 %81)
  %83 = load i32, i32* @CS_HARD, align 4
  %84 = call i32 @conn_request_state(%struct.drbd_connection* %79, i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %78, %74
  br label %87

86:                                               ; preds = %19
  br label %87

87:                                               ; preds = %86, %85, %44, %23
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @SS_SUCCESS, align 4
  %90 = icmp uge i32 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %93 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %92, i32 0, i32 1
  %94 = call i32 @drbd_thread_stop(i32* %93)
  %95 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %96 = load i32, i32* @conn, align 4
  %97 = load i32, i32* @C_STANDALONE, align 4
  %98 = call i32 @NS(i32 %96, i32 %97)
  %99 = load i32, i32* @CS_VERBOSE, align 4
  %100 = load i32, i32* @CS_HARD, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @conn_request_state(%struct.drbd_connection* %95, i32 %98, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @SS_SUCCESS, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %91
  %107 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @drbd_err(%struct.drbd_connection* %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %91
  br label %111

111:                                              ; preds = %110, %87
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %24
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @conn_request_state(%struct.drbd_connection*, i32, i32) #1

declare dso_local i32 @NS(i32, i32) #1

declare dso_local i32 @NS2(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @drbd_thread_stop(i32*) #1

declare dso_local i32 @drbd_err(%struct.drbd_connection*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
