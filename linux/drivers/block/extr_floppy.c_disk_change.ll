; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_disk_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_disk_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@UDRS = common dso_local global %struct.TYPE_4__* null, align 8
@UDP = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"WARNING disk change called early\0A\00", align 1
@FDCS = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"probing disk change on unselected drive\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"drive=%d fdc=%d dor=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"checking disk change line for drive %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"jiffies=%lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"disk change line=%x\0A\00", align 1
@FD_DIR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"flags=%lx\0A\00", align 1
@FD_BROKEN_DCL = common dso_local global i32 0, align 4
@FD_DISK_CHANGED_BIT = common dso_local global i32 0, align 4
@FD_VERIFY_BIT = common dso_local global i32 0, align 4
@FTD_MSG = common dso_local global i32 0, align 4
@current_type = common dso_local global i32** null, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"Disk type is undefined after disk change\0A\00", align 1
@MAX_DISK_SIZE = common dso_local global i32 0, align 4
@floppy_sizes = common dso_local global i32* null, align 8
@FD_DISK_NEWCHANGE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @disk_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_change(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @FDC(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @jiffies, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = call i64 @time_before(i32 %7, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @UNIT(i32 %23)
  %25 = shl i32 16, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 3
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @UNIT(i32 %33)
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @FDC(i32 %38)
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %36, %28, %19
  %42 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @FDC(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @debug_dcl(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @jiffies, align 4
  %60 = call i32 @debug_dcl(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @FD_DIR, align 4
  %65 = call i32 @fd_inb(i32 %64)
  %66 = and i32 %65, 128
  %67 = call i32 @debug_dcl(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @debug_dcl(i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @FD_BROKEN_DCL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %50
  %82 = load i32, i32* @FD_DISK_CHANGED_BIT, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @test_bit(i32 %82, i32* %84)
  store i32 %85, i32* %2, align 4
  br label %151

86:                                               ; preds = %50
  %87 = load i32, i32* @FD_DIR, align 4
  %88 = call i32 @fd_inb(i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = xor i32 %88, %91
  %93 = and i32 %92, 128
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %142

95:                                               ; preds = %86
  %96 = load i32, i32* @FD_VERIFY_BIT, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @set_bit(i32 %96, i32* %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %95
  %105 = load i32, i32* @FD_DISK_CHANGED_BIT, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = call i32 @set_bit(i32 %105, i32* %107)
  br label %109

109:                                              ; preds = %104, %95
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %114, label %141

114:                                              ; preds = %109
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @FTD_MSG, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load i32**, i32*** @current_type, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %121, %114
  %131 = load i32**, i32*** @current_type, align 8
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* @MAX_DISK_SIZE, align 4
  %136 = shl i32 %135, 1
  %137 = load i32*, i32** @floppy_sizes, align 8
  %138 = load i32, i32* %3, align 4
  %139 = call i64 @TOMINOR(i32 %138)
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  br label %141

141:                                              ; preds = %130, %109
  store i32 1, i32* %2, align 4
  br label %151

142:                                              ; preds = %86
  %143 = load i32, i32* @jiffies, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* @FD_DISK_NEWCHANGE_BIT, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = call i32 @clear_bit(i32 %146, i32* %148)
  br label %150

150:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %141, %81
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @FDC(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @UNIT(i32) #1

declare dso_local i32 @debug_dcl(i32, i8*, i32) #1

declare dso_local i32 @fd_inb(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @TOMINOR(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
