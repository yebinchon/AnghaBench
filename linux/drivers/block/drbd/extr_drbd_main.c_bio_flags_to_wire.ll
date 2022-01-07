; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_bio_flags_to_wire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_bio_flags_to_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32, i32 }
%struct.bio = type { i32 }

@REQ_SYNC = common dso_local global i32 0, align 4
@DP_RW_SYNC = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@DP_FUA = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@DP_FLUSH = common dso_local global i32 0, align 4
@REQ_OP_WRITE_SAME = common dso_local global i64 0, align 8
@DP_WSAME = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@DP_DISCARD = common dso_local global i32 0, align 4
@REQ_OP_WRITE_ZEROES = common dso_local global i64 0, align 8
@DRBD_FF_WZEROES = common dso_local global i32 0, align 4
@DP_ZEROES = common dso_local global i32 0, align 4
@REQ_NOUNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, %struct.bio*)* @bio_flags_to_wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_flags_to_wire(%struct.drbd_connection* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %6 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %7 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sge i32 %8, 95
  br i1 %9, label %10, label %99

10:                                               ; preds = %2
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @REQ_SYNC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @DP_RW_SYNC, align 4
  br label %20

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @REQ_FUA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @DP_FUA, align 4
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = or i32 %21, %32
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @REQ_PREFLUSH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @DP_FLUSH, align 4
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %33, %44
  %46 = load %struct.bio*, %struct.bio** %5, align 8
  %47 = call i64 @bio_op(%struct.bio* %46)
  %48 = load i64, i64* @REQ_OP_WRITE_SAME, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @DP_WSAME, align 4
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = or i32 %45, %54
  %56 = load %struct.bio*, %struct.bio** %5, align 8
  %57 = call i64 @bio_op(%struct.bio* %56)
  %58 = load i64, i64* @REQ_OP_DISCARD, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @DP_DISCARD, align 4
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = or i32 %55, %64
  %66 = load %struct.bio*, %struct.bio** %5, align 8
  %67 = call i64 @bio_op(%struct.bio* %66)
  %68 = load i64, i64* @REQ_OP_WRITE_ZEROES, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %63
  %71 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %72 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DRBD_FF_WZEROES, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %70
  %78 = load i32, i32* @DP_ZEROES, align 4
  %79 = load %struct.bio*, %struct.bio** %5, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @REQ_NOUNMAP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @DP_DISCARD, align 4
  br label %88

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = or i32 %78, %89
  br label %93

91:                                               ; preds = %70
  %92 = load i32, i32* @DP_DISCARD, align 4
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi i32 [ %90, %88 ], [ %92, %91 ]
  br label %96

95:                                               ; preds = %63
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = or i32 %65, %97
  store i32 %98, i32* %3, align 4
  br label %111

99:                                               ; preds = %2
  %100 = load %struct.bio*, %struct.bio** %5, align 8
  %101 = getelementptr inbounds %struct.bio, %struct.bio* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @REQ_SYNC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @DP_RW_SYNC, align 4
  br label %109

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ]
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %96
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @bio_op(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
