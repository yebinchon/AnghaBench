; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c___end_block_io_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c___end_block_io_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_req = type { i64, i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BLKIF_OP_FLUSH_DISKCACHE = common dso_local global i64 0, align 8
@BLK_STS_NOTSUPP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"flush diskcache op failed, not supported\0A\00", align 1
@XBT_NIL = common dso_local global i32 0, align 4
@BLKIF_RSP_EOPNOTSUPP = common dso_local global i8* null, align 8
@BLKIF_OP_WRITE_BARRIER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"write barrier op failed, not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Buffer not up-to-date at end of operation, error=%d\0A\00", align 1
@BLKIF_RSP_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pending_req*, i64)* @__end_block_io_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__end_block_io_op(%struct.pending_req* %0, i64 %1) #0 {
  %3 = alloca %struct.pending_req*, align 8
  %4 = alloca i64, align 8
  store %struct.pending_req* %0, %struct.pending_req** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.pending_req*, %struct.pending_req** %3, align 8
  %6 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BLKIF_OP_FLUSH_DISKCACHE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @BLK_STS_NOTSUPP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @XBT_NIL, align 4
  %17 = load %struct.pending_req*, %struct.pending_req** %3, align 8
  %18 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xen_blkbk_flush_diskcache(i32 %16, i32 %23, i32 0)
  %25 = load i8*, i8** @BLKIF_RSP_EOPNOTSUPP, align 8
  %26 = load %struct.pending_req*, %struct.pending_req** %3, align 8
  %27 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  br label %63

28:                                               ; preds = %10, %2
  %29 = load %struct.pending_req*, %struct.pending_req** %3, align 8
  %30 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BLKIF_OP_WRITE_BARRIER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @BLK_STS_NOTSUPP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @XBT_NIL, align 4
  %41 = load %struct.pending_req*, %struct.pending_req** %3, align 8
  %42 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @xen_blkbk_barrier(i32 %40, i32 %47, i32 0)
  %49 = load i8*, i8** @BLKIF_RSP_EOPNOTSUPP, align 8
  %50 = load %struct.pending_req*, %struct.pending_req** %3, align 8
  %51 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %62

52:                                               ; preds = %34, %28
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64, i64* %4, align 8
  %57 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load i8*, i8** @BLKIF_RSP_ERROR, align 8
  %59 = load %struct.pending_req*, %struct.pending_req** %3, align 8
  %60 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %55, %52
  br label %62

62:                                               ; preds = %61, %38
  br label %63

63:                                               ; preds = %62, %14
  %64 = load %struct.pending_req*, %struct.pending_req** %3, align 8
  %65 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %64, i32 0, i32 1
  %66 = call i64 @atomic_dec_and_test(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.pending_req*, %struct.pending_req** %3, align 8
  %70 = call i32 @xen_blkbk_unmap_and_respond(%struct.pending_req* %69)
  br label %71

71:                                               ; preds = %68, %63
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @xen_blkbk_flush_diskcache(i32, i32, i32) #1

declare dso_local i32 @xen_blkbk_barrier(i32, i32, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @xen_blkbk_unmap_and_respond(%struct.pending_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
