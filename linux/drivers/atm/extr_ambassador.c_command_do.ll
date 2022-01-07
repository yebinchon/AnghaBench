; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_command_do.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_command_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i64, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"command_do %p\00", align 1
@dead = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"command in slot %p\00", align 1
@amb_mem = common dso_local global i32 0, align 4
@mb = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"wait: command slot (now at %p)\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@SRB_COMPLETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"wait: command slot completion\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"command complete\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @command_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_do(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %6, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %7, align 8
  %13 = load i32, i32* @DBG_FLOW, align 4
  %14 = load i32, i32* @DBG_CMD, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = call i32 (i32, i8*, ...) @PRINTD(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %16)
  %18 = load i32, i32* @dead, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %170

24:                                               ; preds = %2
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 3
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %160

35:                                               ; preds = %24
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  %38 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %8, align 8
  %39 = load i32, i32* @DBG_CMD, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = call i32 (i32, i8*, ...) @PRINTD(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = call i32 @dump_command(%struct.TYPE_14__* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = bitcast %struct.TYPE_14__* %46 to i8*
  %49 = bitcast %struct.TYPE_14__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 3
  %56 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load volatile i32, i32* %58, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load volatile i32, i32* %61, align 8
  %63 = call i8* @NEXTQ(%struct.TYPE_14__* %56, i32 %59, i32 %62)
  %64 = bitcast i8* %63 to %struct.TYPE_14__*
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  store volatile %struct.TYPE_14__* %64, %struct.TYPE_14__** %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = load i32, i32* @amb_mem, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @mb, i32 0, i32 0, i32 0), align 4
  %70 = call i32 @offsetof(i32 %68, i32 %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = call i32 @virt_to_bus(%struct.TYPE_14__* %73)
  %75 = call i32 @wr_mem(%struct.TYPE_15__* %67, i32 %70, i32 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %35
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %35
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @msleep(i64 %95)
  br label %97

97:                                               ; preds = %103, %89
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %102 = icmp ne %struct.TYPE_14__* %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load i32, i32* @DBG_CMD, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = call i32 (i32, i8*, ...) @PRINTD(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_14__* %107)
  %109 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %110 = call i32 @set_current_state(i32 %109)
  %111 = call i32 (...) @schedule()
  br label %97

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %122, %112
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  %116 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @SRB_COMPLETE, align 4
  %120 = call i64 @cpu_to_be32(i32 %119)
  %121 = icmp ne i64 %118, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %113
  %123 = load i32, i32* @DBG_CMD, align 4
  %124 = call i32 (i32, i8*, ...) @PRINTD(i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %126 = call i32 @set_current_state(i32 %125)
  %127 = call i32 (...) @schedule()
  br label %113

128:                                              ; preds = %113
  %129 = load i32, i32* @DBG_CMD, align 4
  %130 = call i32 (i32, i8*, ...) @PRINTD(i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  %133 = call i32 @spin_lock(i32* %132)
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %135, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = bitcast %struct.TYPE_14__* %138 to i8*
  %143 = bitcast %struct.TYPE_14__* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 8, i1 false)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load volatile i32, i32* %148, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load volatile i32, i32* %151, align 8
  %153 = call i8* @NEXTQ(%struct.TYPE_14__* %146, i32 %149, i32 %152)
  %154 = bitcast i8* %153 to %struct.TYPE_14__*
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  store volatile %struct.TYPE_14__* %154, %struct.TYPE_14__** %156, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 3
  %159 = call i32 @spin_unlock(i32* %158)
  store i32 0, i32* %3, align 4
  br label %170

160:                                              ; preds = %24
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 3
  %167 = call i32 @spin_unlock(i32* %166)
  %168 = load i32, i32* @EAGAIN, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %160, %128, %23
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dump_command(%struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @NEXTQ(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @wr_mem(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @virt_to_bus(%struct.TYPE_14__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
