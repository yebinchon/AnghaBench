; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_update_blkif_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_update_blkif_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif = type { i32, %struct.xen_blkif_ring*, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.xen_blkif_ring = type { i32*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@XenbusStateConnected = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"get blkback dev name\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"block flush\00", align 1
@xen_blkif_schedule = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"start %s-%d xenblkd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_blkif*)* @xen_update_blkif_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_update_blkif_status(%struct.xen_blkif* %0) #0 {
  %2 = alloca %struct.xen_blkif*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xen_blkif_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xen_blkif* %0, %struct.xen_blkif** %2, align 8
  %9 = load i32, i32* @TASK_COMM_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %14 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %13, i32 0, i32 1
  %15 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %14, align 8
  %16 = icmp ne %struct.xen_blkif_ring* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %19 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %18, i32 0, i32 1
  %20 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %19, align 8
  %21 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %20, i64 0
  %22 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %27 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %17, %1
  store i32 1, i32* %8, align 4
  br label %162

32:                                               ; preds = %25
  %33 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %34 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XenbusStateConnected, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %162

43:                                               ; preds = %32
  %44 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %45 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %44, i32 0, i32 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = call i32 @connect(%struct.TYPE_11__* %46)
  %48 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %49 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %48, i32 0, i32 2
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XenbusStateConnected, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %162

58:                                               ; preds = %43
  %59 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %60 = call i32 @blkback_name(%struct.xen_blkif* %59, i8* %12)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %65 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %64, i32 0, i32 2
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @xenbus_dev_error(%struct.TYPE_10__* %68, i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %162

71:                                               ; preds = %58
  %72 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %73 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @filemap_write_and_wait(i32 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %71
  %84 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %85 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @xenbus_dev_error(%struct.TYPE_10__* %88, i32 %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %162

91:                                               ; preds = %71
  %92 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %93 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @invalidate_inode_pages2(i32 %99)
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %141, %91
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %104 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %144

107:                                              ; preds = %101
  %108 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %109 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %108, i32 0, i32 1
  %110 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %110, i64 %112
  store %struct.xen_blkif_ring* %113, %struct.xen_blkif_ring** %6, align 8
  %114 = load i32, i32* @xen_blkif_schedule, align 4
  %115 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32* @kthread_run(i32 %114, %struct.xen_blkif_ring* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %12, i32 %116)
  %118 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %119 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %118, i32 0, i32 0
  store i32* %117, i32** %119, align 8
  %120 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %121 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @IS_ERR(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %107
  %126 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %127 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @PTR_ERR(i32* %128)
  store i32 %129, i32* %3, align 4
  %130 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %131 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %130, i32 0, i32 0
  store i32* null, i32** %131, align 8
  %132 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %133 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %132, i32 0, i32 2
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @xenbus_dev_fatal(%struct.TYPE_10__* %136, i32 %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %12, i32 %138)
  br label %145

140:                                              ; preds = %107
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %101

144:                                              ; preds = %101
  store i32 1, i32* %8, align 4
  br label %162

145:                                              ; preds = %125
  br label %146

146:                                              ; preds = %150, %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %7, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %152 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %151, i32 0, i32 1
  %153 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %153, i64 %155
  store %struct.xen_blkif_ring* %156, %struct.xen_blkif_ring** %6, align 8
  %157 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %158 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @kthread_stop(i32* %159)
  br label %146

161:                                              ; preds = %146
  store i32 1, i32* %8, align 4
  br label %162

162:                                              ; preds = %161, %144, %83, %63, %57, %42, %31
  %163 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %163)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @connect(%struct.TYPE_11__*) #2

declare dso_local i32 @blkback_name(%struct.xen_blkif*, i8*) #2

declare dso_local i32 @xenbus_dev_error(%struct.TYPE_10__*, i32, i8*) #2

declare dso_local i32 @filemap_write_and_wait(i32) #2

declare dso_local i32 @invalidate_inode_pages2(i32) #2

declare dso_local i32* @kthread_run(i32, %struct.xen_blkif_ring*, i8*, i8*, i32) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_10__*, i32, i8*, i8*, i32) #2

declare dso_local i32 @kthread_stop(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
