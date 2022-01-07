; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c___do_block_io_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c___do_block_io_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { %struct.TYPE_8__*, i32, %union.blkif_back_rings }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%union.blkif_back_rings = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.blkif_request = type { i32 }
%struct.pending_req = type { i32 }

@.str = private unnamed_addr constant [91 x i8] c"Frontend provided bogus ring requests (%d - %d = %d). Halting ring processing on dev=%04x\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_blkif_ring*)* @__do_block_io_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_block_io_op(%struct.xen_blkif_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_blkif_ring*, align 8
  %4 = alloca %union.blkif_back_rings*, align 8
  %5 = alloca %struct.blkif_request, align 4
  %6 = alloca %struct.pending_req*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %3, align 8
  %10 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %11 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %10, i32 0, i32 2
  store %union.blkif_back_rings* %11, %union.blkif_back_rings** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load %union.blkif_back_rings*, %union.blkif_back_rings** %4, align 8
  %13 = bitcast %union.blkif_back_rings* %12 to %struct.TYPE_9__*
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %union.blkif_back_rings*, %union.blkif_back_rings** %4, align 8
  %17 = bitcast %union.blkif_back_rings* %16 to %struct.TYPE_9__*
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = call i32 (...) @rmb()
  %23 = load %union.blkif_back_rings*, %union.blkif_back_rings** %4, align 8
  %24 = bitcast %union.blkif_back_rings* %23 to %struct.TYPE_9__*
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @RING_REQUEST_PROD_OVERFLOW(%struct.TYPE_9__* %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load %union.blkif_back_rings*, %union.blkif_back_rings** %4, align 8
  %30 = bitcast %union.blkif_back_rings* %29 to %struct.TYPE_9__*
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %39 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_warn(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34, i64 %37, i32 %43)
  %45 = load i32, i32* @EACCES, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %136

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %131, %47
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %133

52:                                               ; preds = %48
  %53 = load %union.blkif_back_rings*, %union.blkif_back_rings** %4, align 8
  %54 = bitcast %union.blkif_back_rings* %53 to %struct.TYPE_9__*
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @RING_REQUEST_CONS_OVERFLOW(%struct.TYPE_9__* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %133

59:                                               ; preds = %52
  %60 = call i64 (...) @kthread_should_stop()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  br label %133

63:                                               ; preds = %59
  %64 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %65 = call %struct.pending_req* @alloc_req(%struct.xen_blkif_ring* %64)
  store %struct.pending_req* %65, %struct.pending_req** %6, align 8
  %66 = load %struct.pending_req*, %struct.pending_req** %6, align 8
  %67 = icmp eq %struct.pending_req* null, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %70 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  store i32 1, i32* %9, align 4
  br label %133

73:                                               ; preds = %63
  %74 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %75 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %97 [
    i32 130, label %79
    i32 129, label %85
    i32 128, label %91
  ]

79:                                               ; preds = %73
  %80 = load %union.blkif_back_rings*, %union.blkif_back_rings** %4, align 8
  %81 = bitcast %union.blkif_back_rings* %80 to i32*
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @RING_GET_REQUEST(i32* %81, i64 %82)
  %84 = call i32 @memcpy(%struct.blkif_request* %5, i32 %83, i32 4)
  br label %99

85:                                               ; preds = %73
  %86 = load %union.blkif_back_rings*, %union.blkif_back_rings** %4, align 8
  %87 = bitcast %union.blkif_back_rings* %86 to i32*
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @RING_GET_REQUEST(i32* %87, i64 %88)
  %90 = call i32 @blkif_get_x86_32_req(%struct.blkif_request* %5, i32 %89)
  br label %99

91:                                               ; preds = %73
  %92 = load %union.blkif_back_rings*, %union.blkif_back_rings** %4, align 8
  %93 = bitcast %union.blkif_back_rings* %92 to i32*
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @RING_GET_REQUEST(i32* %93, i64 %94)
  %96 = call i32 @blkif_get_x86_64_req(%struct.blkif_request* %5, i32 %95)
  br label %99

97:                                               ; preds = %73
  %98 = call i32 (...) @BUG()
  br label %99

99:                                               ; preds = %97, %91, %85, %79
  %100 = load i64, i64* %7, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %7, align 8
  %102 = load %union.blkif_back_rings*, %union.blkif_back_rings** %4, align 8
  %103 = bitcast %union.blkif_back_rings* %102 to %struct.TYPE_9__*
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  %105 = call i32 (...) @barrier()
  %106 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %5, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %124 [
    i32 133, label %108
    i32 132, label %108
    i32 131, label %108
    i32 135, label %108
    i32 134, label %108
    i32 136, label %115
  ]

108:                                              ; preds = %99, %99, %99, %99, %99
  %109 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %110 = load %struct.pending_req*, %struct.pending_req** %6, align 8
  %111 = call i32 @dispatch_rw_block_io(%struct.xen_blkif_ring* %109, %struct.blkif_request* %5, %struct.pending_req* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %134

114:                                              ; preds = %108
  br label %131

115:                                              ; preds = %99
  %116 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %117 = load %struct.pending_req*, %struct.pending_req** %6, align 8
  %118 = call i32 @free_req(%struct.xen_blkif_ring* %116, %struct.pending_req* %117)
  %119 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %120 = call i32 @dispatch_discard_io(%struct.xen_blkif_ring* %119, %struct.blkif_request* %5)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %134

123:                                              ; preds = %115
  br label %131

124:                                              ; preds = %99
  %125 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %126 = load %struct.pending_req*, %struct.pending_req** %6, align 8
  %127 = call i32 @dispatch_other_io(%struct.xen_blkif_ring* %125, %struct.blkif_request* %5, %struct.pending_req* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %134

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %123, %114
  %132 = call i32 (...) @cond_resched()
  br label %48

133:                                              ; preds = %68, %62, %58, %48
  br label %134

134:                                              ; preds = %133, %129, %122, %113
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %28
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @RING_REQUEST_PROD_OVERFLOW(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @pr_warn(i8*, i64, i64, i64, i32) #1

declare dso_local i64 @RING_REQUEST_CONS_OVERFLOW(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local %struct.pending_req* @alloc_req(%struct.xen_blkif_ring*) #1

declare dso_local i32 @memcpy(%struct.blkif_request*, i32, i32) #1

declare dso_local i32 @RING_GET_REQUEST(i32*, i64) #1

declare dso_local i32 @blkif_get_x86_32_req(%struct.blkif_request*, i32) #1

declare dso_local i32 @blkif_get_x86_64_req(%struct.blkif_request*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @dispatch_rw_block_io(%struct.xen_blkif_ring*, %struct.blkif_request*, %struct.pending_req*) #1

declare dso_local i32 @free_req(%struct.xen_blkif_ring*, %struct.pending_req*) #1

declare dso_local i32 @dispatch_discard_io(%struct.xen_blkif_ring*, %struct.blkif_request*) #1

declare dso_local i32 @dispatch_other_io(%struct.xen_blkif_ring*, %struct.blkif_request*, %struct.pending_req*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
