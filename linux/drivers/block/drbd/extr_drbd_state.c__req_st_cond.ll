; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c__req_st_cond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c__req_st_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%union.drbd_state = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CL_ST_CHG_SUCCESS = common dso_local global i32 0, align 4
@SS_CW_SUCCESS = common dso_local global i32 0, align 4
@CL_ST_CHG_FAIL = common dso_local global i32 0, align 4
@SS_CW_FAILED_BY_PEER = common dso_local global i32 0, align 4
@SS_SUCCESS = common dso_local global i32 0, align 4
@SS_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@SS_CW_NO_NEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*, i32, i32)* @_req_st_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_req_st_cond(%struct.drbd_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.drbd_state, align 4
  %6 = alloca %union.drbd_state, align 4
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca %union.drbd_state, align 4
  %9 = alloca %union.drbd_state, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.drbd_state, align 4
  %13 = alloca %union.drbd_state, align 4
  %14 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  store i32 %1, i32* %14, align 4
  %15 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  store i32 %2, i32* %15, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %7, align 8
  %16 = load i32, i32* @CL_ST_CHG_SUCCESS, align 4
  %17 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %18 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %17, i32 0, i32 1
  %19 = call i64 @test_and_clear_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @SS_CW_SUCCESS, align 4
  store i32 %22, i32* %4, align 4
  br label %114

23:                                               ; preds = %3
  %24 = load i32, i32* @CL_ST_CHG_FAIL, align 4
  %25 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %26 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %25, i32 0, i32 1
  %27 = call i64 @test_and_clear_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @SS_CW_FAILED_BY_PEER, align 4
  store i32 %30, i32* %4, align 4
  br label %114

31:                                               ; preds = %23
  %32 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %33 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %39 = call i32 @drbd_read_state(%struct.drbd_device* %38)
  %40 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %12, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %union.drbd_state* %8 to i8*
  %42 = bitcast %union.drbd_state* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %44 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @apply_mask_val(i32 %45, i32 %47, i32 %49)
  %51 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sanitize_state(%struct.drbd_device* %43, i32 %52, i32 %50, i32* null)
  %54 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %13, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = bitcast %union.drbd_state* %9 to i8*
  %56 = bitcast %union.drbd_state* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  %57 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @is_valid_transition(i32 %58, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @SS_SUCCESS, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %31
  %66 = load i32, i32* @SS_UNKNOWN_ERROR, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %31
  %68 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %69 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %9, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cl_wide_st_chg(%struct.drbd_device* %68, i32 %70, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @SS_CW_NO_NEED, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %75, %67
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @SS_UNKNOWN_ERROR, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %83 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %9, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @is_valid_state(%struct.drbd_device* %82, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @SS_SUCCESS, align 4
  %88 = icmp uge i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %81
  %90 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %91 = call %struct.TYPE_4__* @first_peer_device(%struct.drbd_device* %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %8, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @is_valid_soft_transition(i32 %95, i32 %97, i32 %93)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @SS_SUCCESS, align 4
  %101 = icmp uge i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %89
  %103 = load i32, i32* @SS_UNKNOWN_ERROR, align 4
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %102, %89
  br label %105

105:                                              ; preds = %104, %81
  br label %106

106:                                              ; preds = %105, %77
  %107 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %108 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %106, %29, %21
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drbd_read_state(%struct.drbd_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sanitize_state(%struct.drbd_device*, i32, i32, i32*) #1

declare dso_local i32 @apply_mask_val(i32, i32, i32) #1

declare dso_local i32 @is_valid_transition(i32, i32) #1

declare dso_local i32 @cl_wide_st_chg(%struct.drbd_device*, i32, i32) #1

declare dso_local i32 @is_valid_state(%struct.drbd_device*, i32) #1

declare dso_local i32 @is_valid_soft_transition(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
