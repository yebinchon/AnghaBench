; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_amiflop_rw_cur_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_amiflop_rw_cur_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amiga_floppy_struct = type { i8*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.request = type { i32 }

@unit = common dso_local global %struct.amiga_floppy_struct* null, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@flush_track_timer = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amiga_floppy_struct*, %struct.request*)* @amiflop_rw_cur_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amiflop_rw_cur_segment(%struct.amiga_floppy_struct* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amiga_floppy_struct*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.amiga_floppy_struct* %0, %struct.amiga_floppy_struct** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %12 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %4, align 8
  %13 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** @unit, align 8
  %14 = ptrtoint %struct.amiga_floppy_struct* %12 to i64
  %15 = ptrtoint %struct.amiga_floppy_struct* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 32
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %110, %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.request*, %struct.request** %5, align 8
  %22 = call i32 @blk_rq_cur_sectors(%struct.request* %21)
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %113

24:                                               ; preds = %19
  %25 = load %struct.request*, %struct.request** %5, align 8
  %26 = call i32 @blk_rq_pos(%struct.request* %25)
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %4, align 8
  %31 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %4, align 8
  %36 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul i32 %34, %39
  %41 = udiv i32 %29, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %4, align 8
  %44 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %4, align 8
  %49 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul i32 %47, %52
  %54 = urem i32 %42, %53
  store i32 %54, i32* %10, align 4
  %55 = load %struct.request*, %struct.request** %5, align 8
  %56 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @bio_data(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = mul i32 512, %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8* %62, i8** %11, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @get_track(i32 %63, i32 %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %69

67:                                               ; preds = %24
  %68 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %68, i32* %3, align 4
  br label %115

69:                                               ; preds = %24
  %70 = load %struct.request*, %struct.request** %5, align 8
  %71 = call i64 @rq_data_dir(%struct.request* %70)
  %72 = load i64, i64* @READ, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %4, align 8
  %77 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = mul i32 %79, 512
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = call i32 @memcpy(i8* %75, i8* %82, i32 512)
  br label %109

84:                                               ; preds = %69
  %85 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %4, align 8
  %86 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = mul i32 %88, 512
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @memcpy(i8* %91, i8* %92, i32 512)
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @fd_motor_on(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %84
  %98 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %98, i32* %3, align 4
  br label %115

99:                                               ; preds = %84
  %100 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %4, align 8
  %101 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %100, i32 0, i32 1
  store i32 1, i32* %101, align 8
  %102 = load i64, i64* @flush_track_timer, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load i64, i64* @jiffies, align 8
  %107 = add nsw i64 %106, 1
  %108 = call i32 @mod_timer(i64 %105, i64 %107)
  br label %109

109:                                              ; preds = %99, %74
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %19

113:                                              ; preds = %19
  %114 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %97, %67
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @blk_rq_cur_sectors(%struct.request*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i8* @bio_data(i32) #1

declare dso_local i32 @get_track(i32, i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fd_motor_on(i32) #1

declare dso_local i32 @mod_timer(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
